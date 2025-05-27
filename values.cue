// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:3fe2b716cc327b0a7d0b765e4bb271543439f96567cd4f3ceef16672e9c0cc17"
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
