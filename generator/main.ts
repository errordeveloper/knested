//import * as std from '@jkcfg/std';
import * as param from '@jkcfg/std/param';

const namespace = param.String("namespace") || "default"
const name = param.String("name") || "test-cluster"
const nodes = param.Number("nodes") || 2

const image = param.String("image") || "errordeveloper/kubeadm:ubuntu-18.04-1.18.1"


import { KubernetesCluster, KubernetesClusterSpec, runtimeClasses } from './cluster';

const clusterSpec: KubernetesClusterSpec = {
    namespace, name, image, nodes,
}

if (param.Boolean("kata")) {
  clusterSpec.runtime = {class: runtimeClasses.kataQemu}
}

if (param.Boolean("with-image-cache")) {
  clusterSpec.withImageCache = true
}

const cluster = new KubernetesCluster(clusterSpec)

let output: { value: any, file: string }[] = [
    { value: cluster.build(), file: `cluster-${namespace}-${name}.core-resources.yaml` },
];

if (param.Boolean("sonobuoy")) {
    output.push({ value: cluster.sonobuoy("sonobuoy/sonobuoy:v0.18.0"), file: `cluster-${namespace}-${name}.sonobuoy-job.yaml` })
}

export default output
