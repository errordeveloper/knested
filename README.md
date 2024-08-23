# kind: Kubernetes-in-Kubernetes for GitOps-Cluster-as-Service

***This is still and early prototype, there is not implementation of a controller as such.***

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
timoni apply --namespace test-cluster tc-1
```
