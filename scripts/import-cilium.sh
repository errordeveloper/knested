#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

helm repo add --force-update cilium https://helm.cilium.io >/dev/null

version="1.18.0-pre.2"

output_dir="${script_dir}/../manifests/cilium-${version}"

mkdir -p "${output_dir}"

echo 'package cilium' > "${output_dir}/cilium.cue"

"${script_dir}/import-chart.sh" cilium cilium/cilium \
  --version "${version}" \
  --namespace "kube-system" \
  --set cgroup.autoMount.enabled=false \
  --set kubeProxyReplacement=true \
  --set k8sServiceHostRef.name=knested-apiserver-config \
  --set k8sServiceHostRef.key=kube-apiserver-pod-ip \
  --set k8sServicePort=6443 \
  >> "${output_dir}/cilium.cue"

cue fmt "${output_dir}/cilium.cue"
