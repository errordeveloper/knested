// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:00dc85aa1ecbbd14ee872348582d5665d80da3096769b568247a1728fadfb674"
		tag:        "ubuntu-22.04-1.30.8"
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
