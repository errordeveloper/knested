KUBERNETES_VERSIONS := 1.26.15 1.27.16 1.28.15 1.29.12 1.30.8 1.31.4 1.32.0

image = ghcr.io/errordeveloper/knested/kubeadm:ubuntu-24.04-$(1)

define do-build
  nerdctl image build --platform linux/arm64,linux/amd64 \
	  --build-arg KUBERNETES_VERSION=$(1) \
	  --tag $(call image,$(1)) .

endef

define do-push
  nerdctl image push --platform linux/arm64,linux/amd64 $(call image,$(1))
  nerdctl image inspect --format '{{(index .RepoTags 0)}} {{(index .RepoDigests 0)}}' $(call image,$(1)) > .digest_$(1)

endef

.PHONY: build push

build:
	$(foreach v,$(KUBERNETES_VERSIONS),$(call do-build,$(v)))

push: build
	$(foreach v,$(KUBERNETES_VERSIONS),$(call do-push,$(v)))
	cat .digest_* > .digest
	rm -f .digest_*
