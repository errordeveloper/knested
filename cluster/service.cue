package cluster

import (
	corev1 "k8s.io/api/core/v1"
)

#Service: corev1.#Service & {
	#config: #Config

	apiVersion: "v1"
	kind:       "Service"

	(#CommonMetadata & {
		#clusterName:   #config.clusterName
		#namespace:     #config.namespace
		#moduleVersion: #config.timoni.moduleVersion
	})

	metadata: {
		if #config.serviceAnnotations != _|_ {
			annotations: #config.serviceAnnotations
		}
	}

	spec: {
		type:            "ClusterIP"
		sessionAffinity: "None"
		ports: [
			{
				name:       "api"
				port:       _constants.ports.kubernetesAPI
				targetPort: _constants.ports.kubernetesAPI
			},
		]
		selector: #config.controlPlane.selector.labels
	}
}
