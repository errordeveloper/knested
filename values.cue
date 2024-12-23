// Note that this file must have no imports and all values must be concrete.

@if(!debug)

package main

import (
	cilium "github.com/errordeveloper/knested/manifests/cilium-1.16.5:cilium"
)

// Defaults
values: {
	images: coreNode: {
		repository: "ghcr.io/errordeveloper/knested/kubeadm"
		digest:     "sha256:f4f44eda8adcdae54419796bdf6f389ebb9fd729cf226891fffd5945034b75af"
		tag:        "ubuntu-22.04-1.30.8"
	}

	// service: type: "LoadBalancer"

	manifests: cilium
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
