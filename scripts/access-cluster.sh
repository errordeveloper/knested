#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

namespace="${1}"
name="${2}"
local_port="${3:-6443}"

dir="$(mktemp -d "${TMPDIR:-/tmp}/knested-cluster-${namespace}-${name}.XXXXXX")"

kubectl get --namespace="${namespace}" "secret/${name}-kubeconfig" --output=json | jq -r '.data.kubeconfig | @base64d' > "${dir}/kubeconfig"

kubectl config set-cluster --kubeconfig="${dir}/kubeconfig" "${name}" --server="https://127.0.0.1:${local_port}" >/dev/null

kubectl port-forward --namespace="${1}" "service/${2}" "${local_port}:6443" 1> "${dir}/proxy.stderr" 2> "${dir}/proxy.stdout" &                                                                                                                                                                             
printf "%d" "$!" > "${dir}/proxy.pid"

retries=0
until [ "$(grep "Forwarding from" -c "${dir}/proxy.stderr")" -ge 1 ] ; do
  if [ "${retries}" -gt 15 ] ; then
    cat "${dir}/proxy.stderr" "${dir}/proxy.stdout"
    rm -rf "${dir}"
    exit 1
  fi
  (((retries+=1)))
  sleep 0.5
done

echo ""
echo "starting new shell for ${namespace}/${name} with KUBECONFIG set"
echo ""
env \
  KUBECONFIG="${dir}/kubeconfig" \
  DEV_KUBE_SESSION_NAME="${namespace}/${name}" \
  "${SHELL}" || true

kill "$(cat "${dir}/proxy.pid")"
rm -rf "${dir}"
