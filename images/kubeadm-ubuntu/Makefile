KUBERNETES_VERSIONS := 1.25.16 1.26.13 1.27.10 1.28.6 1.29.1

image = ghcr.io/errordeveloper/kube-test-env/kubeadm:ubuntu-22.04-$(1)

define do-build
  docker image build \
	  --build-arg KUBERNETES_VERSION=$(1) \
	  --tag $(call image,$(1)) .

endef

define do-push
  docker image push $(call image,$(1))
  docker image inspect --format '{{(index .RepoTags 0)}} {{(index .RepoDigests 0)}}' $(call image,$(1)) > .digest_$(1)

endef

.PHONY: build push

build:
	$(foreach v,$(KUBERNETES_VERSIONS),$(call do-build,$(v)))

push: build
	$(foreach v,$(KUBERNETES_VERSIONS),$(call do-push,$(v)))
	cat .digest_* > .digest
	rm -f .digest_*
