package cluster

import (
	"encoding/json"

	corev1 "k8s.io/api/core/v1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	timoniv1 "timoni.sh/core/v1alpha1"
)

// Config defines the schema and defaults for the Instance values.
#Config: {
	images: {
		coreNode!: timoniv1.#Image
	}
	imagesPullSecrets?: [...timoniv1.ObjectReference]

	clusterName!: timoniv1.#InstanceName
	namespace!:   timoniv1.#InstanceNamespace

	for role, roleAlias in _constants.componentRoles {
		(role): {
			#CommonMetadata & {
				#clusterName:        clusterName
				#namespace:          namespace
				#resourceNameSuffix: roleAlias
				#moduleVersion:      timoni.moduleVersion
			}

			metadata: labels: {
				(#RoleLabel): roleAlias
			}

			#ComponentBaseConfig & {
				#name: metadata.name
			}
		}
	}

	secretAnnotations?:  timoniv1.#Annotations
	serviceAnnotations?: timoniv1.#Annotations

	service: {
		type: *"ClusterIP" | string
	}

	node: {
		replicas: *1 | int & >0

		defaultResources: {
			cpu:    *"2000m" | timoniv1.#CPUQuantity
			memory: *"8200Mi" | timoniv1.#MemoryQuantity
		}

		resources: timoniv1.#ResourceRequirements & {
			requests: defaultResources
			limits:   defaultResources
		}
	}

	controlPlane: {
		replicas: *1 | int & 1

		defaultResources: {
			cpu:    *"2000m" | timoniv1.#CPUQuantity
			memory: *"5200Mi" | timoniv1.#MemoryQuantity
		}

		resources: timoniv1.#ResourceRequirements & {
			requests: defaultResources
			limits:   defaultResources
		}
	}

	manifests?: {
		[string]: {
			metav1.#TypeMeta
			metav1.#ObjectMeta
			...
		}
	}

	conformanceTest: {
		enabled:        *false | bool
		sonobouyImage!: timoniv1.#Image
	}

	// Standard Timoni fileds
	timoni: {
		// The kubeVersion is a required field, set at apply-time
		// via timoni.cue by querying the user's Kubernetes API.
		kubeVersion!: string
		// Using the kubeVersion you can enforce a minimum Kubernetes minor version.
		// By default, the minimum Kubernetes version is set to 1.20.
		clusterVersion: timoniv1.#SemVer & {#Version: kubeVersion, #Minimum: "1.20.0"}
		// The moduleVersion is set from the user-supplied module version.
		// This field is used for the `app.kubernetes.io/version` label.
		moduleVersion!: string
	}
}

// Instance takes the config values and outputs the Kubernetes objects.
#Instance: {
	config: #Config

	objects: {
		"Service/cluster": #Service & {
			#config: config
		}
		for secret, secretName in _constants.secrets {
			"Secret/\(secret)": #Secret & {
				#config: config
				#name:   secretName
			}
		}
		"Secret/\(_constants.secrets.manifests)": #Secret & {
			stringData: {
				for path, manifest in config.manifests {
					"\(path).json": json.Marshal(manifest)
				}
			}
		}
		"PersistentVolumeClaim/cp": #PersistentVolumeClaim & {
			#config: config
		}
		for role, _ in _constants.componentRoles {
			"ServiceAccount/\(role)": #ServiceAccount & {
				#config: config
				#role:   role
			}
			"Role/\(role)": #Role & {
				#config: config
				#role:   role
			}
			"RoleBinding/\(role)": #RoleBinding & {
				#config: config
				#role:   role
			}
			"Deployment/\(role)": #Deployment & {
				#config: config
				#role:   role
			}
		}
	}

	conformanceTest: {
		"Job/sonobouy": #ConformanceTestJob & {
			#config: config
		}
	}
}

#ComponentBaseConfig: {
	#name: string

	selector: timoniv1.#Selector & {#Name: #name}
	tolerations?: [...corev1.#Toleration]
	affinity?: corev1.#Affinity
	topologySpreadConstraints?: [...corev1.#TopologySpreadConstraint]
}

#CommonMetadata: {
	#clusterName:        string
	#resourceNameSuffix: string
	#namespace:          string
	#moduleVersion:      string

	metadata: timoniv1.#Metadata & {#Version: #moduleVersion}

	if #resourceNameSuffix == _|_ {
		metadata: name: #clusterName
	}
	if #resourceNameSuffix != _|_ {
		metadata: name: #clusterName + "-" + #resourceNameSuffix
	}

	metadata: {
		namespace: #namespace
		labels: {
			(timoniv1.#StdLabelName): metadata.name
			(#ClusterLabel):          #clusterName
		}
	}
}

_constants: {
	componentRoles: {
		controlPlane: "cp"
		node:         "node"
	}

	ports: {
		kubernetesAPI: 6443
	}

	secrets: {
		joinToken:  "join-token"
		kubeconfig: "kubeconfig"
		manifests:  "manifests"
	}
}

#ClusterLabel: "knested.dev/cluster"
#RoleLabel:    "knested.dev/role"
