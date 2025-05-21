package cluster

import (
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"
)

#StatefulSet: appsv1.#StatefulSet & {
	#config: #Config
	#role:   string

	let roleConfig = #config[#role]
	let roleAlias = _constants.componentRoles[#role]

	apiVersion: "apps/v1"
	kind:       "StatefulSet"
	metadata:   roleConfig.metadata

	spec: appsv1.#StatefulSetSpec & {
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
		}
		volumeClaimTemplates: [{
			metadata: {
				name:   "\(roleAlias)-data"
				labels: roleConfig.metadata.labels
			}
			spec: corev1.#PersistentVolumeClaimSpec & {
				accessModes: ["ReadWriteOnce"]
				volumeMode: "Filesystem"
				// TODO: make requests configurable
				resources: requests: storage: "5Gi"
			}
		}]
	}

	spec: template: spec: corev1.#PodSpec & {
		serviceAccountName:           roleConfig.metadata.name
		automountServiceAccountToken: false
		if #config.runtimeClass != _|_ {
			runtimeClassName: #config.runtimeClass
		}

		containers: [
			{
				name: "main"

				image:           #config.images.coreNode.reference
				imagePullPolicy: #config.images.coreNode.pullPolicy

				let _systemdTargetUnit = "kubeadm@\(roleAlias).target"

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

		volumes: (#_roleVolumes & {
			#clusterName:       #config.clusterName
			#hasExtraManifests: true
		})[#role]

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
			name: _constants.secrets.initManifests
			projected: sources: [{
				secret: {
					name:     "\(#clusterName)-\(_constants.secrets.initManifests)"
					optional: false
				}
			}]
		},
		{
			name: _constants.secrets.extraManifests
			projected: sources: [{
				secret: {
					name:     "\(#clusterName)-\(_constants.secrets.extraManifests)"
					optional: true
				}
			}]
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
			name:      _constants.secrets.initManifests
			mountPath: "/etc/kubeadm/manifests/init"
		},
		{
			name:      _constants.secrets.extraManifests
			mountPath: "/etc/kubeadm/manifests/extra"
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
		{
			name:      "cp-data"
			mountPath: "/var/lib/containerd"
			subPath:   "var-lib-containerd"
		},

	]
	node: [
		_metadataVolumeMount,
		for x in _hostPathVolumeMounts {x},
		{
			name:      "join-secret"
			mountPath: "/etc/kubeadm/secrets"
		},
		{
			name:      "node-data"
			mountPath: "/var/lib/kubelet"
			subPath:   "var-lib-kubelet"
		},
		{
			name:      "node-data"
			mountPath: "/var/lib/containerd"
			subPath:   "var-lib-containerd"
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
