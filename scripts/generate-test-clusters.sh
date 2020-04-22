#!/bin/bash -x

# this script is only for testing, it shouldn't be around for long,
# and if it happes to get used a lot we should move the logic into
# the TypeScript code

set -o errexit
set -o pipefail
set -o nounset

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${script_dir}/.."

(cd generator && npx tsc)

rm -rf test-clusters

count_per_version="${1:-3}"
kube_versions=()
if [ "$#" -gt 1  ] ; then
  shift
  kube_versions+=("$@")
else
  kube_versions+=("1.16.9" "1.17.5" "1.18.2")
fi

for kube_version in "${kube_versions[@]}" ; do
   kube_version_matcher="${kube_version//./\\.}"
   kube_version_suffix="${kube_version//./-}"

   for i in $(seq -f '%05g' 1 "${count_per_version}") ; do
     jk generate \
       --output-directory test-clusters \
       --parameter "nodes=5" \
       --parameter "name=test-${kube_version_suffix}-${i}" \
       --parameter "sonobuoy=true" \
       --parameter "image=$(awk -v "v=${kube_version_matcher}" '$1 ~ v { print $2 }' images/kubeadm-ubuntu/.digest)" \
         generator/main.js
   done
done
