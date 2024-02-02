package cluster

import (
	corev1 "k8s.io/api/core/v1"
	timoniv1 "timoni.sh/core/v1alpha1"
)

#Secret: corev1.#Secret & {
	#config: #Config
	#name:   string

	apiVersion: "v1"
	kind:       "Secret"

	#CommonMetadata & {
		#clusterName:        #config.clusterName
		#resourceNameSuffix: #name
		#namespace:          #config.namespace
		#moduleVersion:      #config.timoni.moduleVersion
	}

	metadata: {
		labels: timoniv1.#Labels & {
			(#ClusterLabel): #config.clusterName
		}
		if #config.secretAnnotations != _|_ {
			annotations: #config.secretAnnotations
		}
	}
}
