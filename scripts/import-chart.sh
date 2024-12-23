#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

dir="$(mktemp -d "${PWD}/import-chart.XXXXXX")"

helm template --output-dir="${dir}" "$@" >/dev/null

resources=($(find "${dir}" -type f -name '*.yaml'))

cue import --outfile - --with-context --path "path.Rel(\"/${dir}\", filename)" "${resources[@]}"

rm -rf "${dir}"
