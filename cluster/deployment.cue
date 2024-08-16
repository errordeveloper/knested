package cluster

import (
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"
)

#Deployment: appsv1.#Deployment & {
	#config: #Config
	#role:   string

	let roleConfig = #config[#role]
	let roleAlias = _constants.componentRoles[#role]

	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata:   roleConfig.metadata

	spec: appsv1.#DeploymentSpec & {
		replicas: roleConfig.replicas
		selector: matchLabels: roleConfig.selector.labels
		template: {
			metadata: {
				labels: roleConfig.selector.labels
				labels: {
					(#ClusterLabel): #config.clusterName
					(#RoleLabel):    roleAlias
				}
				if roleConfig.podAnnotations != _|_ {
					annotations: roleConfig.podAnnotations
				}
			}
			spec: podSpec
		}
	}

	let podSpec = corev1.#PodSpec & {
		serviceAccountName:           roleConfig.metadata.name
		automountServiceAccountToken: false

		containers: [
			{
				name: "main"

				image:           #config.images.coreNode.reference
				imagePullPolicy: #config.images.coreNode.pullPolicy

				let _systemdTargetUnit = "kubeadm@\(_constants.componentRoles[#role]).target"

				command: [
					"/lib/systemd/systemd",
					"--unit=\(_systemdTargetUnit)",
				]
				env: [
					{
						name:  "KUBECONFIG"
						value: _kubeconfigPath[#role]
					},
					{
						name:  "CONTAINER_RUNTIME_ENDPOINT"
						value: "unix:///run/containerd/containerd.sock"
					},
				]

				ports: [{
					name:          "api"
					containerPort: _constants.ports.kubernetesAPI
					protocol:      "TCP"
				}]
				readinessProbe: _readinessProbes[#role]

				resources: roleConfig.resources

				securityContext: {
					privileged: true
				}
				tty: true

				volumeMounts: _roleVolumeMounts[#role]
			},
		]

		volumes: (#_roleVolumes & {#clusterName: #config.clusterName})[#role]

		if roleConfig.tolerations != _|_ {
			tolerations: roleConfig.tolerations
		}
		if roleConfig.affinity != _|_ {
			affinity: roleConfig.affinity
		}

		if roleConfig.topologySpreadConstraints != _|_
		// TODO: check where imagePullSecrets live
		{
			topologySpreadConstraints: roleConfig.topologySpreadConstraints
		}

		if #config.imagePullSecrets != _|_ {
			imagePullSecrets: #config.imagePullSecrets
		}
	}
}

_kubeconfigPath: {
	controlPlane: "/etc/kubernetes/admin.conf"
	node:         "/etc/kubernetes/kubelet.conf"
}

_readinessProbes: {
	_common: {
		failureThreshold:    500
		initialDelaySeconds: 30
		periodSeconds:       2
		successThreshold:    5
	}

	controlPlane: _common & {
		exec: command: [
			"/usr/bin/is-cp-ready.sh",
		]
	}
	node: _common & {
		exec: command: [
			"/usr/bin/is-node-ready.sh",
		]
	}
}

#_roleVolumes: {
	#clusterName: string
	controlPlane: [
		_metadataVolume,
		for v in _hostPathVolumes {v},
		{
			// TODO: make this part of the projected `/etc/kubeadm` volume
			// also generate the contets of kubeconfig from here
			name: "parent-management-cluster-service-account-token"
			projected: sources: [{
				serviceAccountToken: path: "token"
			}]
		},
		{
			name: "cp-data"
			persistentVolumeClaim: claimName: "\(#clusterName)-cp"
		},
	]
	node: [
		_metadataVolume,
		for v in _hostPathVolumes {v},
		{
			// TODO: make this part of the projected `/etc/kubeadm` volume
			// also generate the contets of kubeconfig from here
			name: "join-secret"
			projected: {
				sources: [
					{
						secret: {
							name:     "\(#clusterName)-join-token"
							optional: false
						}
					},
				]
			}
		},
	]
}

_roleVolumeMounts: {
	controlPlane: [
		_metadataVolumeMount,
		for x in _hostPathVolumeMounts {x},
		{
			name:      "parent-management-cluster-service-account-token"
			mountPath: "/etc/parent-management-cluster/secrets"
		},
		{
			name:      "cp-data"
			mountPath: "/etc/kubernetes"
			subPath:   "etc-kubernetes"
		},
		{
			name:      "cp-data"
			mountPath: "/var/lib/etcd"
			subPath:   "var-lib-etcd"
		},
		{
			name:      "cp-data"
			mountPath: "/var/lib/kubelet"
			subPath:   "var-lib-kubelet"
		},

	]
	node: [
		_metadataVolumeMount,
		for x in _hostPathVolumeMounts {x},
		{
			name:      "join-secret"
			mountPath: "/etc/kubeadm/secrets"
		},
	]
}

_metadataVolume: {
	name: "metadata"
	downwardAPI: {
		items: [
			{
				path: "labels"
				fieldRef: {
					fieldPath: "metadata.labels"
				}
			},
			{
				path: "namespace"
				fieldRef: {
					fieldPath: "metadata.namespace"
				}
			},
		]
	}
}

_metadataVolumeMount: {
	name:      "metadata"
	mountPath: "/etc/kubeadm/metadata"
	readOnly:  true
}

_hostPathVolumes: [
	{
		name: "lib-modules"
		hostPath: {
			type: "Directory"
			path: "/lib/modules"
		}
	},
	{
		name: "xtables-lock"
		hostPath: {
			type: "FileOrCreate"
			path: "/run/xtables.lock"
		}
	},
]

_hostPathVolumeMounts: [
	{
		name:      "lib-modules"
		mountPath: "/lib/modules"
		readOnly:  true
	},
	{
		name:      "xtables-lock"
		mountPath: "/run/xtables.lock"
		readOnly:  false
	},
]

#PersistentVolumeClaim: corev1.#PersistentVolumeClaim & {
	#config: #Config

	apiVersion: "v1"
	kind:       "PersistentVolumeClaim"
	metadata:   #config.controlPlane.metadata

	spec: corev1.#PersistentVolumeClaimSpec & {
		//storageClassName: slow
		accessModes: ["ReadWriteOnce"]
		volumeMode: "Filesystem"
		resources: requests: storage: "5Gi"
	}
}
