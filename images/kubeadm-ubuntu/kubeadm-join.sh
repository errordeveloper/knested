#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

cluster="$(sed -n 's|^knested.dev/cluster="\(.*\)"$|\1|p' "/etc/kubeadm/metadata/labels")"

## NOTE: this assumes new control plane is being brought up at the same time as nodes, so stale secrets are
## not distinguished as such, but that is fine by-design, as this is not for production use
token_path="/etc/kubeadm/secrets/token"
ca_hash_path="/etc/kubeadm/secrets/ca_hash"
until [ -e "${token_path}" ] && [ -e "${ca_hash_path}" ] ; do sleep 0.5 ; done

token="$(cat /etc/kubeadm/secrets/token)"
ca_hash="$(cat /etc/kubeadm/secrets/ca_hash)"

kubeadm join --v=9 \
  --ignore-preflight-errors=NumCPU,SystemVerification,FileContent--proc-sys-net-bridge-bridge-nf-call-iptables,Swap \
  --token="${token}"  \
  --discovery-token-ca-cert-hash="${ca_hash}"  \
  --cri-socket=/var/run/containerd/containerd.sock \
    "${cluster}:6443"
