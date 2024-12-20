#!/bin/bash -x

set -o errexit
set -o pipefail
set -o nounset

mkdir -p /etc/systemd/system /etc/containerd /etc/kubernetes/manifests /usr/share/kubernetes /var/lib/kubelet /etc/cni/net.d

cat > /etc/sysctl.d/99-kubernetes-cri.conf << EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

cat > /etc/modules-load.d/99-containerd.conf << EOF
overlay
br_netfilter
EOF

cat > /etc/modules-load.d/99-cilium.conf << EOF
sch_ingress
EOF

cp /usr/share/systemd/tmp.mount /etc/systemd/system/

systemctl enable tmp.mount

mkdir /etc/systemd/system.conf.d

cat > /etc/systemd/system/pods.slice << EOF
[Unit]
DefaultDependencies=no
Before=slices.target
Requires=-.slice
After=-.slice
EOF

systemctl enable pods.slice

cat > /etc/systemd/system/containerd.service << EOF
[Unit]
Description=containerd container runtime
Documentation=https://containerd.io
After=network.target local-fs.target

[Install]
WantedBy=multi-user.target

[Service]
ExecStart=/usr/bin/containerd
Delegate=yes
KillMode=process
Restart=always
# Having non-zero Limit*s causes performance problems due to accounting overhead
# in the kernel. We recommend using cgroups to do container-local accounting.
LimitNPROC=infinity
LimitCORE=infinity
LimitNOFILE=1048576
# Comment TasksMax if your systemd version does not supports it.
# Only systemd 226 and above support this version.
TasksMax=infinity
OOMScoreAdjust=-999
CPUAccounting=true
MemoryAccounting=true
Slice=pods.slice
EOF

systemctl enable containerd

cat > /etc/containerd/config.toml << EOF
version = 3
# use tmpfs in /run for both directories now, we may preserve root in the future,
# and possibly even preload it with images, but right now using /var/lib is broken
# in kata as it's on 9p filesystem that doesn't permit mknod
root = "/run/containerd/root"
state = "/run/containerd/state"
temp = ''
plugin_dir = ''
disabled_plugins = []
required_plugins = []
oom_score = 0
imports = []

[grpc]
  address = '/run/containerd/containerd.sock'
  tcp_address = ''
  tcp_tls_ca = ''
  tcp_tls_cert = ''
  tcp_tls_key = ''
  uid = 0
  gid = 0
  max_recv_message_size = 16777216
  max_send_message_size = 16777216

[ttrpc]
  address = ''
  uid = 0
  gid = 0

[debug]
  address = ''
  uid = 0
  gid = 0
  level = ''
  format = ''

[metrics]
  address = ''
  grpc_histogram = false

