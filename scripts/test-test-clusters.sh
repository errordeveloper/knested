#!/bin/bash -x

set -o errexit
set -o pipefail
set -o nounset

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${script_dir}/.."

ls test-clusters/*.sonobuoy-job.yaml | xargs -n1 -P3 kubectl apply -f
