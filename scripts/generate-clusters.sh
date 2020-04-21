#!/bin/bash -x

set -o errexit
set -o pipefail
set -o nounset

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${script_dir}/.."

(cd generator && npx tsc)

rm -rf test-clusters
for i in $(seq -f '%05g' 1 3) ; do
  jk generate \
    --output-directory test-clusters \
    --parameter "nodes=5" \
    --parameter "name=test-${i}" \
    --parameter "sonobuoy=true" \
    --parameter "image=$(awk '/1\.18\.2/ { print $2 }' images/kubeadm-ubuntu/.digest)" \
      generator/main.js
done