[plugins]
  [plugins.'io.containerd.cri.v1.images']
    snapshotter = 'overlayfs'
    disable_snapshot_annotations = true
    discard_unpacked_layers = false
    max_concurrent_downloads = 3
    image_pull_progress_timeout = '5m0s'
    image_pull_with_sync_fs = false
    stats_collect_period = 10

    [plugins.'io.containerd.cri.v1.images'.pinned_images]
      sandbox = 'registry.k8s.io/pause:3.10'

    [plugins.'io.containerd.cri.v1.images'.registry]
      config_path = ''

    [plugins.'io.containerd.cri.v1.images'.image_decryption]
      key_model = 'node'

  [plugins.'io.containerd.cri.v1.runtime']
    enable_selinux = false
    selinux_category_range = 1024
    max_container_log_line_size = 16384
    disable_apparmor = false
    restrict_oom_score_adj = false
    disable_proc_mount = false
    unset_seccomp_profile = ''
    tolerate_missing_hugetlb_controller = true
    disable_hugetlb_controller = true
    device_ownership_from_security_context = false
    ignore_image_defined_volumes = false
    netns_mounts_under_state_dir = false
    enable_unprivileged_ports = true
    enable_unprivileged_icmp = true
    enable_cdi = true
    cdi_spec_dirs = ['/etc/cdi', '/var/run/cdi']
    drain_exec_sync_io_timeout = '0s'
    ignore_deprecation_warnings = []

    [plugins.'io.containerd.cri.v1.runtime'.containerd]
      default_runtime_name = 'runc'
      ignore_blockio_not_enabled_errors = false
      ignore_rdt_not_enabled_errors = false

      [plugins.'io.containerd.cri.v1.runtime'.containerd.runtimes]
        [plugins.'io.containerd.cri.v1.runtime'.containerd.runtimes.runc]
          runtime_type = 'io.containerd.runc.v2'
          runtime_path = ''
          pod_annotations = []
          container_annotations = []
          privileged_without_host_devices = false
          privileged_without_host_devices_all_devices_allowed = false
          base_runtime_spec = ''
          cni_conf_dir = ''
          cni_max_conf_num = 0
          snapshotter = ''
          sandboxer = 'podsandbox'
          io_type = ''

          [plugins.'io.containerd.cri.v1.runtime'.containerd.runtimes.runc.options]
            BinaryName = ''
            CriuImagePath = ''
            CriuWorkPath = ''
            IoGid = 0
            IoUid = 0
            NoNewKeyring = false
            Root = ''
            ShimCgroup = ''

    [plugins.'io.containerd.cri.v1.runtime'.cni]
      bin_dir = '/opt/cni/bin'
      conf_dir = '/etc/cni/net.d'
      max_conf_num = 1
      setup_serially = false
      conf_template = ''
      ip_pref = ''
      use_internal_loopback = false

  [plugins.'io.containerd.gc.v1.scheduler']
    pause_threshold = 0.02
    deletion_threshold = 0
    mutation_threshold = 100
    schedule_delay = '0s'
    startup_delay = '100ms'

  [plugins.'io.containerd.grpc.v1.cri']
    disable_tcp_service = true
    stream_server_address = '127.0.0.1'
    stream_server_port = '0'
    stream_idle_timeout = '4h0m0s'
    enable_tls_streaming = false

    [plugins.'io.containerd.grpc.v1.cri'.x509_key_pair_streaming]
      tls_cert_file = ''
      tls_key_file = ''

  [plugins.'io.containerd.image-verifier.v1.bindir']
    bin_dir = '/opt/containerd/image-verifier/bin'
    max_verifiers = 10
    per_verifier_timeout = '10s'

  [plugins.'io.containerd.internal.v1.opt']
    path = '/opt/containerd'

  [plugins.'io.containerd.internal.v1.tracing']

  [plugins.'io.containerd.metadata.v1.bolt']
    content_sharing_policy = 'shared'

  [plugins.'io.containerd.monitor.container.v1.restart']
    interval = '10s'

  [plugins.'io.containerd.monitor.task.v1.cgroups']
    no_prometheus = false

  [plugins.'io.containerd.nri.v1.nri']
    disable = false
    socket_path = '/var/run/nri/nri.sock'
    plugin_path = '/opt/nri/plugins'
    plugin_config_path = '/etc/nri/conf.d'
    plugin_registration_timeout = '5s'
    plugin_request_timeout = '2s'
    disable_connections = false

  [plugins.'io.containerd.runtime.v2.task']
    platforms = ['linux/amd64']

  [plugins.'io.containerd.service.v1.diff-service']
    default = ['walking']
    sync_fs = false

  [plugins.'io.containerd.service.v1.tasks-service']
    blockio_config_file = ''
    rdt_config_file = ''

  [plugins.'io.containerd.shim.v1.manager']
    env = []

  [plugins.'io.containerd.snapshotter.v1.blockfile']
    root_path = ''
    scratch_file = ''
    fs_type = ''
    mount_options = []
    recreate_scratch = false

  [plugins.'io.containerd.snapshotter.v1.btrfs']
    root_path = ''

  [plugins.'io.containerd.snapshotter.v1.devmapper']
    root_path = ''
    pool_name = ''
    base_image_size = ''
    async_remove = false
    discard_blocks = false
    fs_type = ''
    fs_options = ''

  [plugins.'io.containerd.snapshotter.v1.native']
    root_path = ''

  [plugins.'io.containerd.snapshotter.v1.overlayfs']
    root_path = ''
    upperdir_label = false
    sync_remove = false
    slow_chown = false
    mount_options = []

  [plugins.'io.containerd.snapshotter.v1.zfs']
    root_path = ''

  [plugins.'io.containerd.tracing.processor.v1.otlp']

  [plugins.'io.containerd.transfer.v1.local']
    max_concurrent_downloads = 3
    max_concurrent_uploaded_layers = 3
    config_path = ''

