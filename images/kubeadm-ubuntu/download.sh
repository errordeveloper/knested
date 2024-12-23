#!/bin/bash -x

set -o errexit
set -o pipefail
set -o nounset

get_tarball() {
  url="$1"
  dir="$2"

  tmp="$(mktemp)"

  mkdir -p "${dir}"

  curl --fail --show-error --location --silent --output "${tmp}" "${url}"
  tar -C "${dir}" -xf "${tmp}"

  rm -f "${tmp}"
}

get_file() {
  url="$1"
  output="$2"

  mkdir -p "$(dirname "${output}")"

  curl --fail --show-error --location --silent --output "${output}" "${url}"
}

get_binary() {
  url="$1"
  output="/usr/bin/${2}"

  get_file "${url}" "${output}"

  chmod +x "${output}"
}

ARCH="$(uname -m)"
ALT_ARCH="${ARCH}"
if [ "${ARCH}" = "x86_64" ] ; then
  ALT_ARCH="amd64"
fi
if [ "${ARCH}" = "aarch64" ] ; then
  ALT_ARCH="arm64"
fi

test -n "${KUBERNETES_VERSION}" || exit 1

# TODO determine practical requirements for how versions of components need to be handled
# and cater for that use-cases, for now one is meant to to fork this image if they really
# need to customise it a lot

CNI_VERSION="1.6.1"
get_tarball "https://github.com/containernetworking/plugins/releases/download/v${CNI_VERSION}/cni-plugins-linux-${ALT_ARCH}-v${CNI_VERSION}.tgz" /opt/cni/bin

CRICTL_VERSION="1.32.0"
get_tarball "https://github.com/kubernetes-sigs/cri-tools/releases/download/v${CRICTL_VERSION}/crictl-v${CRICTL_VERSION}-linux-${ALT_ARCH}.tar.gz" /usr/bin

CONTAINERD_VERSION="${CONTAINERD_VERSION:-2.0.1}"
get_tarball "https://github.com/containerd/containerd/releases/download/v${CONTAINERD_VERSION}/containerd-${CONTAINERD_VERSION}-linux-${ALT_ARCH}.tar.gz" /usr

RUNC_VERSION="${RUNC_VERSION:-1.2.3}"
get_binary "https://github.com/opencontainers/runc/releases/download/v${RUNC_VERSION}/runc.${ALT_ARCH}" runc

for b in kubeadm kubectl kubelet ; do
  get_binary "https://dl.k8s.io/v${KUBERNETES_VERSION}/bin/linux/${ALT_ARCH}/${b}" "${b}"
done

cat > /etc/versions.env << EOF
CNI_VERSION=${CNI_VERSION}
CRICTL_VERSION=${CRICTL_VERSION}
CONTAINERD_VERSION=${CONTAINERD_VERSION}
RUNC_VERSION=${RUNC_VERSION}
KUBERNETES_VERSION=${KUBERNETES_VERSION}
EOF
