package cluster

import (
	"encoding/yaml"
	"uuid"

	corev1 "k8s.io/api/core/v1"
	batchv1 "k8s.io/api/batch/v1"
	timoniv1 "timoni.sh/core/v1alpha1"
)

#ConformanceTestJob: batchv1.#Job & {
	#config: #Config

	apiVersion: "batch/v1"
	kind:       "Job"

	#CommonMetadata & {
		#clusterName:        #config.clusterName
		#resourceNameSuffix: "sonobuoy"
		#namespace:          #config.namespace
		#moduleVersion:      #config.timoni.moduleVersion
	}

	metadata: annotations: timoniv1.Action.Force

	spec: batchv1.#JobSpec & {
		template: corev1.#PodTemplateSpec & {
			metadata: annotations: "timoni.sh/checksum": uuid.SHA1(uuid.ns.DNS, yaml.Marshal(#config))

			spec: {
				restartPolicy: "Never"

				containers: [{
					name:            "sonobuoy"
					image:           #config.conformanceTest.sonobouyImage.reference
					imagePullPolicy: #config.conformanceTest.sonobouyImage.pullPolicy
					command: [
						"/sonobuoy", "run", "--kubeconfig=/etc/kubeadm/secrets/kubeconfig", "--wait=1440",
					]
					volumeMounts: [{
						name:      _constants.secrets.kubeconfig
						mountPath: "/etc/kubeadm/secrets"
					}]
				}]

				volumes: [{
					name: _constants.secrets.kubeconfig
					projected: sources: [{
						secret: {
							name:     "\(#config.clusterName)-\(_constants.secrets.kubeconfig)"
							optional: false
						}
					}]
				}]

				if #config.imagePullSecrets != _|_ {
					imagePullSecrets: #config.imagePullSecrets
				}
			}
		}
		backoffLimit: 1
	}
}