[cgroup]
  path = ''

[timeouts]
  'io.containerd.timeout.bolt.open' = '0s'
  'io.containerd.timeout.metrics.shimstats' = '2s'
  'io.containerd.timeout.shim.cleanup' = '5s'
  'io.containerd.timeout.shim.load' = '5s'
  'io.containerd.timeout.shim.shutdown' = '3s'
  'io.containerd.timeout.task.state' = '2s'

[stream_processors]
  [stream_processors.'io.containerd.ocicrypt.decoder.v1.tar']
    accepts = ['application/vnd.oci.image.layer.v1.tar+encrypted']
    returns = 'application/vnd.oci.image.layer.v1.tar'
    path = 'ctd-decoder'
    args = ['--decryption-keys-path', '/etc/containerd/ocicrypt/keys']
    env = ['OCICRYPT_KEYPROVIDER_CONFIG=/etc/containerd/ocicrypt/ocicrypt_keyprovider.conf']

  [stream_processors.'io.containerd.ocicrypt.decoder.v1.tar.gzip']
    accepts = ['application/vnd.oci.image.layer.v1.tar+gzip+encrypted']
    returns = 'application/vnd.oci.image.layer.v1.tar+gzip'
    path = 'ctd-decoder'
    args = ['--decryption-keys-path', '/etc/containerd/ocicrypt/keys']
    env = ['OCICRYPT_KEYPROVIDER_CONFIG=/etc/containerd/ocicrypt/ocicrypt_keyprovider.conf']

EOF

cat > /etc/systemd/system/images.service << EOF
[Unit]
After=containerd.service
Requires=containerd.service

[Install]
WantedBy=kubeadm@.target

[Service]
Type=oneshot
EnvironmentFile=/etc/versions.env
ExecStart=-/usr/bin/preload-images.sh
EOF

systemctl enable images


cat > /etc/systemd/system/kubeadm@.target << EOF
[Unit]
Requires=multi-user.target
Conflicts=rescue.service rescue.target
After=multi-user.target basic.target rescue.service rescue.target
AllowIsolate=yes
EOF

cat > /etc/systemd/system/kubeadm@.service << EOF
[Unit]
After=images.service
Requires=images.service

[Install]
WantedBy=kubeadm@%i.target

[Service]
Type=oneshot
EnvironmentFile=/etc/versions.env
EOF

systemctl enable kubeadm@cp.service kubeadm@node.service

mkdir  /etc/systemd/system/kubeadm@cp.service.d
cat > /etc/systemd/system/kubeadm@cp.service.d/cp.conf << EOF
[Service]
ExecStart=/usr/bin/kubeadm-init.sh
EOF

mkdir  /etc/systemd/system/kubeadm@node.service.d
cat > /etc/systemd/system/kubeadm@node.service.d/node.conf << EOF
[Service]
ExecStart=/usr/bin/kubeadm-join.sh
EOF

cat > /etc/systemd/system/detect-cgroup-root.service << EOF
[Unit]
Before=kubelet.service
After=pods.slice

[Install]
WantedBy=kubeadm@.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c "systemctl show pods.slice -p ControlGroup > /etc/cgroup-root.env"
EOF

# systemd refues sys-fs-bpf.mount, but it doesn't actually mount it in nested container setting,
# so here is a way force-mount bpffs
cat > /etc/systemd/system/mount-sys-fs-bpf.service << EOF
[Unit]
Before=kubelet.service
After=swap.target
ConditionPathIsMountPoint=!/sys/fs/bpf

[Install]
WantedBy=kubeadm@.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c '(mount | grep -q bpffs) || mount bpffs /sys/fs/bpf -t bpf -o rw,nosuid,nodev,noexec,relatime,mode=700 --make-shared'
EOF

systemctl enable mount-sys-fs-bpf.service

cat > /etc/systemd/system/run-cilium-cgroupv2.mount << EOF
[Unit]
Before=kubelet.service

