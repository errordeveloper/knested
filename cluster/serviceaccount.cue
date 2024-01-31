package cluster

import (
	corev1 "k8s.io/api/core/v1"
)

#ServiceAccount: corev1.#ServiceAccount & {
	#role:   string
	#config: #Config

	apiVersion: "v1"
	kind:       "ServiceAccount"

	metadata: #config[#role].metadata
}
