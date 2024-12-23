package cilium
"cilium/templates/cilium-ca-secret.yaml": {
	// Source: cilium/templates/cilium-ca-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "cilium-ca"
		namespace: "default"
	}
	data: {
		"ca.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURFekNDQWZ1Z0F3SUJBZ0lRQ1F2YVhnUDkxM2IxbkN0dFFEcUM2REFOQmdrcWhraUc5dzBCQVFzRkFEQVUKTVJJd0VBWURWUVFERXdsRGFXeHBkVzBnUTBFd0hoY05NalF4TWpJek1URXdPRFUwV2hjTk1qY3hNakl6TVRFdwpPRFUwV2pBVU1SSXdFQVlEVlFRREV3bERhV3hwZFcwZ1EwRXdnZ0VpTUEwR0NTcUdTSWIzRFFFQkFRVUFBNElCCkR3QXdnZ0VLQW9JQkFRRENrcno4TG1oeTVLeXRzYTdDUncrdC8yYXBCRytpYldJZUFJOGsvNHFKUVlscU4wTjIKbVJGYlFleFd1NWZscnJpY3JhUXBoODJ5eVlXdWdKNDJvQXFaQjBzK0l4TEx5dDI2TllWT21RcklqRFErekJoYwowbTdOZTFBc0dZSkNIYk5tTTdjRjBsdzdzMDhqclVabVVMNnRQeFdZVUwzWkRQWlpCRTMxd0JoRzZDTzB2YUYrCk1LOVgwQnFkcllUVk9GcmNNaWlpNWkyM0lXWVRqRks1MGJYWHl3VG5NcUtsc3ZXR09qRGJzcVMrY0lyd2NKbjcKb0NaQ3NKTTYwK2swTmx6MFUvUVdHbkhsN0FYTmFIa2RCdFJ4VE1kWisyZnVVVDJwRW9CRXFCM05HaE5PcWU0bgpzb0Q3S01HeE83NkhGUXdJUlAvYURPZUtqQzJGczNuRDlrV1hBZ01CQUFHallUQmZNQTRHQTFVZER3RUIvd1FFCkF3SUNwREFkQmdOVkhTVUVGakFVQmdnckJnRUZCUWNEQVFZSUt3WUJCUVVIQXdJd0R3WURWUjBUQVFIL0JBVXcKQXdFQi96QWRCZ05WSFE0RUZnUVVaQ3JxcTRrRENVSGpiNVBDRHY5MUczbnBDOW93RFFZSktvWklodmNOQVFFTApCUUFEZ2dFQkFBRWdjdXhvQUZFRDYxSTQrd3dGNUJaZlVxc1c3QUxqK1BqeENhdkdzcGRxY0xFYXFDZ3Aya0hWCjYzSUczNmNsQ0lKdlpzSUQxOU9NcnNWZ1dvbEhSbnZCZldzSDU5WXorWUZLWDVSb1RjWG84YTNWSjZKK2hPUXkKRWVRcXU4OHpIcFlhM1RUMjFNNElaZTlaeWhuQXhrbjF1R24xMXd1WCtqbU50Ly85TktkditHb0hSNFRGU2RkTwpUQjNFYy9QTHlJdVpzVHBYWER4VTZTcTFRUlBwbXRocmxva1RmdjRhcHI5bHRjWGxHQy81azdOM0tvc20xclBaCkJxZG5GR2VzTlBFMEZzSUZLcExyclZlN3BXY1FkUSsxLzI2WkhvTWdYdWFMK2xYRFlSV2NLd2ExbVE4czQzbTIKcTZGZFdyMlNXaUhQRDJIWEhsV0FpaktIdmswMkdNbz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"ca.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb3dJQkFBS0NBUUVBd3BLOC9DNW9jdVNzcmJHdXdrY1ByZjltcVFSdm9tMWlIZ0NQSlArS2lVR0phamRECmRwa1JXMEhzVnJ1WDVhNjRuSzJrS1lmTnNzbUZyb0NlTnFBS21RZExQaU1TeThyZHVqV0ZUcGtLeUl3MFBzd1kKWE5KdXpYdFFMQm1DUWgyelpqTzNCZEpjTzdOUEk2MUdabEMrclQ4Vm1GQzkyUXoyV1FSTjljQVlSdWdqdEwyaApmakN2VjlBYW5hMkUxVGhhM0RJb291WXR0eUZtRTR4U3VkRzExOHNFNXpLaXBiTDFoam93MjdLa3ZuQ0s4SENaCis2QW1RckNUT3RQcE5EWmM5RlAwRmhweDVld0Z6V2g1SFFiVWNVekhXZnRuN2xFOXFSS0FSS2dkelJvVFRxbnUKSjdLQSt5akJzVHUraHhVTUNFVC8yZ3puaW93dGhiTjV3L1pGbHdJREFRQUJBb0lCQUVraUVHaVZKT3N5YW5rcQoxTzN1K2NURHY1bDlzbHdSMHhSRno0ZnZpT25JT1ZjMENHWjJhQ0N0NmFBOENIN3JLamF4eVlkV3BRa3pWOHpjClNSdHRFaTZzb0NwdDBtM0pCWWdzLzdzb0tQWnlSRnpxSjZvVDZsUFBxclc0ck00ZkRjUTNZZTZOUDkrc3FPMVcKL3FRTWEyOEF6Q1FoRFFxZEphY1Z5QnU3cFNSWkN1WHI1ZlVFVk9BVWJkY1p4Mmx5UVBVWGp6QjZTQ3puVUVmKwpYbFBSUkpqTnUxUmZlVWtmR0k1RS8wemNiN1RYZjZKM3pySkN5OE02Z1JVV0FjYWxvY25PdWNBaTZYS2U0dmpxCkROZ2ZwR09QdjdXeHJKTDR2VE9aL1pMVCtWQkxYclduZzkrUHNtQXF4bzdwOWM1TG4yODd0WUtwRXE1RGdaRDMKMzhLNTBDRUNnWUVBNVA5U2d5ZFhHWmtHOEMvd0dKcjc0azR3a1NzK0dyeGVxUW5VYnRuQy9zSUdLQU9KWDVVcQpmMzZ1Znp2ZnFSajBZRWxPYXZqeFhTZ1d1VXZ3Rko0OHdjSkRCaEN2NWREUi9SWWtla0t5c2pFdXhoNTJUZFRuCmh5TExxWDZNcmFxWmxrYlR5a0tHd25DdVVDbnVjeEphTDR2WTlmS0p1T21MR0Z1dG9pYTdKakVDZ1lFQTJZUkQKZzRNQlE4NVhIbHQrbXROTkpaT3ZnaDdtTHdieU13Z3NhSURRV0ZoL0NLbGtZalIweCtpZlB5bC9Sb0JNWGNPSwp6Y21QWTY3QkxHeFdjT2RxMUNScVZNakV5a2JBL3FzWWZxaWxxeU9oTis4eFpjQWJQS2hrdkk0b2gvdWdhaEJkCnowU01Rcnhad3YvQnViMDhBSWRuelJxZ25EOEZiYlF2OTFONERrY0NnWUVBbGM0MXMxajBFT25iOFJyYkxhMk4KNUNFVWdwTlFZSHNrVGQ4QldyY1lha0tSZG5IQjE0YWtzNTB6R0VjWjdPeEhTZ29Ldzg0eFQ2amZITDhCd3VzMQpnZWZNb3RZZHkvRU12azFTOWF4V2JGM2laSGNmRzVHUkdRVjVTRnRpT21ZbGJYck9LRDNYSExKTVJtTDMrODFnCnRFUC9YZjRaZko5RGdGN1JPd2V0WExFQ2dZQUQ2T2ExeEhNUFh2UWQ3Wk1YQVZsUHBabndBdElzWWptVVJUOVgKR1ltbExPSUxxOC9NSEJsRlJwOG1LWDdLSzZBengwSUZkT3dJNUtsQVBTcEltVUJJVStjOVl1WjJwRkx2d08rTgp4MFpERHo3a25INE0wQ2t0Sy9Hem1mS01qeTlRK0w1VzdXcUFBSmEwZEpoczJFUHQxb0U5Skk5aWY1ZC9ZMC9CCmFGU3VIUUtCZ0hJaWhjNTBEMEJZT2pYeEdCUmwyYzlzTEFUb3pOSzhJcGJUMDVxT0hmN2NucGd1QWVRUStQMlIKcGpsaFlkcWdzclIrMHhTV2xuRm4yKzlqT2RmdW9IVHFobW1Xa3AwelZoOWtQVlBwZGZ2S3pRQ1pEQnhrMEpnRQptd0ZZT2t1OHJVY3FyTGl2dm1xV25Ua2p0d2hYaHZacGU0TkxFenI4VW11L0hTSzZVOXRKCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg=="
	}
}
"cilium/templates/cilium-configmap.yaml": {
	// Source: cilium/templates/cilium-configmap.yaml
	apiVersion: "v1"
	kind:       "ConfigMap"
	metadata: {
		name:      "cilium-config"
		namespace: "default"
	}
	data: {

		// Identity allocation mode selects how identities are shared between cilium
		// nodes by setting how they are stored. The options are "crd" or "kvstore".
		// - "crd" stores identities in kubernetes as CRDs (custom resource definition).
		//   These can be queried with:
		//     kubectl get ciliumid
		// - "kvstore" stores identities in an etcd kvstore, that is
		//   configured below. Cilium versions before 1.6 supported only the kvstore
		//   backend. Upgrades from these older cilium versions should continue using
		//   the kvstore by commenting out the identity-allocation-mode below, or
		//   setting it to "kvstore".
		"identity-allocation-mode":    "crd"
		"identity-heartbeat-timeout":  "30m0s"
		"identity-gc-interval":        "15m0s"
		"cilium-endpoint-gc-interval": "5m0s"
		"nodes-gc-interval":           "5m0s"

		// If you want to run cilium in debug mode change this value to true
		debug:           "false"
		"debug-verbose": ""
		// The agent can be put into the following three policy enforcement modes
		// default, always and never.
		// https://docs.cilium.io/en/latest/security/policy/intro/#policy-enforcement-modes
		"enable-policy":          "default"
		"policy-cidr-match-mode": ""
		// If you want metrics enabled in cilium-operator, set the port for
		// which the Cilium Operator will have their metrics exposed.
		// NOTE that this will open the port on the nodes where Cilium operator pod
		// is scheduled.
		"operator-prometheus-serve-addr": ":9963"
		"enable-metrics":                 "true"

		// Enable IPv4 addressing. If enabled, all endpoints are allocated an IPv4
		// address.
		"enable-ipv4": "true"

		// Enable IPv6 addressing. If enabled, all endpoints are allocated an IPv6
		// address.
		"enable-ipv6": "false"
		// Users who wish to specify their own custom CNI configuration file must set
		// custom-cni-conf to "true", otherwise Cilium may overwrite the configuration.
		"custom-cni-conf":        "false"
		"enable-bpf-clock-probe": "false"
		// If you want cilium monitor to aggregate tracing for packets, set this level
		// to "low", "medium", or "maximum". The higher the level, the less packets
		// that will be seen in monitor output.
		"monitor-aggregation": "medium"

		// The monitor aggregation interval governs the typical time between monitor
		// notification events for each allowed connection.
		//
		// Only effective when monitor aggregation is set to "medium" or higher.
		"monitor-aggregation-interval": "5s"

		// The monitor aggregation flags determine which TCP flags which, upon the
		// first observation, cause monitor notifications to be generated.
		//
		// Only effective when monitor aggregation is set to "medium" or higher.
		"monitor-aggregation-flags": "all"
		// Specifies the ratio (0.0-1.0] of total system memory to use for dynamic
		// sizing of the TCP CT, non-TCP CT, NAT and policy BPF maps.
		"bpf-map-dynamic-size-ratio": "0.0025"
		// bpf-policy-map-max specifies the maximum number of entries in endpoint
		// policy map (per endpoint)
		"bpf-policy-map-max": "16384"
		// bpf-lb-map-max specifies the maximum number of entries in bpf lb service,
		// backend and affinity maps.
		"bpf-lb-map-max":                    "65536"
		"bpf-lb-external-clusterip":         "false"
		"bpf-events-drop-enabled":           "true"
		"bpf-events-policy-verdict-enabled": "true"
		"bpf-events-trace-enabled":          "true"

		// Pre-allocation of map entries allows per-packet latency to be reduced, at
		// the expense of up-front memory allocation for the entries in the maps. The
		// default value below will minimize memory usage in the default installation;
		// users who are sensitive to latency may consider setting this to "true".
		//
		// This option was introduced in Cilium 1.4. Cilium 1.3 and earlier ignore
		// this option and behave as though it is set to "true".
		//
		// If this value is modified, then during the next Cilium startup the restore
		// of existing endpoints and tracking of ongoing connections may be disrupted.
		// As a result, reply packets may be dropped and the load-balancing decisions
		// for established connections may change.
		//
		// If this option is set to "false" during an upgrade from 1.3 or earlier to
		// 1.4 or later, then it may cause one-time disruptions during the upgrade.
		"preallocate-bpf-maps": "false"

		// Name of the cluster. Only relevant when building a mesh of clusters.
		"cluster-name": "default"
		// Unique ID of the cluster. Must be unique across all conneted clusters and
		// in the range of 1 and 255. Only relevant when building a mesh of clusters.
		"cluster-id": "0"

		// Encapsulation mode for communication between nodes
		// Possible values:
		//   - disabled
		//   - vxlan (default)
		//   - geneve
		// Default case
		"routing-mode":                "tunnel"
		"tunnel-protocol":             "vxlan"
		"service-no-backend-response": "reject"

		// Enables L7 proxy for L7 policy enforcement and visibility
		"enable-l7-proxy":                             "true"
		"enable-ipv4-masquerade":                      "true"
		"enable-ipv4-big-tcp":                         "false"
		"enable-ipv6-big-tcp":                         "false"
		"enable-ipv6-masquerade":                      "true"
		"enable-tcx":                                  "true"
		"datapath-mode":                               "veth"
		"enable-masquerade-to-route-source":           "false"
		"enable-xt-socket-fallback":                   "true"
		"install-no-conntrack-iptables-rules":         "false"
		"auto-direct-node-routes":                     "false"
		"direct-routing-skip-unreachable":             "false"
		"enable-local-redirect-policy":                "false"
		"enable-runtime-device-detection":             "true"
		"kube-proxy-replacement":                      "false"
		"kube-proxy-replacement-healthz-bind-address": ""
		"bpf-lb-sock":                                 "false"
		"bpf-lb-sock-terminate-pod-connections":       "false"
		"enable-host-port":                            "false"
		"enable-external-ips":                         "false"
		"enable-node-port":                            "false"
		"nodeport-addresses":                          ""
		"enable-health-check-nodeport":                "true"
		"enable-health-check-loadbalancer-ip":         "false"
		"node-port-bind-protection":                   "true"
		"enable-auto-protect-node-port-range":         "true"
		"bpf-lb-acceleration":                         "disabled"
		"enable-svc-source-range-check":               "true"
		"enable-l2-neigh-discovery":                   "true"
		"arping-refresh-period":                       "30s"
		"k8s-require-ipv4-pod-cidr":                   "false"
		"k8s-require-ipv6-pod-cidr":                   "false"
		"enable-k8s-networkpolicy":                    "true"
		// Tell the agent to generate and write a CNI configuration file
		"write-cni-conf-when-ready":       "/host/etc/cni/net.d/05-cilium.conflist"
		"cni-exclusive":                   "true"
		"cni-log-file":                    "/var/run/cilium/cilium-cni.log"
		"enable-endpoint-health-checking": "true"
		"enable-health-checking":          "true"
		"enable-well-known-identities":    "false"
		"enable-node-selector-labels":     "false"
		"synchronize-k8s-nodes":           "true"
		"operator-api-serve-addr":         "127.0.0.1:9234"
		// Enable Hubble gRPC service.
		"enable-hubble": "true"
		// UNIX domain socket for Hubble server to listen to.
		"hubble-socket-path":             "/var/run/cilium/hubble.sock"
		"hubble-export-file-max-size-mb": "10"
		"hubble-export-file-max-backups": "5"
		// An additional address for Hubble server to listen to (e.g. ":4244").
		"hubble-listen-address":                          ":4244"
		"hubble-disable-tls":                             "false"
		"hubble-tls-cert-file":                           "/var/lib/cilium/tls/hubble/server.crt"
		"hubble-tls-key-file":                            "/var/lib/cilium/tls/hubble/server.key"
		"hubble-tls-client-ca-files":                     "/var/lib/cilium/tls/hubble/client-ca.crt"
		ipam:                                             "cluster-pool"
		"ipam-cilium-node-update-rate":                   "15s"
		"cluster-pool-ipv4-cidr":                         "10.0.0.0/8"
		"cluster-pool-ipv4-mask-size":                    "24"
		"egress-gateway-reconciliation-trigger-interval": "1s"
		"enable-vtep":                                    "false"
		"vtep-endpoint":                                  ""
		"vtep-cidr":                                      ""
		"vtep-mask":                                      ""
		"vtep-mac":                                       ""
		procfs:                                           "/host/proc"
		"bpf-root":                                       "/sys/fs/bpf"
		"cgroup-root":                                    "/run/cilium/cgroupv2"
		"enable-k8s-terminating-endpoint":                "true"
		"enable-sctp":                                    "false"
		"k8s-client-qps":                                 "10"
		"k8s-client-burst":                               "20"
		"remove-cilium-node-taints":                      "true"
		"set-cilium-node-taints":                         "true"
		"set-cilium-is-up-condition":                     "true"
		"unmanaged-pod-watcher-interval":                 "15"
		// default DNS proxy to transparent mode in non-chaining modes
		"dnsproxy-enable-transparent-mode":        "true"
		"dnsproxy-socket-linger-timeout":          "10"
		"tofqdns-dns-reject-response-code":        "refused"
		"tofqdns-enable-dns-compression":          "true"
		"tofqdns-endpoint-max-ip-per-hostname":    "50"
		"tofqdns-idle-connection-grace-period":    "0s"
		"tofqdns-max-deferred-connection-deletes": "10000"
		"tofqdns-proxy-response-max-delay":        "100ms"
		"agent-not-ready-taint-key":               "node.cilium.io/agent-not-ready"
		"mesh-auth-enabled":                       "true"
		"mesh-auth-queue-size":                    "1024"
		"mesh-auth-rotated-identities-queue-size": "1024"
		"mesh-auth-gc-interval":                   "5m0s"
		"proxy-xff-num-trusted-hops-ingress":      "0"
		"proxy-xff-num-trusted-hops-egress":       "0"
		"proxy-connect-timeout":                   "2"
		"proxy-initial-fetch-timeout":             "30"
		"proxy-max-requests-per-connection":       "0"
		"proxy-max-connection-duration-seconds":   "0"
		"proxy-idle-timeout-seconds":              "60"
		"external-envoy-proxy":                    "true"
		"envoy-base-id":                           "0"
		"envoy-keep-cap-netbindservice":           "false"
		"max-connected-clusters":                  "255"
		"clustermesh-enable-endpoint-sync":        "false"
		"clustermesh-enable-mcs-api":              "false"
		"nat-map-stats-entries":                   "32"
		"nat-map-stats-interval":                  "30s"
	}
}
// Extra config allows adding arbitrary properties to the cilium config.
// By putting it at the end of the ConfigMap, it's also possible to override existing properties.
"cilium/templates/cilium-agent/clusterrole.yaml": {
	// Source: cilium/templates/cilium-agent/clusterrole.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRole"
	metadata: {
		name: "cilium"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	rules: [{
		apiGroups: ["networking.k8s.io"]
		resources: ["networkpolicies"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["discovery.k8s.io"]
		resources: ["endpointslices"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: [""]
		resources: [
			"namespaces",
			"services",
			"pods",
			"endpoints",
			"nodes",
		]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["apiextensions.k8s.io"]
		resources: ["customresourcedefinitions"]
		verbs: [
			"list",
			"watch",
			// This is used when validating policies in preflight. This will need to stay
			// until we figure out how to avoid "get" inside the preflight, and then
			// should be removed ideally.
			"get",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumloadbalancerippools",
			"ciliumbgppeeringpolicies",
			"ciliumbgpnodeconfigs",
			"ciliumbgpadvertisements",
			"ciliumbgppeerconfigs",
			"ciliumclusterwideenvoyconfigs",
			"ciliumclusterwidenetworkpolicies",
			"ciliumegressgatewaypolicies",
			"ciliumendpoints",
			"ciliumendpointslices",
			"ciliumenvoyconfigs",
			"ciliumidentities",
			"ciliumlocalredirectpolicies",
			"ciliumnetworkpolicies",
			"ciliumnodes",
			"ciliumnodeconfigs",
			"ciliumcidrgroups",
			"ciliuml2announcementpolicies",
			"ciliumpodippools",
		]
		verbs: [
			"list",
			"watch",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumidentities",
			"ciliumendpoints",
			"ciliumnodes",
		]
		verbs: ["create"]
	}, {
		apiGroups: ["cilium.io"]
		// To synchronize garbage collection of such resources
		resources: ["ciliumidentities"]
		verbs: ["update"]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumendpoints"]
		verbs: [
			"delete",
			"get",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumnodes",
			"ciliumnodes/status",
		]
		verbs: [
			"get",
			"update",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumendpoints/status",
			"ciliumendpoints",
			"ciliuml2announcementpolicies/status",
			"ciliumbgpnodeconfigs/status",
		]
		verbs: ["patch"]
	}]
}
"cilium/templates/cilium-agent/clusterrolebinding.yaml": {
	// Source: cilium/templates/cilium-agent/clusterrolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRoleBinding"
	metadata: {
		name: "cilium"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "ClusterRole"
		name:     "cilium"
	}
	subjects: [{
		kind:      "ServiceAccount"
		name:      "cilium"
		namespace: "default"
	}]
}
"cilium/templates/cilium-agent/daemonset.yaml": {
	// Source: cilium/templates/cilium-agent/daemonset.yaml
	apiVersion: "apps/v1"
	kind:       "DaemonSet"
	metadata: {
		name:      "cilium"
		namespace: "default"
		labels: {
			"k8s-app":                   "cilium"
			"app.kubernetes.io/part-of": "cilium"
			"app.kubernetes.io/name":    "cilium-agent"
		}
	}
	spec: {
		selector: matchLabels: "k8s-app": "cilium"
		updateStrategy: {
			rollingUpdate: maxUnavailable: 2
			type: "RollingUpdate"
		}
		template: {
			metadata: {
				annotations: null
				labels: {
					"k8s-app":                   "cilium"
					"app.kubernetes.io/name":    "cilium-agent"
					"app.kubernetes.io/part-of": "cilium"
				}
			}
			spec: {
				securityContext: appArmorProfile: type: "Unconfined"
				containers: [{
					name:            "cilium-agent"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					command: ["cilium-agent"]
					args: ["--config-dir=/tmp/cilium/config-map"]
					startupProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9879
							scheme: "HTTP"
							httpHeaders: [{
								name:  "brief"
								value: "true"
							}]
						}
						failureThreshold:    105
						periodSeconds:       2
						successThreshold:    1
						initialDelaySeconds: 5
					}
					livenessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9879
							scheme: "HTTP"
							httpHeaders: [{
								name:  "brief"
								value: "true"
							}]
						}
						periodSeconds:    30
						successThreshold: 1
						failureThreshold: 10
						timeoutSeconds:   5
					}
					readinessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9879
							scheme: "HTTP"
							httpHeaders: [{
								name:  "brief"
								value: "true"
							}]
						}
						periodSeconds:    30
						successThreshold: 1
						failureThreshold: 3
						timeoutSeconds:   5
					}
					env: [{
						name: "K8S_NODE_NAME"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "spec.nodeName"
						}
					}, {
						name: "CILIUM_K8S_NAMESPACE"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "metadata.namespace"
						}
					}, {
						name:  "CILIUM_CLUSTERMESH_CONFIG"
						value: "/var/lib/cilium/clustermesh/"
					}, {
						name: "GOMEMLIMIT"
						valueFrom: resourceFieldRef: {
							resource: "limits.memory"
							divisor:  "1"
						}
					}]
					lifecycle: {
						postStart: exec: command: [
							"bash",
							"-c",
							"""
	set -o errexit
	set -o pipefail
	set -o nounset

	# When running in AWS ENI mode, it's likely that 'aws-node' has
	# had a chance to install SNAT iptables rules. These can result
	# in dropped traffic, so we should attempt to remove them.
	# We do it using a 'postStart' hook since this may need to run
	# for nodes which might have already been init'ed but may still
	# have dangling rules. This is safe because there are no
	# dependencies on anything that is part of the startup script
	# itself, and can be safely run multiple times per node (e.g. in
	# case of a restart).
	if [[ "$(iptables-save | grep -E -c 'AWS-SNAT-CHAIN|AWS-CONNMARK-CHAIN')" != "0" ]];
	then
	    echo 'Deleting iptables rules created by the AWS CNI VPC plugin'
	    iptables-save | grep -E -v 'AWS-SNAT-CHAIN|AWS-CONNMARK-CHAIN' | iptables-restore
	fi
	echo 'Done!'

	""",
						]
						preStop: exec: command: ["/cni-uninstall.sh"]
					}
					securityContext: {
						seLinuxOptions: {
							level: "s0"
							type:  "spc_t"
						}
						capabilities: {
							add: [
								"CHOWN",
								"KILL",
								"NET_ADMIN",
								"NET_RAW",
								"IPC_LOCK",
								"SYS_MODULE",
								"SYS_ADMIN",
								"SYS_RESOURCE",
								"DAC_OVERRIDE",
								"FOWNER",
								"SETGID",
								"SETUID",
							]
							drop: ["ALL"]
						}
					}
					terminationMessagePolicy: "FallbackToLogsOnError"
					volumeMounts: [{
						name:      "envoy-sockets"
						mountPath: "/var/run/cilium/envoy/sockets"
						readOnly:  false
					}, {
						// Unprivileged containers need to mount /proc/sys/net from the host
						// to have write access
						mountPath: "/host/proc/sys/net"
						name:      "host-proc-sys-net"
					}, {
						// Unprivileged containers need to mount /proc/sys/kernel from the host
						// to have write access
						mountPath: "/host/proc/sys/kernel"
						name:      "host-proc-sys-kernel"
					}, {
						name:      "bpf-maps"
						mountPath: "/sys/fs/bpf"
						// Unprivileged containers can't set mount propagation to bidirectional
						// in this case we will mount the bpf fs from an init container that
						// is privileged and set the mount propagation from host to container
						// in Cilium.
						mountPropagation: "HostToContainer"
					}, {
						name:      "cilium-run"
						mountPath: "/var/run/cilium"
					}, {
						name:      "etc-cni-netd"
						mountPath: "/host/etc/cni/net.d"
					}, {
						name:      "clustermesh-secrets"
						mountPath: "/var/lib/cilium/clustermesh"
						// Needed to be able to load kernel modules
						readOnly: true
					}, {
						name:      "lib-modules"
						mountPath: "/lib/modules"
						readOnly:  true
					}, {
						name:      "xtables-lock"
						mountPath: "/run/xtables.lock"
					}, {
						name:      "hubble-tls"
						mountPath: "/var/lib/cilium/tls/hubble"
						readOnly:  true
					}, {
						name:      "tmp"
						mountPath: "/tmp"
					}]
				}]
				initContainers: [{
					name:            "config"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					command: [
						"cilium-dbg",
						"build-config",
					]
					env: [{
						name: "K8S_NODE_NAME"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "spec.nodeName"
						}
					}, {
						name: "CILIUM_K8S_NAMESPACE"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "metadata.namespace"
						}
					}]
					volumeMounts: [{
						name:      "tmp"
						mountPath: "/tmp"
					}]
					terminationMessagePolicy: "FallbackToLogsOnError"
				}, {
					name:            "apply-sysctl-overwrites"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					env: [{
						name:  "BIN_PATH"
						value: "/opt/cni/bin"
					}]
					command: [
						"sh",
						"-ec",
						// The statically linked Go program binary is invoked to avoid any
						// dependency on utilities like sh that can be missing on certain
						// distros installed on the underlying host. Copy the binary to the
						// same directory where we install cilium cni plugin so that exec permissions
						// are available.
						"""
	cp /usr/bin/cilium-sysctlfix /hostbin/cilium-sysctlfix;
	nsenter --mount=/hostproc/1/ns/mnt "${BIN_PATH}/cilium-sysctlfix";
	rm /hostbin/cilium-sysctlfix

	""",
					]
					volumeMounts: [{
						name:      "hostproc"
						mountPath: "/hostproc"
					}, {
						name:      "cni-path"
						mountPath: "/hostbin"
					}]
					terminationMessagePolicy: "FallbackToLogsOnError"
					securityContext: {
						seLinuxOptions: {
							level: "s0"
							type:  "spc_t"
						}
						capabilities: {
							add: [
								"SYS_ADMIN",
								"SYS_CHROOT",
								"SYS_PTRACE",
							]
							drop: ["ALL"]
						}
					}
				}, {
					// Mount the bpf fs if it is not mounted. We will perform this task
					// from a privileged container because the mount propagation bidirectional
					// only works from privileged containers.
					name:            "mount-bpf-fs"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					args: ["mount | grep \"/sys/fs/bpf type bpf\" || mount -t bpf bpf /sys/fs/bpf"]
					command: [
						"/bin/bash",
						"-c",
						"--",
					]
					terminationMessagePolicy: "FallbackToLogsOnError"
					securityContext: privileged: true
					volumeMounts: [{
						name:             "bpf-maps"
						mountPath:        "/sys/fs/bpf"
						mountPropagation: "Bidirectional"
					}]
				}, {
					name:            "clean-cilium-state"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					command: ["/init-container.sh"]
					env: [{
						name: "CILIUM_ALL_STATE"
						valueFrom: configMapKeyRef: {
							name:     "cilium-config"
							key:      "clean-cilium-state"
							optional: true
						}
					}, {
						name: "CILIUM_BPF_STATE"
						valueFrom: configMapKeyRef: {
							name:     "cilium-config"
							key:      "clean-cilium-bpf-state"
							optional: true
						}
					}, {
						name: "WRITE_CNI_CONF_WHEN_READY"
						valueFrom: configMapKeyRef: {
							name:     "cilium-config"
							key:      "write-cni-conf-when-ready"
							optional: true
						}
					}]
					terminationMessagePolicy: "FallbackToLogsOnError"
					securityContext: {
						seLinuxOptions: {
							level: "s0"
							type:  "spc_t"
						}
						capabilities: {
							add: [
								"NET_ADMIN",
								"SYS_MODULE",
								"SYS_ADMIN",
								"SYS_RESOURCE",
							]
							drop: ["ALL"]
						}
					}
					volumeMounts: [{
						name: "bpf-maps"
						// Required to mount cgroup filesystem from the host to cilium agent pod
						mountPath: "/sys/fs/bpf"
					}, {
						name:             "cilium-cgroup"
						mountPath:        "/run/cilium/cgroupv2"
						mountPropagation: "HostToContainer"
					}, {
						name:      "cilium-run"
						mountPath: "/var/run/cilium" // wait-for-kube-proxy
					}]
				}, {
					// Install the CNI binaries in an InitContainer so we don't have a writable host mount in the agent
					name:            "install-cni-binaries"
					image:           "quay.io/cilium/cilium:v1.16.5@sha256:758ca0793f5995bb938a2fa219dcce63dc0b3fa7fc4ce5cc851125281fb7361d"
					imagePullPolicy: "IfNotPresent"
					command: ["/install-plugin.sh"]
					resources: requests: {
						cpu:    "100m"
						memory: "10Mi"
					}
					securityContext: {
						seLinuxOptions: {
							level: "s0"
							type:  "spc_t"
						}
						capabilities: drop: ["ALL"]
					}
					terminationMessagePolicy: "FallbackToLogsOnError"
					volumeMounts: [{
						name:      "cni-path"
						mountPath: "/host/opt/cni/bin" // .Values.cni.install
					}]
				}]
				restartPolicy:                 "Always"
				priorityClassName:             "system-node-critical"
				serviceAccountName:            "cilium"
				automountServiceAccountToken:  true
				terminationGracePeriodSeconds: 1
				hostNetwork:                   true
				affinity: podAntiAffinity: requiredDuringSchedulingIgnoredDuringExecution: [{
					labelSelector: matchLabels: "k8s-app": "cilium"
					topologyKey: "kubernetes.io/hostname"
				}]
				nodeSelector: "kubernetes.io/os": "linux"
				tolerations: [{operator: "Exists"}]
				volumes: [{
					// For sharing configuration between the "config" initContainer and the agent
					name: "tmp"
					// To keep state between restarts / upgrades
					emptyDir: {}
				}, {
					name: "cilium-run"
					hostPath: {
						path: "/var/run/cilium"
						// To keep state between restarts / upgrades for bpf maps
						type: "DirectoryOrCreate"
					}
				}, {
					name: "bpf-maps"
					hostPath: {
						path: "/sys/fs/bpf"
						type: "DirectoryOrCreate"
					}
				}, {
					// To mount cgroup2 filesystem on the host or apply sysctlfix
					name: "hostproc"
					hostPath: {
						path: "/proc"
						type: "Directory"
					}
				}, {
					// To keep state between restarts / upgrades for cgroup2 filesystem
					name: "cilium-cgroup"
					hostPath: {
						path: "/run/cilium/cgroupv2"
						type: "DirectoryOrCreate"
					}
				}, {
					// To install cilium cni plugin in the host
					name: "cni-path"
					hostPath: {
						path: "/opt/cni/bin"
						// To install cilium cni configuration in the host
						type: "DirectoryOrCreate"
					}
				}, {
					name: "etc-cni-netd"
					hostPath: {
						path: "/etc/cni/net.d"
						// To be able to load kernel modules
						type: "DirectoryOrCreate"
					}
				}, {
					name: "lib-modules"
					hostPath: {
						// To access iptables concurrently with other processes (e.g. kube-proxy)
						path: "/lib/modules"
					}
				}, {
					name: "xtables-lock"
					hostPath: {
						path: "/run/xtables.lock"
						type: "FileOrCreate"
					}
				}, {
					// Sharing socket with Cilium Envoy on the same node by using a host path
					name: "envoy-sockets"
					hostPath: {
						path: "/var/run/cilium/envoy/sockets"
						// To read the clustermesh configuration
						type: "DirectoryOrCreate"
					}
				}, {
					name: "clustermesh-secrets"
					projected: {
						// note: the leading zero means this number is in octal representation: do not remove it
						defaultMode: 0o400
						sources: [{
							secret: {
								name: "cilium-clustermesh"
								// note: items are not explicitly listed here, since the entries of this secret
								// depend on the peers configured, and that would cause a restart of all agents
								// at every addition/removal. Leaving the field empty makes each secret entry
								// to be automatically projected into the volume as a file whose name is the key.
								optional: true
							}
						}, {
							secret: {
								name:     "clustermesh-apiserver-remote-cert"
								optional: true
								items: [{
									key:  "tls.key"
									path: "common-etcd-client.key"
								}, {
									key:  "tls.crt"
									path: "common-etcd-client.crt"
								}, {
									key:  "ca.crt"
									path: "common-etcd-client-ca.crt"
								}]
							}
						}, {
							// note: we configure the volume for the kvstoremesh-specific certificate
							// regardless of whether KVStoreMesh is enabled or not, so that it can be
							// automatically mounted in case KVStoreMesh gets subsequently enabled,
							// without requiring an agent restart.
							secret: {
								name:     "clustermesh-apiserver-local-cert"
								optional: true
								items: [{
									key:  "tls.key"
									path: "local-etcd-client.key"
								}, {
									key:  "tls.crt"
									path: "local-etcd-client.crt"
								}, {
									key:  "ca.crt"
									path: "local-etcd-client-ca.crt"
								}]
							}
						}]
					}
				}, {
					name: "host-proc-sys-net"
					hostPath: {
						path: "/proc/sys/net"
						type: "Directory"
					}
				}, {
					name: "host-proc-sys-kernel"
					hostPath: {
						path: "/proc/sys/kernel"
						type: "Directory"
					}
				}, {
					name: "hubble-tls"
					projected: {
						// note: the leading zero means this number is in octal representation: do not remove it
						defaultMode: 0o400
						sources: [{
							secret: {
								name:     "hubble-server-certs"
								optional: true
								items: [{
									key:  "tls.crt"
									path: "server.crt"
								}, {
									key:  "tls.key"
									path: "server.key"
								}, {
									key:  "ca.crt"
									path: "client-ca.crt"
								}]
							}
						}]
					}
				}]
			}
		}
	}
}
"cilium/templates/cilium-agent/role.yaml": {
	// Source: cilium/templates/cilium-agent/role.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "Role"
	metadata: {
		name:      "cilium-config-agent"
		namespace: "default"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	rules: [{
		apiGroups: [""]
		resources: ["configmaps"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}]
}
"cilium/templates/cilium-agent/rolebinding.yaml": {
	// Source: cilium/templates/cilium-agent/rolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: {
		name:      "cilium-config-agent"
		namespace: "default"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "Role"
		name:     "cilium-config-agent"
	}
	subjects: [{
		kind:      "ServiceAccount"
		name:      "cilium"
		namespace: "default"
	}]
}
"cilium/templates/cilium-agent/serviceaccount.yaml": {
	// Source: cilium/templates/cilium-agent/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium"
		namespace: "default"
	}
}
"cilium/templates/cilium-envoy/configmap.yaml": {
	// Source: cilium/templates/cilium-envoy/configmap.yaml
	apiVersion: "v1"
	kind:       "ConfigMap"
	metadata: {
		name:      "cilium-envoy-config"
		namespace: "default"
	}
	data: "bootstrap-config.json": """
		{
		  "node": {
		    "id": "host~127.0.0.1~no-id~localdomain",
		    "cluster": "ingress-cluster"
		  },
		  "staticResources": {
		    "listeners": [
		      {
		        "name": "envoy-prometheus-metrics-listener",
		        "address": {
		          "socket_address": {
		            "address": "0.0.0.0",
		            "port_value": 9964
		          }
		        },
		        "filter_chains": [
		          {
		            "filters": [
		              {
		                "name": "envoy.filters.network.http_connection_manager",
		                "typed_config": {
		                  "@type": "type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager",
		                  "stat_prefix": "envoy-prometheus-metrics-listener",
		                  "route_config": {
		                    "virtual_hosts": [
		                      {
		                        "name": "prometheus_metrics_route",
		                        "domains": [
		                          "*"
		                        ],
		                        "routes": [
		                          {
		                            "name": "prometheus_metrics_route",
		                            "match": {
		                              "prefix": "/metrics"
		                            },
		                            "route": {
		                              "cluster": "/envoy-admin",
		                              "prefix_rewrite": "/stats/prometheus"
		                            }
		                          }
		                        ]
		                      }
		                    ]
		                  },
		                  "http_filters": [
		                    {
		                      "name": "envoy.filters.http.router",
		                      "typed_config": {
		                        "@type": "type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"
		                      }
		                    }
		                  ],
		                  "internal_address_config": {
		                    "cidr_ranges": [
		                      {
		                        "address_prefix": "10.0.0.0",
		                        "prefix_len": 8
		                      },
		                      {
		                        "address_prefix": "172.16.0.0",
		                        "prefix_len": 12
		                      },
		                      {
		                        "address_prefix": "192.168.0.0",
		                        "prefix_len": 16
		                      },
		                      {
		                        "address_prefix": "127.0.0.1",
		                        "prefix_len": 32
		                      },
		                      {
		                        "address_prefix": "::1",
		                        "prefix_len": 128
		                      }
		                    ]
		                  },
		                  "stream_idle_timeout": "0s"
		                }
		              }
		            ]
		          }
		        ]
		      },
		      {
		        "name": "envoy-health-listener",
		        "address": {
		          "socket_address": {
		            "address": "127.0.0.1",
		            "port_value": 9878
		          }
		        },
		        "filter_chains": [
		          {
		            "filters": [
		              {
		                "name": "envoy.filters.network.http_connection_manager",
		                "typed_config": {
		                  "@type": "type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager",
		                  "stat_prefix": "envoy-health-listener",
		                  "route_config": {
		                    "virtual_hosts": [
		                      {
		                        "name": "health",
		                        "domains": [
		                          "*"
		                        ],
		                        "routes": [
		                          {
		                            "name": "health",
		                            "match": {
		                              "prefix": "/healthz"
		                            },
		                            "route": {
		                              "cluster": "/envoy-admin",
		                              "prefix_rewrite": "/ready"
		                            }
		                          }
		                        ]
		                      }
		                    ]
		                  },
		                  "http_filters": [
		                    {
		                      "name": "envoy.filters.http.router",
		                      "typed_config": {
		                        "@type": "type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"
		                      }
		                    }
		                  ],
		                  "internal_address_config": {
		                    "cidr_ranges": [
		                      {
		                        "address_prefix": "10.0.0.0",
		                        "prefix_len": 8
		                      },
		                      {
		                        "address_prefix": "172.16.0.0",
		                        "prefix_len": 12
		                      },
		                      {
		                        "address_prefix": "192.168.0.0",
		                        "prefix_len": 16
		                      },
		                      {
		                        "address_prefix": "127.0.0.1",
		                        "prefix_len": 32
		                      },
		                      {
		                        "address_prefix": "::1",
		                        "prefix_len": 128
		                      }
		                    ]
		                  },
		                  "stream_idle_timeout": "0s"
		                }
		              }
		            ]
		          }
		        ]
		      }
		    ],
		    "clusters": [
		      {
		        "name": "ingress-cluster",
		        "type": "ORIGINAL_DST",
		        "connectTimeout": "2s",
		        "lbPolicy": "CLUSTER_PROVIDED",
		        "typedExtensionProtocolOptions": {
		          "envoy.extensions.upstreams.http.v3.HttpProtocolOptions": {
		            "@type": "type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions",
		            "commonHttpProtocolOptions": {
		              "idleTimeout": "60s",
		              "maxConnectionDuration": "0s",
		              "maxRequestsPerConnection": 0
		            },
		            "useDownstreamProtocolConfig": {}
		          }
		        },
		        "cleanupInterval": "2.500s"
		      },
		      {
		        "name": "egress-cluster-tls",
		        "type": "ORIGINAL_DST",
		        "connectTimeout": "2s",
		        "lbPolicy": "CLUSTER_PROVIDED",
		        "typedExtensionProtocolOptions": {
		          "envoy.extensions.upstreams.http.v3.HttpProtocolOptions": {
		            "@type": "type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions",
		            "commonHttpProtocolOptions": {
		              "idleTimeout": "60s",
		              "maxConnectionDuration": "0s",
		              "maxRequestsPerConnection": 0
		            },
		            "upstreamHttpProtocolOptions": {},
		            "useDownstreamProtocolConfig": {}
		          }
		        },
		        "cleanupInterval": "2.500s",
		        "transportSocket": {
		          "name": "cilium.tls_wrapper",
		          "typedConfig": {
		            "@type": "type.googleapis.com/cilium.UpstreamTlsWrapperContext"
		          }
		        }
		      },
		      {
		        "name": "egress-cluster",
		        "type": "ORIGINAL_DST",
		        "connectTimeout": "2s",
		        "lbPolicy": "CLUSTER_PROVIDED",
		        "typedExtensionProtocolOptions": {
		          "envoy.extensions.upstreams.http.v3.HttpProtocolOptions": {
		            "@type": "type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions",
		            "commonHttpProtocolOptions": {
		              "idleTimeout": "60s",
		              "maxConnectionDuration": "0s",
		              "maxRequestsPerConnection": 0
		            },
		            "useDownstreamProtocolConfig": {}
		          }
		        },
		        "cleanupInterval": "2.500s"
		      },
		      {
		        "name": "ingress-cluster-tls",
		        "type": "ORIGINAL_DST",
		        "connectTimeout": "2s",
		        "lbPolicy": "CLUSTER_PROVIDED",
		        "typedExtensionProtocolOptions": {
		          "envoy.extensions.upstreams.http.v3.HttpProtocolOptions": {
		            "@type": "type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions",
		            "commonHttpProtocolOptions": {
		              "idleTimeout": "60s",
		              "maxConnectionDuration": "0s",
		              "maxRequestsPerConnection": 0
		            },
		            "upstreamHttpProtocolOptions": {},
		            "useDownstreamProtocolConfig": {}
		          }
		        },
		        "cleanupInterval": "2.500s",
		        "transportSocket": {
		          "name": "cilium.tls_wrapper",
		          "typedConfig": {
		            "@type": "type.googleapis.com/cilium.UpstreamTlsWrapperContext"
		          }
		        }
		      },
		      {
		        "name": "xds-grpc-cilium",
		        "type": "STATIC",
		        "connectTimeout": "2s",
		        "loadAssignment": {
		          "clusterName": "xds-grpc-cilium",
		          "endpoints": [
		            {
		              "lbEndpoints": [
		                {
		                  "endpoint": {
		                    "address": {
		                      "pipe": {
		                        "path": "/var/run/cilium/envoy/sockets/xds.sock"
		                      }
		                    }
		                  }
		                }
		              ]
		            }
		          ]
		        },
		        "typedExtensionProtocolOptions": {
		          "envoy.extensions.upstreams.http.v3.HttpProtocolOptions": {
		            "@type": "type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions",
		            "explicitHttpConfig": {
		              "http2ProtocolOptions": {}
		            }
		          }
		        }
		      },
		      {
		        "name": "/envoy-admin",
		        "type": "STATIC",
		        "connectTimeout": "2s",
		        "loadAssignment": {
		          "clusterName": "/envoy-admin",
		          "endpoints": [
		            {
		              "lbEndpoints": [
		                {
		                  "endpoint": {
		                    "address": {
		                      "pipe": {
		                        "path": "/var/run/cilium/envoy/sockets/admin.sock"
		                      }
		                    }
		                  }
		                }
		              ]
		            }
		          ]
		        }
		      }
		    ]
		  },
		  "dynamicResources": {
		    "ldsConfig": {
		      "initialFetchTimeout": "30s",
		      "apiConfigSource": {
		        "apiType": "GRPC",
		        "transportApiVersion": "V3",
		        "grpcServices": [
		          {
		            "envoyGrpc": {
		              "clusterName": "xds-grpc-cilium"
		            }
		          }
		        ],
		        "setNodeOnFirstMessageOnly": true
		      },
		      "resourceApiVersion": "V3"
		    },
		    "cdsConfig": {
		      "initialFetchTimeout": "30s",
		      "apiConfigSource": {
		        "apiType": "GRPC",
		        "transportApiVersion": "V3",
		        "grpcServices": [
		          {
		            "envoyGrpc": {
		              "clusterName": "xds-grpc-cilium"
		            }
		          }
		        ],
		        "setNodeOnFirstMessageOnly": true
		      },
		      "resourceApiVersion": "V3"
		    }
		  },
		  "bootstrapExtensions": [
		    {
		      "name": "envoy.bootstrap.internal_listener",
		      "typed_config": {
		        "@type": "type.googleapis.com/envoy.extensions.bootstrap.internal_listener.v3.InternalListener"
		      }
		    }
		  ],
		  "overload_manager": {
		    "resource_monitors": [
		      {
		        "name": "envoy.resource_monitors.global_downstream_max_connections",
		        "typed_config": {
		          "@type": "type.googleapis.com/envoy.extensions.resource_monitors.downstream_connections.v3.DownstreamConnectionsConfig",
		          "max_active_downstream_connections": "50000"
		        }
		      }
		    ]
		  },
		  "admin": {
		    "address": {
		      "pipe": {
		        "path": "/var/run/cilium/envoy/sockets/admin.sock"
		      }
		    }
		  }
		}

		"""
}
"cilium/templates/cilium-envoy/daemonset.yaml": {
	// Source: cilium/templates/cilium-envoy/daemonset.yaml
	apiVersion: "apps/v1"
	kind:       "DaemonSet"
	metadata: {
		name:      "cilium-envoy"
		namespace: "default"
		labels: {
			"k8s-app":                   "cilium-envoy"
			"app.kubernetes.io/part-of": "cilium"
			"app.kubernetes.io/name":    "cilium-envoy"
			name:                        "cilium-envoy"
		}
	}
	spec: {
		selector: matchLabels: "k8s-app": "cilium-envoy"
		updateStrategy: {
			rollingUpdate: maxUnavailable: 2
			type: "RollingUpdate"
		}
		template: {
			metadata: {
				annotations: null
				labels: {
					"k8s-app":                   "cilium-envoy"
					name:                        "cilium-envoy"
					"app.kubernetes.io/name":    "cilium-envoy"
					"app.kubernetes.io/part-of": "cilium"
				}
			}
			spec: {
				securityContext: appArmorProfile: type: "Unconfined"
				containers: [{
					name:            "cilium-envoy"
					image:           "quay.io/cilium/cilium-envoy:v1.30.8-1733837904-eaae5aca0fb988583e5617170a65ac5aa51c0aa8@sha256:709c08ade3d17d52da4ca2af33f431360ec26268d288d9a6cd1d98acc9a1dced"
					imagePullPolicy: "IfNotPresent"
					command: ["/usr/bin/cilium-envoy-starter"]
					args: [
						"--",
						"-c /var/run/cilium/envoy/bootstrap-config.json",
						"--base-id 0",
						"--log-level info",
						"--log-format [%Y-%m-%d %T.%e][%t][%l][%n] [%g:%#] %v",
					]
					startupProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9878
							scheme: "HTTP"
						}
						failureThreshold:    105
						periodSeconds:       2
						successThreshold:    1
						initialDelaySeconds: 5
					}
					livenessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9878
							scheme: "HTTP"
						}
						periodSeconds:    30
						successThreshold: 1
						failureThreshold: 10
						timeoutSeconds:   5
					}
					readinessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9878
							scheme: "HTTP"
						}
						periodSeconds:    30
						successThreshold: 1
						failureThreshold: 3
						timeoutSeconds:   5
					}
					env: [{
						name: "K8S_NODE_NAME"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "spec.nodeName"
						}
					}, {
						name: "CILIUM_K8S_NAMESPACE"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "metadata.namespace"
						}
					}]
					ports: [{
						name:          "envoy-metrics"
						containerPort: 9964
						hostPort:      9964
						protocol:      "TCP"
					}]
					securityContext: {
						seLinuxOptions: {
							level: "s0"
							type:  "spc_t"
						}
						capabilities: {
							add: [
								"NET_ADMIN",
								"SYS_ADMIN",
							]
							drop: ["ALL"]
						}
					}
					terminationMessagePolicy: "FallbackToLogsOnError"
					volumeMounts: [{
						name:      "envoy-sockets"
						mountPath: "/var/run/cilium/envoy/sockets"
						readOnly:  false
					}, {
						name:      "envoy-artifacts"
						mountPath: "/var/run/cilium/envoy/artifacts"
						readOnly:  true
					}, {
						name:      "envoy-config"
						mountPath: "/var/run/cilium/envoy/"
						readOnly:  true
					}, {
						name:             "bpf-maps"
						mountPath:        "/sys/fs/bpf"
						mountPropagation: "HostToContainer"
					}]
				}]
				restartPolicy:                 "Always"
				priorityClassName:             "system-node-critical"
				serviceAccountName:            "cilium-envoy"
				automountServiceAccountToken:  true
				terminationGracePeriodSeconds: 1
				hostNetwork:                   true
				affinity: {
					nodeAffinity: requiredDuringSchedulingIgnoredDuringExecution: nodeSelectorTerms: [{
						matchExpressions: [{
							key:      "cilium.io/no-schedule"
							operator: "NotIn"
							values: ["true"]
						}]
					}]
					podAffinity: requiredDuringSchedulingIgnoredDuringExecution: [{
						labelSelector: matchLabels: "k8s-app": "cilium"
						topologyKey: "kubernetes.io/hostname"
					}]
					podAntiAffinity: requiredDuringSchedulingIgnoredDuringExecution: [{
						labelSelector: matchLabels: "k8s-app": "cilium-envoy"
						topologyKey: "kubernetes.io/hostname"
					}]
				}
				nodeSelector: "kubernetes.io/os": "linux"
				tolerations: [{operator: "Exists"}]
				volumes: [{
					name: "envoy-sockets"
					hostPath: {
						path: "/var/run/cilium/envoy/sockets"
						type: "DirectoryOrCreate"
					}
				}, {
					name: "envoy-artifacts"
					hostPath: {
						path: "/var/run/cilium/envoy/artifacts"
						type: "DirectoryOrCreate"
					}
				}, {
					name: "envoy-config"
					configMap: {
						name: "cilium-envoy-config"
						// note: the leading zero means this number is in octal representation: do not remove it
						defaultMode: 0o400
						items: [{
							key: "bootstrap-config.json"
							// To keep state between restarts / upgrades
							// To keep state between restarts / upgrades for bpf maps
							path: "bootstrap-config.json"
						}]
					}
				}, {
					name: "bpf-maps"
					hostPath: {
						path: "/sys/fs/bpf"
						type: "DirectoryOrCreate"
					}
				}]
			}
		}
	}
}
"cilium/templates/cilium-envoy/service.yaml": {
	// Source: cilium/templates/cilium-envoy/service.yaml
	apiVersion: "v1"
	kind:       "Service"
	metadata: {
		name:      "cilium-envoy"
		namespace: "default"
		annotations: {
			"prometheus.io/scrape": "true"
			"prometheus.io/port":   "9964"
		}
		labels: {
			"k8s-app":                   "cilium-envoy"
			"app.kubernetes.io/name":    "cilium-envoy"
			"app.kubernetes.io/part-of": "cilium"
			"io.cilium/app":             "proxy"
		}
	}
	spec: {
		clusterIP: "None"
		type:      "ClusterIP"
		selector: "k8s-app": "cilium-envoy"
		ports: [{
			name:       "envoy-metrics"
			port:       9964
			protocol:   "TCP"
			targetPort: "envoy-metrics"
		}]
	}
}
"cilium/templates/cilium-envoy/serviceaccount.yaml": {
	// Source: cilium/templates/cilium-envoy/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-envoy"
		namespace: "default"
	}
}
"cilium/templates/cilium-operator/clusterrole.yaml": {
	// Source: cilium/templates/cilium-operator/clusterrole.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRole"
	metadata: {
		name: "cilium-operator"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	rules: [{
		apiGroups: [""]
		resources: ["pods"]
		verbs: [
			"get",
			"list",
			"watch",
			// to automatically delete [core|kube]dns pods so that are starting to being
			// managed by Cilium
			"delete",
		]
	}, {
		apiGroups: [""]
		resources: ["configmaps"]
		resourceNames: ["cilium-config"]
		verbs: [
			// allow patching of the configmap to set annotations
			"patch"]
	}, {
		apiGroups: [""]
		resources: ["nodes"]
		verbs: [
			"list",
			"watch",
		]
	}, {
		apiGroups: [""]
		resources: [
			// To remove node taints
			"nodes",
			// To set NetworkUnavailable false on startup
			"nodes/status",
		]
		verbs: ["patch"]
	}, {
		apiGroups: ["discovery.k8s.io"]
		resources: ["endpointslices"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: [""]
		resources: [
			// to perform LB IP allocation for BGP
			"services/status"]
		verbs: [
			"update",
			"patch",
		]
	}, {
		apiGroups: [""]
		resources: [
			// to check apiserver connectivity
			"namespaces"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: [""]
		resources: [
			// to perform the translation of a CNP that contains `ToGroup` to its endpoints
			"services",
			"endpoints",
		]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumnetworkpolicies",
			"ciliumclusterwidenetworkpolicies",
		]
		verbs: [
			// Create auto-generated CNPs and CCNPs from Policies that have 'toGroups'
			"create",
			"update",
			"deletecollection",
			// To update the status of the CNPs and CCNPs
			"patch",
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumnetworkpolicies/status",
			"ciliumclusterwidenetworkpolicies/status",
		]
		verbs: [
			// Update the auto-generated CNPs and CCNPs status.
			"patch",
			"update",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumendpoints",
			"ciliumidentities",
		]
		verbs: [
			// To perform garbage collection of such resources
			"delete",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumidentities"]
		verbs: [
			// To synchronize garbage collection of such resources
			"update"]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumnodes"]
		verbs: [
			"create",
			"update",
			"get",
			"list",
			"watch",
			// To perform CiliumNode garbage collector
			"delete",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumnodes/status"]
		verbs: ["update"]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumendpointslices",
			"ciliumenvoyconfigs",
			"ciliumbgppeerconfigs",
			"ciliumbgpadvertisements",
			"ciliumbgpnodeconfigs",
		]
		verbs: [
			"create",
			"update",
			"get",
			"list",
			"watch",
			"delete",
			"patch",
		]
	}, {
		apiGroups: ["apiextensions.k8s.io"]
		resources: ["customresourcedefinitions"]
		verbs: [
			"create",
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["apiextensions.k8s.io"]
		resources: ["customresourcedefinitions"]
		verbs: ["update"]
		resourceNames: [
			"ciliumloadbalancerippools.cilium.io",
			"ciliumbgppeeringpolicies.cilium.io",
			"ciliumbgpclusterconfigs.cilium.io",
			"ciliumbgppeerconfigs.cilium.io",
			"ciliumbgpadvertisements.cilium.io",
			"ciliumbgpnodeconfigs.cilium.io",
			"ciliumbgpnodeconfigoverrides.cilium.io",
			"ciliumclusterwideenvoyconfigs.cilium.io",
			"ciliumclusterwidenetworkpolicies.cilium.io",
			"ciliumegressgatewaypolicies.cilium.io",
			"ciliumendpoints.cilium.io",
			"ciliumendpointslices.cilium.io",
			"ciliumenvoyconfigs.cilium.io",
			"ciliumexternalworkloads.cilium.io",
			"ciliumidentities.cilium.io",
			"ciliumlocalredirectpolicies.cilium.io",
			"ciliumnetworkpolicies.cilium.io",
			"ciliumnodes.cilium.io",
			"ciliumnodeconfigs.cilium.io",
			"ciliumcidrgroups.cilium.io",
			"ciliuml2announcementpolicies.cilium.io",
			"ciliumpodippools.cilium.io",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumloadbalancerippools",
			"ciliumpodippools",
			"ciliumbgppeeringpolicies",
			"ciliumbgpclusterconfigs",
			"ciliumbgpnodeconfigoverrides",
		]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumpodippools"]
		verbs: ["create"]
	}, {
		apiGroups: ["cilium.io"]
		resources: ["ciliumloadbalancerippools/status"]
		verbs: ["patch"]
	}, {
		// For cilium-operator running in HA mode.
		//
		// Cilium operator running in HA mode requires the use of ResourceLock for Leader Election
		// between multiple running instances.
		// The preferred way of doing this is to use LeasesResourceLock as edits to Leases are less
		// common and fewer objects in the cluster watch "all Leases".
		apiGroups: ["coordination.k8s.io"]
		resources: ["leases"]
		verbs: [
			"create",
			"get",
			"update",
		]
	}]
}
"cilium/templates/cilium-operator/clusterrolebinding.yaml": {
	// Source: cilium/templates/cilium-operator/clusterrolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRoleBinding"
	metadata: {
		name: "cilium-operator"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "ClusterRole"
		name:     "cilium-operator"
	}
	subjects: [{
		kind:      "ServiceAccount"
		name:      "cilium-operator"
		namespace: "default"
	}]
}
"cilium/templates/cilium-operator/deployment.yaml": {
	// Source: cilium/templates/cilium-operator/deployment.yaml
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		name:      "cilium-operator"
		namespace: "default"
		labels: {
			"io.cilium/app":             "operator"
			name:                        "cilium-operator"
			"app.kubernetes.io/part-of": "cilium"
			"app.kubernetes.io/name":    "cilium-operator"
		}
	}
	spec: {
		// See docs on ServerCapabilities.LeasesResourceLock in file pkg/k8s/version/version.go
		// for more details.
		replicas: 2
		selector: matchLabels: {
			"io.cilium/app": "operator"
			name:            "cilium-operator"
		}
		// ensure operator update on single node k8s clusters, by using rolling update with maxUnavailable=100% in case
		// of one replica and no user configured Recreate strategy.
		// otherwise an update might get stuck due to the default maxUnavailable=50% in combination with the
		// podAntiAffinity which prevents deployments of multiple operator replicas on the same node.
		strategy: {
			rollingUpdate: {
				maxSurge:       "25%"
				maxUnavailable: "50%"
			}
			type: "RollingUpdate"
		}
		template: {
			metadata: {
				annotations: {
					"prometheus.io/port":   "9963"
					"prometheus.io/scrape": "true"
				}
				labels: {
					"io.cilium/app":             "operator"
					name:                        "cilium-operator"
					"app.kubernetes.io/part-of": "cilium"
					"app.kubernetes.io/name":    "cilium-operator"
				}
			}
			spec: {
				containers: [{
					name:            "cilium-operator"
					image:           "quay.io/cilium/operator-generic:v1.16.5@sha256:f7884848483bbcd7b1e0ccfd34ba4546f258b460cb4b7e2f06a1bcc96ef88039"
					imagePullPolicy: "IfNotPresent"
					command: ["cilium-operator-generic"]
					args: [
						"--config-dir=/tmp/cilium/config-map",
						"--debug=$(CILIUM_DEBUG)",
					]
					env: [{
						name: "K8S_NODE_NAME"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "spec.nodeName"
						}
					}, {
						name: "CILIUM_K8S_NAMESPACE"
						valueFrom: fieldRef: {
							apiVersion: "v1"
							fieldPath:  "metadata.namespace"
						}
					}, {
						name: "CILIUM_DEBUG"
						valueFrom: configMapKeyRef: {
							key:      "debug"
							name:     "cilium-config"
							optional: true
						}
					}]
					ports: [{
						name:          "prometheus"
						containerPort: 9963
						hostPort:      9963
						protocol:      "TCP"
					}]
					livenessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9234
							scheme: "HTTP"
						}
						initialDelaySeconds: 60
						periodSeconds:       10
						timeoutSeconds:      3
					}
					readinessProbe: {
						httpGet: {
							host:   "127.0.0.1"
							path:   "/healthz"
							port:   9234
							scheme: "HTTP"
						}
						initialDelaySeconds: 0
						periodSeconds:       5
						timeoutSeconds:      3
						failureThreshold:    5
					}
					volumeMounts: [{
						name:      "cilium-config-path"
						mountPath: "/tmp/cilium/config-map"
						readOnly:  true
					}]
					terminationMessagePolicy: "FallbackToLogsOnError"
				}]
				hostNetwork:                  true
				restartPolicy:                "Always"
				priorityClassName:            "system-cluster-critical"
				serviceAccountName:           "cilium-operator"
				automountServiceAccountToken: true
				// In HA mode, cilium-operator pods must not be scheduled on the same
				// node as they will clash with each other.
				affinity: {
					podAntiAffinity: requiredDuringSchedulingIgnoredDuringExecution: [{
						labelSelector: matchLabels: "io.cilium/app": "operator"
						topologyKey:                                 "kubernetes.io/hostname"
					}]
				}
				nodeSelector: "kubernetes.io/os": "linux"
				tolerations: [{operator: "Exists"}]
				volumes: [{
					// To read the configuration from the config map
					name: "cilium-config-path"
					configMap: name: "cilium-config"
				}]
			}
		}
	}
}
"cilium/templates/cilium-operator/serviceaccount.yaml": {
	// Source: cilium/templates/cilium-operator/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-operator"
		namespace: "default"
	}
}
"cilium/templates/hubble/peer-service.yaml": {
	// Source: cilium/templates/hubble/peer-service.yaml
	apiVersion: "v1"
	kind:       "Service"
	metadata: {
		name:      "hubble-peer"
		namespace: "default"
		labels: {
			"k8s-app":                   "cilium"
			"app.kubernetes.io/part-of": "cilium"
			"app.kubernetes.io/name":    "hubble-peer"
		}
	}
	spec: {
		selector: "k8s-app": "cilium"
		ports: [{
			name:       "peer-service"
			port:       443
			protocol:   "TCP"
			targetPort: 4244
		}]
		internalTrafficPolicy: "Local"
	}
}
"cilium/templates/hubble/tls-helm/server-secret.yaml": {
	// Source: cilium/templates/hubble/tls-helm/server-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "hubble-server-certs"
		namespace: "default"
	}
	type: "kubernetes.io/tls"
	data: {
		"ca.crt":  "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURFekNDQWZ1Z0F3SUJBZ0lRQ1F2YVhnUDkxM2IxbkN0dFFEcUM2REFOQmdrcWhraUc5dzBCQVFzRkFEQVUKTVJJd0VBWURWUVFERXdsRGFXeHBkVzBnUTBFd0hoY05NalF4TWpJek1URXdPRFUwV2hjTk1qY3hNakl6TVRFdwpPRFUwV2pBVU1SSXdFQVlEVlFRREV3bERhV3hwZFcwZ1EwRXdnZ0VpTUEwR0NTcUdTSWIzRFFFQkFRVUFBNElCCkR3QXdnZ0VLQW9JQkFRRENrcno4TG1oeTVLeXRzYTdDUncrdC8yYXBCRytpYldJZUFJOGsvNHFKUVlscU4wTjIKbVJGYlFleFd1NWZscnJpY3JhUXBoODJ5eVlXdWdKNDJvQXFaQjBzK0l4TEx5dDI2TllWT21RcklqRFErekJoYwowbTdOZTFBc0dZSkNIYk5tTTdjRjBsdzdzMDhqclVabVVMNnRQeFdZVUwzWkRQWlpCRTMxd0JoRzZDTzB2YUYrCk1LOVgwQnFkcllUVk9GcmNNaWlpNWkyM0lXWVRqRks1MGJYWHl3VG5NcUtsc3ZXR09qRGJzcVMrY0lyd2NKbjcKb0NaQ3NKTTYwK2swTmx6MFUvUVdHbkhsN0FYTmFIa2RCdFJ4VE1kWisyZnVVVDJwRW9CRXFCM05HaE5PcWU0bgpzb0Q3S01HeE83NkhGUXdJUlAvYURPZUtqQzJGczNuRDlrV1hBZ01CQUFHallUQmZNQTRHQTFVZER3RUIvd1FFCkF3SUNwREFkQmdOVkhTVUVGakFVQmdnckJnRUZCUWNEQVFZSUt3WUJCUVVIQXdJd0R3WURWUjBUQVFIL0JBVXcKQXdFQi96QWRCZ05WSFE0RUZnUVVaQ3JxcTRrRENVSGpiNVBDRHY5MUczbnBDOW93RFFZSktvWklodmNOQVFFTApCUUFEZ2dFQkFBRWdjdXhvQUZFRDYxSTQrd3dGNUJaZlVxc1c3QUxqK1BqeENhdkdzcGRxY0xFYXFDZ3Aya0hWCjYzSUczNmNsQ0lKdlpzSUQxOU9NcnNWZ1dvbEhSbnZCZldzSDU5WXorWUZLWDVSb1RjWG84YTNWSjZKK2hPUXkKRWVRcXU4OHpIcFlhM1RUMjFNNElaZTlaeWhuQXhrbjF1R24xMXd1WCtqbU50Ly85TktkditHb0hSNFRGU2RkTwpUQjNFYy9QTHlJdVpzVHBYWER4VTZTcTFRUlBwbXRocmxva1RmdjRhcHI5bHRjWGxHQy81azdOM0tvc20xclBaCkJxZG5GR2VzTlBFMEZzSUZLcExyclZlN3BXY1FkUSsxLzI2WkhvTWdYdWFMK2xYRFlSV2NLd2ExbVE4czQzbTIKcTZGZFdyMlNXaUhQRDJIWEhsV0FpaktIdmswMkdNbz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"tls.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURWekNDQWorZ0F3SUJBZ0lSQUlzdDlwdlJ6VGZUcDVwUkU2L0dZL293RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkwTVRJeU16RXhNRGcxTkZvWERUSTFNVEl5TXpFeApNRGcxTkZvd0tqRW9NQ1lHQTFVRUF3d2ZLaTVrWldaaGRXeDBMbWgxWW1Kc1pTMW5jbkJqTG1OcGJHbDFiUzVwCmJ6Q0NBU0l3RFFZSktvWklodmNOQVFFQkJRQURnZ0VQQURDQ0FRb0NnZ0VCQUxJY2lzQ0RicEFnejhKY09yMWEKN1E1cUpWY1ZwaHlzUmEyZ2t6bWREWkNSaGYwWFd0RG9oZHgvVUkwRldQb1hRVDQvRXZEbjFlbVNkTXBOeUI5MgpuZlRtdlh5d0Y0N3pyY1hXQUxDL2VFTjRSTGU4NWd6MjEwMDhrYlhBMVdrbytqODhKOGViRzRmNStIUGJKTEdKCmlyNmttZkpyeEc2V2RLMjRUaVJ5ZjAyU3BrdW5yLzNKZ0wvV1RYek5hNkdmWnUycDliQWovR1JNVU1xV2JTVTEKclQ4SzlsSlFMNHdMbWJMNVBTT0lNRjVPVTB2R3J5YSt6b25taGNGMlRzcDlCaGY1UTdyRUhrQ1Awdm50OUxqagpVWUlRWmx6WnFTdDB6Wi9UcklIUVdnMW1DZ2ZtRnVuc0xwQXUxSTRSV0Q5Qmc0SUw0a3RnVzJtVlhpM2FIcGhsCi9ma0NBd0VBQWFPQmpUQ0JpakFPQmdOVkhROEJBZjhFQkFNQ0JhQXdIUVlEVlIwbEJCWXdGQVlJS3dZQkJRVUgKQXdFR0NDc0dBUVVGQndNQ01Bd0dBMVVkRXdFQi93UUNNQUF3SHdZRFZSMGpCQmd3Rm9BVVpDcnFxNGtEQ1VIagpiNVBDRHY5MUczbnBDOW93S2dZRFZSMFJCQ013SVlJZktpNWtaV1poZFd4MExtaDFZbUpzWlMxbmNuQmpMbU5wCmJHbDFiUzVwYnpBTkJna3Foa2lHOXcwQkFRc0ZBQU9DQVFFQUIxa1ZhWDhvTEVrTkpVWGNNd2NrWTJyOTdxcHIKQWtnZy9wVmRwUzNjYzRQeXdGY3RGU1dVYnNDVjdWNFNwbStRMDVwMmYrMlJTVjdldUdtckJiTllHZlk4NDI2SAo2alZpK2t1aEpQd2Z0bXkvNm9tRUJJWTdIRlI1Y2dWNSs5S0tpQnlDTTI3cVJ6RG1vUW9KajgyY2JTQnVhS3NPCk82d2llUWdBdWhzcTRRcG1IZFVCMkJUMTFudktXUEQzKzJjMm1jNVZhRlVTQlF5Z1lEYUFpdFJYaDBCWWZ1N1gKVVd3cWowbGw1SllHMjZVOW4wWGZ4Si9xaG1TNG4zT2hDS2dBSXd0SnJ5dFZSdEFnUjNDUlNENGxHUWxVQjVFMQpRU1Q3a2dwcnBRWjZkYllHMWRLOG02cUx5cHNtdktlM3d6dG4zQkQ5RTcwTWo3NWdXZE0zM1FscmtRPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"tls.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBc2h5S3dJTnVrQ0RQd2x3NnZWcnREbW9sVnhXbUhLeEZyYUNUT1owTmtKR0YvUmRhCjBPaUYzSDlRalFWWStoZEJQajhTOE9mVjZaSjB5azNJSDNhZDlPYTlmTEFYanZPdHhkWUFzTDk0UTNoRXQ3em0KRFBiWFRUeVJ0Y0RWYVNqNlB6d254NXNiaC9uNGM5c2tzWW1LdnFTWjhtdkVicFowcmJoT0pISi9UWkttUzZldgovY21BdjlaTmZNMXJvWjltN2FuMXNDUDhaRXhReXBadEpUV3RQd3IyVWxBdmpBdVpzdms5STRnd1hrNVRTOGF2CkpyN09pZWFGd1haT3luMEdGL2xEdXNRZVFJL1MrZTMwdU9OUmdoQm1YTm1wSzNUTm45T3NnZEJhRFdZS0IrWVcKNmV3dWtDN1VqaEZZUDBHRGdndmlTMkJiYVpWZUxkb2VtR1g5K1FJREFRQUJBb0lCQVFDZDU3d0RqUUphZVJ4NApIYmhkNDl6Q3FNeE45bjE4Y2lhY0ZmNHdWOUtNMXRkSldJbEZLTUIwaWRMcUUxR2M5eno2YUlUc1d6MUVoSGxTCldiOFFWZU1ZR2ZEb09GM0tlTE1ZNys5UXc0OWxrWnlxb0tmNzJtTnFzRVltTXIyQks3a2drcjVac21Pb0c2OXYKVjF1aW9tUUZQSHpYZFQrREk1Ung1ekl3RWVwVzVDL2RoclAwMHM4T0dtd0x3bUJKc1h3YlZXOWo0TkF2OFVmMQp6MURRUWNzcXBldkMweVhnWlVxeG1rcW5tcTd2MEFXZExrL3hQVDJJbjJIU2Z3WlMwSWcxMHRXMEdVN0xPOCtiCmN6SVBYbE93NHIrUkNTRDdwOENZWDdDSFAySzZNMUlUdUU2L1RGQTVaRDd4OHplS1FDL0FTTVEvOUhVRUxUcFAKd0syL3hwMEJBb0dCQU43bTJzYlRGU1oxQjRwTWRYclYyZWJqcG9CY0Y1WlR3alhISm1yT0ZCd0NnVkxNZ05zbgpwMEV4L0VRRGZGSEQ5Mmt2M1Y5YzkwVXhRZHZiWFFuWEZkRDdHVVQrSSsyWGI1SmxSV3BjVU1mT2xQQS9HNlVjClVBekorN3hxK3JSQXZtQkpaTzJTSTZPS0JVOVJrNlhua1B5Qk9RZzdwaFQ0WG5EajU2bjBuL0J4QW9HQkFNeVAKRkEyVzJoWXJ0a3lvR1JNd2MxclFNTXNYTVBXeXhicUI1eXdhVEhEUW1qWm1PUzFvMC8rMzFzNk43NS9aalo5Wgp6SXRIMU1jVm1NaHpiRnJidlNvMTdwVEdzWW1Dczk1aHpOMjJjZmo1amRkbkVJZzhybU5mcmxLOGhSUXVkY2tSCkNYQTZwVnZHWXhSY2cyK0JVL0JRZmRBUy9DaXNGa2puWVNmQWxDb0pBb0dCQUltM1loWVRsbTZ6UVp4ZHp2dTgKb3F0M25ZaVMzWFBnZmc1UjQ5ZDdTWXRndE53ZVE4S2poai9PalVqTVNvUU9LbzlQcGx0a0NkWXpMN2lSbUxNYQpzM3p4bHRROG5LQVB2enhZMjRGeVZlcU5KUkltTzROUXNkaWs5cWFjQmhkV0pRbENiMXdrdldZdVFVZVhaRHpOCmpKT2xsMElSOEhQbVhCc3RoQlZLY1lMUkFvR0FlWllKeTFJQTZ2Q3NlTC9wdDVneTJLV3FldXliODA2QmJLeE4KNWM3ejVKSjVOeUJubC9BWklvUDVMK2o1cHorK2lCcnVFMU5zeTdDd2tXVFo0TjkvZnBsejZBWjUvRXd0OFY2YwpVS1JpOWlRUEJSdURuaGJEYU5tMFdnVW43S2o0NWJ3MHFmcVIwdzBHVTFIeDVkTXZPMFg4b2pMR29yNDJ1THFlCjZ1dnlwVkVDZ1lBZ1ROZDNPS2E4UWZkSzFXdUhtQVdQSXpuSTdldEJkUWNOdkxKRzdmdWRtOWtYTWV3VWFuWUsKQUNiQ1c4czhEWWE5MTFUYlYwNC9KN1M2WkhJRWhHWUJTU3N1QjEreENqeXhHUHh3R2plc3o3eS8zeW5YZTRtRworNFNrdFlHSDVlMFg1WGxGanR1bUVZRmlJa1ByS3dOdzBnc1N1b21oelc5Y0pWdkRsMFFRamc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="
	}
}