[Install]
WantedBy=kubeadm@.target

[Mount]
Where=/run/cilium/cgroupv2
What=none
Options=rw,relatime,shared
SloppyOptions=true
Type=cgroup2
EOF

systemctl enable run-cilium-cgroupv2.mount

cat > /etc/systemd/system/kubelet.service << EOF
[Unit]
Description=kubelet: The Kubernetes Node Agent
Documentation=https://kubernetes.io/docs/home/
Before=kubeadm@cp.service
Before=kubeadm@node.service
After=detect-cgroup-root.service
Requires=detect-cgroup-root.service

[Install]
WantedBy=kubeadm@.target

[Service]
EnvironmentFile=/etc/cgroup-root.env
ExecStart=/usr/bin/kubelet \
  --config=/etc/kubernetes/kubelet.yaml \
  --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf \
  --runtime-cgroups=\${ControlGroup}/pods
Delegate=yes
Restart=always
StartLimitInterval=0
RestartSec=5
CPUAccounting=true
MemoryAccounting=true
Slice=pods.slice
EOF

cat > /usr/share/kubernetes/kubelet.yaml << EOF
apiVersion: kubelet.config.k8s.io/v1beta1
kind: KubeletConfiguration
authentication:
  anonymous:
    enabled: false
  webhook:
    cacheTTL: 0s
    enabled: true
  x509:
    clientCAFile: /etc/kubernetes/pki/ca.crt
authorization:
  mode: Webhook
  webhook:
    cacheAuthorizedTTL: 0s
    cacheUnauthorizedTTL: 0s
clusterDNS:
- 10.96.0.10
clusterDomain: cluster.local
cpuManagerReconcilePeriod: 0s
evictionPressureTransitionPeriod: 0s
fileCheckFrequency: 0s
healthzBindAddress: 127.0.0.1
healthzPort: 10248
httpCheckFrequency: 0s
imageMinimumGCAge: 0s
nodeStatusReportFrequency: 0s
nodeStatusUpdateFrequency: 0s
rotateCertificates: true
containerRuntimeEndpoint: unix:///run/containerd/containerd.sock
runtimeRequestTimeout: 0s
staticPodPath: /etc/kubernetes/manifests
streamingConnectionIdleTimeout: 0s
syncFrequency: 0s
volumeStatsAggPeriod: 0s
# systemd cgroupDriver doesn't work in kata,
# probably as it's just not a proper systemds
# setup and parent cgroup looks a little confusing,
# also kind uses the default cgroupfs driver
cgroupDriver: cgroupfs
# disable cgroups per QoS as this results in
# kubelet poking at all process in the cgroup
# and kills anything it sees
# https://github.com/kubernetes/kubernetes/blob/v1.9.4/pkg/kubelet/kubelet_pods.go#L1084-L1087
cgroupsPerQOS: false
enforceNodeAllocatable: []
# failSwapOn is require on D4M, this could
# be parametrised somehow, but it doesn't
# really change anything beyod startup logic
failSwapOn: false
# there is an option to use /run/systemd/resolve/resolv.conf,
# but it is probably best to just rely on what we have in pod,
# as that's really what we do want to use, and resolved isn't
# enable currently anyway and descisions about the config
# would need to be made, there are many options to it...
resolvConf: /etc/resolv.conf
EOF
ln -s /usr/share/kubernetes/kubelet.yaml /etc/kubernetes/kubelet.yaml

systemctl enable kubelet detect-cgroup-root

mkdir /etc/parent-management-cluster
cat > /etc/parent-management-cluster/kubeconfig << EOF
apiVersion: v1
kind: Config
clusters:
  - name: parent-management-cluster
    cluster:
      server: https://kubernetes.default.svc:443
      # due to systemd shaddowing /var/run/secrets,
      # we can only project the token, but we do
      # trust our parent cluster, so no problem!
      insecure-skip-tls-verify: true
users:
  - name: child-cluster
    user:
      tokenFile: /etc/parent-management-cluster/secrets/token
contexts:
  - name: parent-management-cluster-context
    context:
      cluster: parent-management-cluster
      user: child-cluster
current-context: parent-management-cluster-context
EOF
