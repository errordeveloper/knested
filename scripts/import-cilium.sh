#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

helm repo add --force-update cilium https://helm.cilium.io >/dev/null

version="1.16.5"

output_dir="${script_dir}/../manifests/cilium-${version}"

mkdir -p "${output_dir}"

echo 'package cilium' > "${output_dir}/cilium.cue"

"${script_dir}/import-chart.sh" cilium cilium/cilium --version "${version}" \
  --set cgroup.autoMount.enabled=false \
  >> "${output_dir}/cilium.cue"
