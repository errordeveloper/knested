#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

cluster="$(sed -n 's|^knested.dev/cluster="\(.*\)"$|\1|p' "/etc/kubeadm/metadata/labels")"
namespace="$(cat "/etc/kubeadm/metadata/namespace")"

get_secret() {
  kubectl get secret \
    --kubeconfig="/etc/parent-management-cluster/kubeconfig" \
    --namespace="${namespace}" \
      "$@"
}

patch_secret() {
  kubectl patch secret \
    --kubeconfig="/etc/parent-management-cluster/kubeconfig" \
    --namespace="${namespace}" \
      "$@"
}

if [ -e /etc/kubernetes/kubeadm-init.yaml ] \
  && [ -n "$(get_secret "${cluster}-join-token" --output="jsonpath={.data.ca_hash}")" ] \
  && [ -n "$(get_secret "${cluster}-kubeconfig" --output="jsonpath={.data.kubeconfig}")" ] ; then
      echo "cluster already initialised"
      systemctl stop kubelet
      crictl ps -aq | xargs crictl rm -f
      echo "resetting control plane configuration to use new pod IP"

      stale_files=(
        manifests/etcd.yaml
        manifests/kube-apiserver.yaml
        manifests/kube-controller-manager.yaml
        manifests/kube-scheduler.yaml
        pki/apiserver-etcd-client.crt
        pki/apiserver-etcd-client.key
        pki/apiserver-kubelet-client.crt
        pki/apiserver-kubelet-client.key
        pki/apiserver.crt
        pki/apiserver.key
        pki/front-proxy-ca.crt
        pki/front-proxy-ca.key
        pki/front-proxy-client.crt
        pki/front-proxy-client.key
        admin.conf
        super-admin.conf
        kubelet.conf
        controller-manager.conf
        scheduler.conf
      )
      (cd /etc/kubernetes/ ; rm -f "${stale_files[@]}")

      kubeadm init --config=/etc/kubernetes/kubeadm-init.yaml phase certs all
      kubeadm init --config=/etc/kubernetes/kubeadm-init.yaml phase kubeconfig all
      kubeadm init --config=/etc/kubernetes/kubeadm-init.yaml phase etcd local
      kubeadm init --config=/etc/kubernetes/kubeadm-init.yaml phase control-plane all

      systemctl start kubelet

      exit 0
fi

# it looks CPU detection doesn't work very well, and with 3 cores it still barks;
# --cri-socket is required also, as somehow autodetection is broken when
# this command runs in the context of this systemd unit
# TODO: detect if kata is in use and pass diffetent ignore-preflight-errors
# TODO: use a config file
# on EKS without Kata SystemVerification,FileContent--proc-sys-net-bridge-bridge-nf-call-iptables are required
# on D4M Swap is Requires

mkdir -p /etc/kubernetes/manifests /etc/kubernetes/pki
ln -s /usr/share/kubernetes/kubelet.yaml /etc/kubernetes/kubelet.yaml

cat > /etc/kubernetes/kubeadm-init.yaml << EOF
---
apiVersion: kubeadm.k8s.io/v1beta3
kind: InitConfiguration
nodeRegistration:
  criSocket: unix:///var/run/containerd/containerd.sock
  imagePullPolicy: IfNotPresent
---
apiVersion: kubeadm.k8s.io/v1beta3
kind: ClusterConfiguration
kubernetesVersion: "${KUBERNETES_VERSION}"
clusterName: "${cluster}"
apiServer:
  certSANs: ["${cluster}", "127.0.0.1"]
networking:
  serviceSubnet: "10.97.0.0/16"
---
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
conntrack:
  maxPerCore: 0
EOF

kubeadm init --v=9 \
  --config=/etc/kubernetes/kubeadm-init.yaml \
  --ignore-preflight-errors=NumCPU,SystemVerification,FileContent--proc-sys-net-bridge-bridge-nf-call-iptables,Swap

# install manifest bundle
kubectl apply --filename=/etc/kubeadm/manifests --kubeconfig=/etc/kubernetes/admin.conf

# write secrets to the parent cluster
join_token="$(kubeadm token create --ttl=0 --description="Secondary token for automation" --v=9)"
ca_hash="$(openssl x509 -in /etc/kubernetes/pki/ca.crt -noout -pubkey | openssl rsa -pubin -outform der 2> /dev/null | sha256sum)"

join_token_js="$(printf '{"stringData":{"token": "%s", "ca_hash": "%s"}}' "${join_token}" "sha256:${ca_hash%% *}")"

patch_secret "${cluster}-join-token" --patch="${join_token_js}"

admin_kubeconfig_js="$(printf '{"data":{"kubeconfig": "%s"}}' "$(base64 --wrap=0 < "/etc/kubernetes/admin.conf")")"

patch_secret "${cluster}-kubeconfig" --patch="${admin_kubeconfig_js}" --kubeconfig=/etc/parent-management-cluster/kubeconfig
