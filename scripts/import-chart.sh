#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

dir="$(mktemp -d "${PWD}/import-chart.XXXXXX")"

helm template --output-dir="${dir}" "$@" >/dev/null

resources=($(find "${dir}" -type f -name '*.yaml'))
path_expr="$(printf 'strings.TrimSuffix(strings.Join(strings.Split(path.Rel("%s", filename), "/"), "-"), ".yaml") + "-" + strings.ToLower(data.kind) + "-" + strings.ToLower(data.metadata.name)' "${dir}")"

cue import --outfile - --with-context --path "${path_expr}" "${resources[@]}"

rm -rf "${dir}"
