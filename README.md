# `knested`: Kubernetes-in-Kubernetes for GitOps-Cluster-as-Service

This project enables one to easily deploy Kubernetes into Kubernetes, akin to kind on Docker.
One could use kind in a pod, but if they need to run several nodes, the pod will end up quite
large. So knested is very much like kind in a pod, but it uses a pod for each node, so it should
easier to scale it.

knested is similar to vCluster, accept it doesn't provide any syncronisation with underlying cluster.
knested only leverages underlying cluster for deployment - secrets, downwards API and PVC, it doesn't
continuously enforce any relationships between underlying cluster.

To deploy a cluster you need [Timoni](https://timoni.sh). You can run it on top of kind too!
```
git clone https://github.com/errordeveloper/knested
cd knested
timoni apply --namespace test-cluster tc-1 .
```

## Walkthrough

```
$ timoni apply --namespace test-cluster tc-1 .
11:44AM INF i:tc-1 > building .
11:44AM INF i:tc-1 > using module github.com/errordeveloper/knested version 0.0.0-devel
11:44AM INF i:tc-1 > installing tc-1 in namespace test-cluster
11:44AM INF i:tc-1 > Namespace/test-cluster created
11:44AM INF i:tc-1 > ServiceAccount/test-cluster/tc-1-cp created
11:44AM INF i:tc-1 > ServiceAccount/test-cluster/tc-1-node created
11:44AM INF i:tc-1 > Role/test-cluster/tc-1-cp created
11:44AM INF i:tc-1 > Role/test-cluster/tc-1-node created
11:44AM INF i:tc-1 > RoleBinding/test-cluster/tc-1-cp created
11:44AM INF i:tc-1 > RoleBinding/test-cluster/tc-1-node created
11:44AM INF i:tc-1 > Secret/test-cluster/tc-1-join-token created
11:44AM INF i:tc-1 > Secret/test-cluster/tc-1-kubeconfig created
11:44AM INF i:tc-1 > Service/test-cluster/tc-1 created
11:44AM INF i:tc-1 > Deployment/test-cluster/tc-1-cp created
11:44AM INF i:tc-1 > Deployment/test-cluster/tc-1-node created
11:44AM INF i:tc-1 > PersistentVolumeClaim/test-cluster/tc-1-cp created
11:47AM INF i:tc-1 > resources are ready
$ kubectl exec -ti -n test-cluster deployment/tc-1-cp -- kubectl get nodes
NAME                         STATUS   ROLES           AGE     VERSION
tc-1-cp-7b7757f745-8f9ff     Ready    control-plane   7m1s    v1.30.3
tc-1-node-5ddb9c8999-gqcv6   Ready    <none>          6m12s   v1.30.3
$ kubectl exec -ti -n test-cluster deployment/tc-1-cp -- kubectl get pods -n kube-system
NAME                                               READY   STATUS    RESTARTS   AGE
cilium-7dw7j                                       1/1     Running   0          6m24s
cilium-n6j5q                                       1/1     Running   0          7m3s
cilium-operator-7754954889-pw6dv                   1/1     Running   0          7m2s
cilium-operator-7754954889-zlrc4                   1/1     Running   0          7m2s
coredns-7db6d8ff4d-7c649                           1/1     Running   0          7m2s
coredns-7db6d8ff4d-7tj8g                           1/1     Running   0          7m2s
etcd-tc-1-cp-7b7757f745-8f9ff                      1/1     Running   0          7m11s
kube-apiserver-tc-1-cp-7b7757f745-8f9ff            1/1     Running   0          7m11s
kube-controller-manager-tc-1-cp-7b7757f745-8f9ff   1/1     Running   0          7m11s
kube-proxy-f6zd6                                   1/1     Running   0          6m24s
kube-proxy-skfwv                                   1/1     Running   0          7m3s
kube-scheduler-tc-1-cp-7b7757f745-8f9ff            1/1     Running   0          7m11s
$
```

The kubeconfig for this cluster can be accessed from a secret:

```
$ kubectl get secrets -n test-cluster tc-1-kubeconfig
NAME              TYPE     DATA   AGE
tc-1-kubeconfig   Opaque   1      10m
$
```

There is a handy script that can port-forward the API endpoint and setup local kubeconfig:
```
$ ./scripts/access-cluster.sh test-cluster tc-1

starting new shell for test-cluster/tc-1 with KUBECONFIG set

[test-cluster/tc-1] $ kubectl get nodes
NAME                         STATUS   ROLES           AGE   VERSION
tc-1-cp-7b7757f745-8f9ff     Ready    control-plane   12m   v1.30.3
tc-1-node-5ddb9c8999-gqcv6   Ready    <none>          11m   v1.30.3
[test-cluster/tc-1] $
```

To cleanup you can just run `kubectl delete ns test-cluster`.

If you just want to see how it works, checkout the following dirctories:
- [`cluster/`](cluster): for CUE configs
- [`images/kubeadm-ubuntu/`](images/kubeadm-ubuntu): for image builds

And if you just need to see what resources would get deployed without running Timoni,
there a static example manifest - [`test-cluster.yaml`](test-cluster.yaml).
