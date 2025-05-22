// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:604cd54ab0619d1eae3bac6937fb5dfa679206151efcd450229bfd25c9810fe9"
		tag:        "ubuntu-24.04-1.30.12"
	}

	// service: type: "LoadBalancer"

	controlPlane: {
		// tolerations: [{operator: "Exists"}]
	}
	node: {
		// tolerations: [{operator: "Exists"}]
	}
	conformanceTest: {
		enabled: false
		sonobouyImage: {
			repository: "docker.io/sonobuoy/sonobuoy"
			digest:     "sha256:6d80fd42ee1f4a8c5bd0a744af2663c2f1b64b820aaaf3622be6ba91564087d4"
			tag:        "v0.57.1"
		}
	}
}
