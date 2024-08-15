// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:5e1dab22fa9c162f9b92e5a8ec41e9ff3c320b0d86e347c95e628a6f87f5b9b6"
		tag:        "ubuntu-22.04-1.30.3"
	}
	conformanceTest: {
		enabled: true
		sonobouyImage: {
			repository: "docker.io/sonobuoy/sonobuoy"
			digest:     "sha256:6d80fd42ee1f4a8c5bd0a744af2663c2f1b64b820aaaf3622be6ba91564087d4"
			tag:        "v0.57.1"
		}
	}
}
