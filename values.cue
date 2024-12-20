// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:f843f5eb90b23fe045a4daf5fb833f094c82e941a2b716078363c7d780a8a1c0"
		tag:        "ubuntu-22.04-1.30.8"
	}

	// service: type: "LoadBalancer"

	conformanceTest: {
		enabled: false
		sonobouyImage: {
			repository: "docker.io/sonobuoy/sonobuoy"
			digest:     "sha256:6d80fd42ee1f4a8c5bd0a744af2663c2f1b64b820aaaf3622be6ba91564087d4"
			tag:        "v0.57.1"
		}
	}
}
