CILIUM_MANIFESTS := \
  management-cluster-core/cilium-1.7-eks.yaml \
  images/kubeadm-ubuntu/cilium-1.7-kubeadm.yaml

manifest: $(CILIUM_MANIFESTS)
all: manifest images-push

.PHONY: $(CILIUM_MANIFESTS) manifest images-build image-push test-cluster.yaml test-cluster-without-kata.yaml

management-cluster-core/cilium-1.9-eks.yaml:
	helm template cilium cilium/cilium --version 1.9.1 \
	  --set eni=true \
	  --set ipam.mode=eni \
	  --set egressMasqueradeInterfaces=eth0 \
          --set tunnel=disabled \
          --set nodeinit.enabled=true \
	  --namespace kube-system > $@

images/kubeadm-ubuntu/cilium-1.9-kubeadm.yaml:
	helm template cilium cilium/cilium --version 1.9.1 \
	  --namespace kube-system > $@

images-build:
	$(MAKE) -C images build

images-push:
	$(MAKE) -C images push

show-digests:
	-@cat images/*/.digest 2>/dev/null

NAMESPACE ?= default

test-cluster.yaml:
	timoni build test-cluster . \
	  --namespace=$(NAMESPACE) \
	> $@
