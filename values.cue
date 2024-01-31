// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:3cf5485ca939612af2a7603711fc114a42cfcdb8a163d5d266576d3370a65cb1"
		tag:        "ubuntu-22.04-1.29.1"
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
