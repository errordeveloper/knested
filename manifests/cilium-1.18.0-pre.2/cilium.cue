package cilium

"cilium-templates-cilium-ca-secret-secret-cilium-ca": {
	// Source: cilium/templates/cilium-ca-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "cilium-ca"
		namespace: "kube-system"
	}
	data: {
		"ca.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURGRENDQWZ5Z0F3SUJBZ0lSQUpSYm1WVngwSnhtWG1NNzQyTm8xQ013RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkxTURVeU1qQTVORFUwTjFvWERUSTRNRFV5TVRBNQpORFUwTjFvd0ZERVNNQkFHQTFVRUF4TUpRMmxzYVhWdElFTkJNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DCkFROEFNSUlCQ2dLQ0FRRUFwbFVjMEhhQktZQ1lUMEdsSlpzQ0Jaczc4ZmRBVGx3bmt5Y0ZTLzVreFdHRFR0T3oKTVN2SkJEUm8wVE8yMi82TUppcWFtaDVZUEtGRzdqZEp1aTZMYzlSbVdvR0JCZXpWcnowUkVsM0drR0dGZHQ5agpFTTZONnZ5djlFMDBiTXB2aUV0VlVUNzY2S202SENRYkNJK0liZ2QyNC9KN3dRUTVEbjdrY3dzVkRYSHg4Z2t5CmpCR3Z0NWQremRrd1FadTRhb0YyY3g2V1BDcmZOYmJSNzJnVERlQkluQ0dEZEVzR2FmcVQxOWJHSlB2RVZTcnMKcmxSSXRZbHNzRDRid1JjVnF0ZTl2TGhpaTdHMEZQS2w3bXRkeGp2aFlnWk9rbm95OHlZM3hjdC9qd3U5WlN5bgorQitzOWFQWngzaTNjcmJiMDFwd0dNUzNFcDdubXJsUFZ5OFNQUUlEQVFBQm8yRXdYekFPQmdOVkhROEJBZjhFCkJBTUNBcVF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdFR0NDc0dBUVVGQndNQ01BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdIUVlEVlIwT0JCWUVGTVkrS1V4Vk9hVXFqVlFHckJvV2MvNEYzZno4TUEwR0NTcUdTSWIzRFFFQgpDd1VBQTRJQkFRQUtWTjZzOGpvcGptM1FyT0FKK2t3STZ5Ni9URkF4NGxiNS9vRWphK2I3d1RDaVgrRXJhSmtmCmI4Ym53RHlLYkhqSWlzWG5VYmhaWTVYYlhXMEtVeTB1ZmpCd0p6YmFiRnZqdHRyL1F0emI2U2s3WE0veVJFbVUKOU9Va3ZhU3cxa1RDK0h2RlBQOGk2OUZSQUdNdE5vQWQ2TlExbFlLZllhNzZqcVQzZkIwaXlkN3NmV2x6V0dhUwo2UzlnOVVaTWphbmlmR09aUE5xZXBwT1YrNzZQSFF1akRPOGw2SjQ4aDdWWnUra0czRTBoZmhNdnQ5blpzaFcwCkRLamR2ZHJuVUVZTEcwNzRtU0hUWTlnS1RhWkUvS2M4NXRmT3ZLbkdNWGtuWitpNzFqOWtnL3B1c0k2a29mbVQKK1BSZVJNcGpZMG1jZVkwWFY5WU5tQWpjQ01YV1NzMlIKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"ca.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb3dJQkFBS0NBUUVBcGxVYzBIYUJLWUNZVDBHbEpac0NCWnM3OGZkQVRsd25reWNGUy81a3hXR0RUdE96Ck1TdkpCRFJvMFRPMjIvNk1KaXFhbWg1WVBLRkc3amRKdWk2TGM5Um1Xb0dCQmV6VnJ6MFJFbDNHa0dHRmR0OWoKRU02TjZ2eXY5RTAwYk1wdmlFdFZVVDc2NkttNkhDUWJDSStJYmdkMjQvSjd3UVE1RG43a2N3c1ZEWEh4OGdreQpqQkd2dDVkK3pka3dRWnU0YW9GMmN4NldQQ3JmTmJiUjcyZ1REZUJJbkNHRGRFc0dhZnFUMTliR0pQdkVWU3JzCnJsUkl0WWxzc0Q0YndSY1ZxdGU5dkxoaWk3RzBGUEtsN210ZHhqdmhZZ1pPa25veTh5WTN4Y3Qvand1OVpTeW4KK0IrczlhUFp4M2kzY3JiYjAxcHdHTVMzRXA3bm1ybFBWeThTUFFJREFRQUJBb0lCQUIwTzRQd05PK2JkZTU1YgpCRWd6MHBCYXJJZ0t6eTN4WFF1UTVWUy9vbWkyTHF1aWdkdGRBQjd2TGdHZ1JIbWQrR3VCaFdWWDJFZnRUL2cxCmFmaXdBWFpRbkxvQ2htRWIzVC9pVGYxMHF3Z1Z0V3lOUGFBVnljYkw4c3hlQVlMaEFjZWdpNHpvVVFxOC9oSEYKQUFFSW5FZkduNDlXa1Nhby8zUElHTTU5V09YeVlqMUFqcVNIT1ZJR2ZGbzFHYjVwUTJ4UXE0WldyZzYxWmJCVgpRaHVmNXJZVTRkRGFxOFFpTlY4YVN6WEU1YmRDVzgyKy9lY2ZKSUhXUHQzd2JGM3hyc0ttU0drLzhLQjR5Y1dzClczenpjM2V4aWFzMUtJVEVBV0tJUXMrNWh2ektTRXMwZ0dOdVVSenRoeGxlZnEzaVhodE9hd1RHN0VRL0ptWlkKNzA1N0ZiRUNnWUVBMENFMnJjMVJoQkM0blZjKzYrb000RlBsQk1qMnExMnM4dERFalRGTStMZjZURXR2VGQrTApVUlY4RjYvMThBNk5ZdUpzL3pmeGZmeUk2QlcrQVZPdUhObHJlQ0FtM3FZdmpYbVF5REVPcFlzRTl3MUlBbEFJCjJsbGp3SVNyclhSN2JZSUpTSUEyZTNhU0dEL0ZqVUt4QjU3Q1N6WThHYkNPd1pYc3NaL2ZpOUVDZ1lFQXpKYmEKcThLM2hWQkpvaTBHSkVSWjJaK3dsb05VWUVyeE9RSitMZGxiT21aR1VCUjRreXZaZ1dwWXluMno5Z1RtVGY0NQpyY0h3RXNoSGRHVHhXOUN6dTJxNjdRUkt4YnNHOUpoWmhGRW1JWEpOZnZqRzNpS0kvOGJJYkN6eFhUQ1dZWHdJCkhzRjhhY2FFSVVtQk00bGRaK2N5T2tSMjA2ZzA4dlNINC8wSHRxMENnWUVBb1NOVjVqSTBqbjh6ci8zQVpYNk0KQVpKeW1jWE4xTmR0ODREVzdFbmpRaDJPMkVyL0hkZVpVV25FN2NINk02WFFxV0tNNlB3ektFdkE0NDhSMEkwdApISURveDlSOHc1eis3QlhXbG1nRTR2NURGZE5la1F2T0R0OXViN3RILzc5VFlIRnhKb1M5cWRFZlEwNzhjR1hXCkVnUkVnVjY0SVZ1azZ4UmNjUmxLUmtFQ2dZQVUvTWl6NUFhMWkxWHlhQklBT0c3TEwyR0xIeS9SclA1djdieUoKOFlrMVJYYWpFbWFJR25CMm9UVTRtSXFVaTA0ZzVCcUFvNnVBRWNHYXhCd3FZZzkrQTJYbm1KQWZGcCtSQ2V2cwo4ZklxYmpKYSt5UlRkMUY4ZzZUZHpBSjZuOWhkYWI3ZmdOUEZlaExsNDBkNHhQZXJDQUdVRHAvdCtJeHQrLzNRCnVvMUhCUUtCZ0hJenU2anBGZU9SN29zOUZQUnVmT29QNldwdFY2NjZuK2xFY1hnYnpkR1ZTZVo5eFd1cmhlamUKVS9WaGtlYzcyYkxLRkQyV2JYSjFxb3lEV0VpQjl6dm9yOEhRWVlERkE5b0J6YWFuRmx0VmpJd1UxaDlvcjQwdQowWGRwQW1tSWdHNGVWSFFsRVNnY3E5RHg5WGM5eW1CbXM2Mkt4bGNIcm5FZUt1amN3ZkNBCi0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg=="
	}
}
"cilium-templates-cilium-configmap-configmap-cilium-config": {
	// Source: cilium/templates/cilium-configmap.yaml
	apiVersion: "v1"
	kind:       "ConfigMap"
	metadata: {
		name:      "cilium-config"
		namespace: "kube-system"
	}
	data: {

		// Identity allocation mode selects how identities are shared between cilium
		// nodes by setting how they are stored. The options are "crd", "kvstore" or
		// "doublewrite-readkvstore" / "doublewrite-readcrd".
		// - "crd" stores identities in kubernetes as CRDs (custom resource definition).
		//   These can be queried with:
		//     kubectl get ciliumid
		// - "kvstore" stores identities in an etcd kvstore, that is
		//   configured below. Cilium versions before 1.6 supported only the kvstore
		//   backend. Upgrades from these older cilium versions should continue using
		//   the kvstore by commenting out the identity-allocation-mode below, or
		//   setting it to "kvstore".
		// - "doublewrite" modes store identities in both the kvstore and CRDs. This is useful
		//   for seamless migrations from the kvstore mode to the crd mode. Consult the
		//   documentation for more information on how to perform the migration.
		"identity-allocation-mode":    "crd"
		"identity-heartbeat-timeout":  "30m0s"
		"identity-gc-interval":        "15m0s"
		"cilium-endpoint-gc-interval": "5m0s"
		"nodes-gc-interval":           "5m0s"

		// If you want to run cilium in debug mode change this value to true
		debug:                       "false"
		"debug-verbose":             ""
		"metrics-sampling-interval": "5m"
		// The agent can be put into the following three policy enforcement modes
		// default, always and never.
		// https://docs.cilium.io/en/latest/security/policy/intro/#policy-enforcement-modes
		"enable-policy":          "default"
		"policy-cidr-match-mode": ""
		// If you want metrics enabled in cilium-operator, set the port for
		// which the Cilium Operator will have their metrics exposed.
		// NOTE that this will open the port on the nodes where Cilium operator pod
		// is scheduled.
		"operator-prometheus-serve-addr":             ":9963"
		"enable-metrics":                             "true"
		"enable-policy-secrets-sync":                 "true"
		"policy-secrets-only-from-secrets-namespace": "true"
		"policy-secrets-namespace":                   "cilium-secrets"

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
		// bpf-policy-stats-map-max specifies the maximum number of entries in global
		// policy stats map
		"bpf-policy-stats-map-max": "65536"
		// bpf-lb-map-max specifies the maximum number of entries in bpf lb service,
		// backend and affinity maps.
		"bpf-lb-map-max":                    "65536"
		"bpf-lb-external-clusterip":         "false"
		"bpf-lb-source-range-all-types":     "false"
		"bpf-lb-algorithm-annotation":       "false"
		"bpf-lb-mode-annotation":            "false"
		"bpf-distributed-lru":               "false"
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
		"routing-mode":                "tunnel"
		"tunnel-protocol":             "vxlan"
		"tunnel-source-port-range":    "0-0"
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
		"iptables-random-fully":                       "false"
		"auto-direct-node-routes":                     "false"
		"direct-routing-skip-unreachable":             "false"
		"enable-local-redirect-policy":                "false"
		"enable-runtime-device-detection":             "true"
		"kube-proxy-replacement":                      "true"
		"kube-proxy-replacement-healthz-bind-address": ""
		"bpf-lb-sock":                                 "false"
		"nodeport-addresses":                          ""
		"enable-health-check-nodeport":                "true"
		"enable-health-check-loadbalancer-ip":         "false"
		"node-port-bind-protection":                   "true"
		"enable-auto-protect-node-port-range":         "true"
		"bpf-lb-acceleration":                         "disabled"
		"enable-experimental-lb":                      "true"
		"enable-svc-source-range-check":               "true"
		"enable-l2-neigh-discovery":                   "true"
		"arping-refresh-period":                       "30s"
		"k8s-require-ipv4-pod-cidr":                   "false"
		"k8s-require-ipv6-pod-cidr":                   "false"
		"enable-k8s-networkpolicy":                    "true"
		"enable-endpoint-lockdown-on-policy-overflow": "false"
		// Tell the agent to generate and write a CNI configuration file
		"write-cni-conf-when-ready":           "/host/etc/cni/net.d/05-cilium.conflist"
		"cni-exclusive":                       "true"
		"cni-log-file":                        "/var/run/cilium/cilium-cni.log"
		"enable-endpoint-health-checking":     "true"
		"enable-health-checking":              "true"
		"health-check-icmp-failure-threshold": "3"
		"enable-well-known-identities":        "false"
		"enable-node-selector-labels":         "false"
		"synchronize-k8s-nodes":               "true"
		"operator-api-serve-addr":             "127.0.0.1:9234"
		"enable-hubble":                       "true"
		// UNIX domain socket for Hubble server to listen to.
		"hubble-socket-path":                        "/var/run/cilium/hubble.sock"
		"hubble-network-policy-correlation-enabled": "true"
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
		"default-lb-service-ipam":                        "lbipam"
		"egress-gateway-reconciliation-trigger-interval": "1s"
		"enable-vtep":                                    "false"
		"vtep-endpoint":                                  ""
		"vtep-cidr":                                      ""
		"vtep-mask":                                      ""
		"vtep-mac":                                       ""
		procfs:                                           "/host/proc"
		"bpf-root":                                       "/sys/fs/bpf"
		"cgroup-root":                                    "/run/cilium/cgroupv2"
		"identity-management-mode":                       "agent"
		"enable-sctp":                                    "false"
		"remove-cilium-node-taints":                      "true"
		"set-cilium-node-taints":                         "true"
		"set-cilium-is-up-condition":                     "true"
		"unmanaged-pod-watcher-interval":                 "15"
		// default DNS proxy to transparent mode in non-chaining modes
		"dnsproxy-enable-transparent-mode":        "true"
		"dnsproxy-socket-linger-timeout":          "10"
		"tofqdns-dns-reject-response-code":        "refused"
		"tofqdns-enable-dns-compression":          "true"
		"tofqdns-endpoint-max-ip-per-hostname":    "1000"
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
		"proxy-max-concurrent-retries":            "128"
		"http-retry-count":                        "3"
		"external-envoy-proxy":                    "true"
		"envoy-base-id":                           "0"
		"envoy-access-log-buffer-size":            "4096"
		"envoy-keep-cap-netbindservice":           "false"
		"max-connected-clusters":                  "255"
		"clustermesh-enable-endpoint-sync":        "false"
		"clustermesh-enable-mcs-api":              "false"
		"nat-map-stats-entries":                   "32"
		"nat-map-stats-interval":                  "30s"
		"enable-internal-traffic-policy":          "true"
		"enable-lb-ipam":                          "true"
		"enable-non-default-deny-policies":        "true"
		"enable-source-ip-verification":           "true"
	}
}
// Extra config allows adding arbitrary properties to the cilium config.
// By putting it at the end of the ConfigMap, it's also possible to override existing properties.
"cilium-templates-cilium-secrets-namespace-namespace-cilium-secrets": {
	// Source: cilium/templates/cilium-secrets-namespace.yaml
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: {
		name: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
		annotations: null
	}
}
"cilium-templates-cilium-agent-clusterrole-clusterrole-cilium": {
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
"cilium-templates-cilium-agent-clusterrolebinding-clusterrolebinding-cilium": {
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
		namespace: "kube-system"
	}]
}
"cilium-templates-cilium-agent-daemonset-daemonset-cilium": {
	// Source: cilium/templates/cilium-agent/daemonset.yaml
	apiVersion: "apps/v1"
	kind:       "DaemonSet"
	metadata: {
		name:      "cilium"
		namespace: "kube-system"
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
				annotations: "kubectl.kubernetes.io/default-container": "cilium-agent"
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
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
						failureThreshold:    300
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
							}, {
								name:  "require-k8s-connectivity"
								value: "false"
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
					}, {
						name: "KUBERNETES_SERVICE_HOST"
						valueFrom: configMapKeyRef: {
							name: "knested-apiserver-config"
							key:  "kube-apiserver-pod-ip"
						}
					}, {
						name:  "KUBERNETES_SERVICE_PORT"
						value: "6443"
					}, {
						name:  "KUBE_CLIENT_BACKOFF_BASE"
						value: "1"
					}, {
						name:  "KUBE_CLIENT_BACKOFF_DURATION"
						value: "120"
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
						name:             "cilium-netns"
						mountPath:        "/var/run/cilium/netns"
						mountPropagation: "HostToContainer"
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
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
					}, {
						name: "KUBERNETES_SERVICE_HOST"
						valueFrom: configMapKeyRef: {
							name: "knested-apiserver-config"
							key:  "kube-apiserver-pod-ip"
						}
					}, {
						name:  "KUBERNETES_SERVICE_PORT"
						value: "6443"
					}]
					volumeMounts: [{
						name:      "tmp"
						mountPath: "/tmp"
					}]
					terminationMessagePolicy: "FallbackToLogsOnError"
				}, {
					name:            "apply-sysctl-overwrites"
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
					}, {
						name: "KUBERNETES_SERVICE_HOST"
						valueFrom: configMapKeyRef: {
							name: "knested-apiserver-config"
							key:  "kube-apiserver-pod-ip"
						}
					}, {
						name:  "KUBERNETES_SERVICE_PORT"
						value: "6443"
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
					image:           "quay.io/cilium/cilium:v1.18.0-pre.2@sha256:d8bb25536a1b9e365c1c9f7d0f8cd8c7f6a66799a81ea73b6bbe8adbc13fc036"
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
						// To exec into pod network namespaces
						type: "DirectoryOrCreate"
					}
				}, {
					name: "cilium-netns"
					hostPath: {
						path: "/var/run/netns"
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
"cilium-templates-cilium-agent-role-role-cilium-config-agent": {
	// Source: cilium/templates/cilium-agent/role.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "Role"
	metadata: {
		name:      "cilium-config-agent"
		namespace: "kube-system"
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
"cilium-templates-cilium-agent-role-role-cilium-tlsinterception-secrets": {
	// Source: cilium/templates/cilium-agent/role.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "Role"
	metadata: {
		name:      "cilium-tlsinterception-secrets"
		namespace: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	rules: [{
		apiGroups: [""]
		resources: ["secrets"]
		verbs: [
			"get",
			"list",
			"watch",
		]
	}]
}
"cilium-templates-cilium-agent-rolebinding-rolebinding-cilium-config-agent": {
	// Source: cilium/templates/cilium-agent/rolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: {
		name:      "cilium-config-agent"
		namespace: "kube-system"
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
		namespace: "kube-system"
	}]
}
"cilium-templates-cilium-agent-rolebinding-rolebinding-cilium-tlsinterception-secrets": {
	// Source: cilium/templates/cilium-agent/rolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: {
		name:      "cilium-tlsinterception-secrets"
		namespace: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "Role"
		name:     "cilium-tlsinterception-secrets"
	}
	subjects: [{
		kind:      "ServiceAccount"
		name:      "cilium"
		namespace: "kube-system"
	}]
}
"cilium-templates-cilium-agent-serviceaccount-serviceaccount-cilium": {
	// Source: cilium/templates/cilium-agent/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium"
		namespace: "kube-system"
	}
}
"cilium-templates-cilium-envoy-configmap-configmap-cilium-envoy-config": {
	// Source: cilium/templates/cilium-envoy/configmap.yaml
	apiVersion: "v1"
	kind:       "ConfigMap"
	metadata: {
		name:      "cilium-envoy-config"
		namespace: "kube-system"
	}
	data: {
		// Keep the key name as bootstrap-config.json to avoid breaking changes
		"bootstrap-config.json": """
			{"admin":{"address":{"pipe":{"path":"/var/run/cilium/envoy/sockets/admin.sock"}}},"applicationLogConfig":{"logFormat":{"textFormat":"[%Y-%m-%d %T.%e][%t][%l][%n] [%g:%#] %v"}},"bootstrapExtensions":[{"name":"envoy.bootstrap.internal_listener","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.bootstrap.internal_listener.v3.InternalListener"}}],"dynamicResources":{"cdsConfig":{"apiConfigSource":{"apiType":"GRPC","grpcServices":[{"envoyGrpc":{"clusterName":"xds-grpc-cilium"}}],"setNodeOnFirstMessageOnly":true,"transportApiVersion":"V3"},"initialFetchTimeout":"30s","resourceApiVersion":"V3"},"ldsConfig":{"apiConfigSource":{"apiType":"GRPC","grpcServices":[{"envoyGrpc":{"clusterName":"xds-grpc-cilium"}}],"setNodeOnFirstMessageOnly":true,"transportApiVersion":"V3"},"initialFetchTimeout":"30s","resourceApiVersion":"V3"}},"node":{"cluster":"ingress-cluster","id":"host~127.0.0.1~no-id~localdomain"},"overloadManager":{"resourceMonitors":[{"name":"envoy.resource_monitors.global_downstream_max_connections","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.resource_monitors.downstream_connections.v3.DownstreamConnectionsConfig","max_active_downstream_connections":"50000"}}]},"staticResources":{"clusters":[{"circuitBreakers":{"thresholds":[{"maxRetries":128}]},"cleanupInterval":"2.500s","connectTimeout":"2s","lbPolicy":"CLUSTER_PROVIDED","name":"ingress-cluster","type":"ORIGINAL_DST","typedExtensionProtocolOptions":{"envoy.extensions.upstreams.http.v3.HttpProtocolOptions":{"@type":"type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions","commonHttpProtocolOptions":{"idleTimeout":"60s","maxConnectionDuration":"0s","maxRequestsPerConnection":0},"useDownstreamProtocolConfig":{}}}},{"circuitBreakers":{"thresholds":[{"maxRetries":128}]},"cleanupInterval":"2.500s","connectTimeout":"2s","lbPolicy":"CLUSTER_PROVIDED","name":"egress-cluster-tls","transportSocket":{"name":"cilium.tls_wrapper","typedConfig":{"@type":"type.googleapis.com/cilium.UpstreamTlsWrapperContext"}},"type":"ORIGINAL_DST","typedExtensionProtocolOptions":{"envoy.extensions.upstreams.http.v3.HttpProtocolOptions":{"@type":"type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions","commonHttpProtocolOptions":{"idleTimeout":"60s","maxConnectionDuration":"0s","maxRequestsPerConnection":0},"upstreamHttpProtocolOptions":{},"useDownstreamProtocolConfig":{}}}},{"circuitBreakers":{"thresholds":[{"maxRetries":128}]},"cleanupInterval":"2.500s","connectTimeout":"2s","lbPolicy":"CLUSTER_PROVIDED","name":"egress-cluster","type":"ORIGINAL_DST","typedExtensionProtocolOptions":{"envoy.extensions.upstreams.http.v3.HttpProtocolOptions":{"@type":"type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions","commonHttpProtocolOptions":{"idleTimeout":"60s","maxConnectionDuration":"0s","maxRequestsPerConnection":0},"useDownstreamProtocolConfig":{}}}},{"circuitBreakers":{"thresholds":[{"maxRetries":128}]},"cleanupInterval":"2.500s","connectTimeout":"2s","lbPolicy":"CLUSTER_PROVIDED","name":"ingress-cluster-tls","transportSocket":{"name":"cilium.tls_wrapper","typedConfig":{"@type":"type.googleapis.com/cilium.UpstreamTlsWrapperContext"}},"type":"ORIGINAL_DST","typedExtensionProtocolOptions":{"envoy.extensions.upstreams.http.v3.HttpProtocolOptions":{"@type":"type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions","commonHttpProtocolOptions":{"idleTimeout":"60s","maxConnectionDuration":"0s","maxRequestsPerConnection":0},"upstreamHttpProtocolOptions":{},"useDownstreamProtocolConfig":{}}}},{"connectTimeout":"2s","loadAssignment":{"clusterName":"xds-grpc-cilium","endpoints":[{"lbEndpoints":[{"endpoint":{"address":{"pipe":{"path":"/var/run/cilium/envoy/sockets/xds.sock"}}}}]}]},"name":"xds-grpc-cilium","type":"STATIC","typedExtensionProtocolOptions":{"envoy.extensions.upstreams.http.v3.HttpProtocolOptions":{"@type":"type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions","explicitHttpConfig":{"http2ProtocolOptions":{}}}}},{"connectTimeout":"2s","loadAssignment":{"clusterName":"/envoy-admin","endpoints":[{"lbEndpoints":[{"endpoint":{"address":{"pipe":{"path":"/var/run/cilium/envoy/sockets/admin.sock"}}}}]}]},"name":"/envoy-admin","type":"STATIC"}],"listeners":[{"address":{"socketAddress":{"address":"0.0.0.0","portValue":9964}},"filterChains":[{"filters":[{"name":"envoy.filters.network.http_connection_manager","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager","httpFilters":[{"name":"envoy.filters.http.router","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"}}],"internalAddressConfig":{"cidrRanges":[{"addressPrefix":"10.0.0.0","prefixLen":8},{"addressPrefix":"172.16.0.0","prefixLen":12},{"addressPrefix":"192.168.0.0","prefixLen":16},{"addressPrefix":"127.0.0.1","prefixLen":32}]},"routeConfig":{"virtualHosts":[{"domains":["*"],"name":"prometheus_metrics_route","routes":[{"match":{"prefix":"/metrics"},"name":"prometheus_metrics_route","route":{"cluster":"/envoy-admin","prefixRewrite":"/stats/prometheus"}}]}]},"statPrefix":"envoy-prometheus-metrics-listener","streamIdleTimeout":"300s"}}]}],"name":"envoy-prometheus-metrics-listener"},{"address":{"socketAddress":{"address":"127.0.0.1","portValue":9878}},"filterChains":[{"filters":[{"name":"envoy.filters.network.http_connection_manager","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager","httpFilters":[{"name":"envoy.filters.http.router","typedConfig":{"@type":"type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"}}],"internalAddressConfig":{"cidrRanges":[{"addressPrefix":"10.0.0.0","prefixLen":8},{"addressPrefix":"172.16.0.0","prefixLen":12},{"addressPrefix":"192.168.0.0","prefixLen":16},{"addressPrefix":"127.0.0.1","prefixLen":32}]},"routeConfig":{"virtual_hosts":[{"domains":["*"],"name":"health","routes":[{"match":{"prefix":"/healthz"},"name":"health","route":{"cluster":"/envoy-admin","prefixRewrite":"/ready"}}]}]},"statPrefix":"envoy-health-listener","streamIdleTimeout":"300s"}}]}],"name":"envoy-health-listener"}]}}

			"""
	}
}
"cilium-templates-cilium-envoy-daemonset-daemonset-cilium-envoy": {
	// Source: cilium/templates/cilium-envoy/daemonset.yaml
	apiVersion: "apps/v1"
	kind:       "DaemonSet"
	metadata: {
		name:      "cilium-envoy"
		namespace: "kube-system"
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
					image:           "quay.io/cilium/cilium-envoy:v1.33.2-1745918087-cdc076d75812476bcac9d0e21681e9b6cc18323b@sha256:39221ef34c94579981243031a995dc4da6e18caab55eed746ec05a12128e1da9"
					imagePullPolicy: "IfNotPresent"
					command: ["/usr/bin/cilium-envoy-starter"]
					args: [
						"--",
						"-c /var/run/cilium/envoy/bootstrap-config.json",
						"--base-id 0",
						"--log-level info",
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
					}, {
						name: "KUBERNETES_SERVICE_HOST"
						valueFrom: configMapKeyRef: {
							name: "knested-apiserver-config"
							key:  "kube-apiserver-pod-ip"
						}
					}, {
						name:  "KUBERNETES_SERVICE_PORT"
						value: "6443"
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
"cilium-templates-cilium-envoy-service-service-cilium-envoy": {
	// Source: cilium/templates/cilium-envoy/service.yaml
	apiVersion: "v1"
	kind:       "Service"
	metadata: {
		name:      "cilium-envoy"
		namespace: "kube-system"
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
"cilium-templates-cilium-envoy-serviceaccount-serviceaccount-cilium-envoy": {
	// Source: cilium/templates/cilium-envoy/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-envoy"
		namespace: "kube-system"
	}
}
"cilium-templates-cilium-operator-clusterrole-clusterrole-cilium-operator": {
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
			"namespaces",
			"secrets",
		]
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
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumbgpclusterconfigs/status",
			"ciliumbgppeerconfigs/status",
		]
		verbs: ["update"]
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
			"ciliumidentities.cilium.io",
			"ciliumlocalredirectpolicies.cilium.io",
			"ciliumnetworkpolicies.cilium.io",
			"ciliumnodes.cilium.io",
			"ciliumnodeconfigs.cilium.io",
			"ciliumcidrgroups.cilium.io",
			"ciliuml2announcementpolicies.cilium.io",
			"ciliumpodippools.cilium.io",
			"ciliumgatewayclassconfigs.cilium.io",
		]
	}, {
		apiGroups: ["cilium.io"]
		resources: [
			"ciliumloadbalancerippools",
			"ciliumpodippools",
			"ciliumbgppeeringpolicies",
			"ciliumbgpclusterconfigs",
			"ciliumbgpnodeconfigoverrides",
			"ciliumbgppeerconfigs",
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
"cilium-templates-cilium-operator-clusterrolebinding-clusterrolebinding-cilium-operator": {
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
		namespace: "kube-system"
	}]
}
"cilium-templates-cilium-operator-deployment-deployment-cilium-operator": {
	// Source: cilium/templates/cilium-operator/deployment.yaml
	apiVersion: "apps/v1"
	kind:       "Deployment"
	metadata: {
		name:      "cilium-operator"
		namespace: "kube-system"
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
					image:           "quay.io/cilium/operator-generic:v1.18.0-pre.2@sha256:d66388de2a7921ae0c2178771d548cb43095f99fa401948cfd25d063f7c33891"
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
					}, {
						name: "KUBERNETES_SERVICE_HOST"
						valueFrom: configMapKeyRef: {
							name: "knested-apiserver-config"
							key:  "kube-apiserver-pod-ip"
						}
					}, {
						name:  "KUBERNETES_SERVICE_PORT"
						value: "6443"
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
						topologyKey: "kubernetes.io/hostname"
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
"cilium-templates-cilium-operator-role-role-cilium-operator-tlsinterception-secrets": {
	// Source: cilium/templates/cilium-operator/role.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "Role"
	metadata: {
		name:      "cilium-operator-tlsinterception-secrets"
		namespace: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	rules: [{
		apiGroups: [""]
		resources: ["secrets"]
		verbs: [
			"create",
			"delete",
			"update",
			"patch",
		]
	}]
}
"cilium-templates-cilium-operator-rolebinding-rolebinding-cilium-operator-tlsinterception-secrets": {
	// Source: cilium/templates/cilium-operator/rolebinding.yaml
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: {
		name:      "cilium-operator-tlsinterception-secrets"
		namespace: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
	}
	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "Role"
		name:     "cilium-operator-tlsinterception-secrets"
	}
	subjects: [{
		kind:      "ServiceAccount"
		name:      "cilium-operator"
		namespace: "kube-system"
	}]
}
"cilium-templates-cilium-operator-serviceaccount-serviceaccount-cilium-operator": {
	// Source: cilium/templates/cilium-operator/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-operator"
		namespace: "kube-system"
	}
}
"cilium-templates-hubble-peer-service-service-hubble-peer": {
	// Source: cilium/templates/hubble/peer-service.yaml
	apiVersion: "v1"
	kind:       "Service"
	metadata: {
		name:      "hubble-peer"
		namespace: "kube-system"
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
"cilium-templates-hubble-tls-helm-server-secret-secret-hubble-server-certs": {
	// Source: cilium/templates/hubble/tls-helm/server-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "hubble-server-certs"
		namespace: "kube-system"
	}
	type: "kubernetes.io/tls"
	data: {
		"ca.crt":  "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURGRENDQWZ5Z0F3SUJBZ0lSQUpSYm1WVngwSnhtWG1NNzQyTm8xQ013RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkxTURVeU1qQTVORFUwTjFvWERUSTRNRFV5TVRBNQpORFUwTjFvd0ZERVNNQkFHQTFVRUF4TUpRMmxzYVhWdElFTkJNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DCkFROEFNSUlCQ2dLQ0FRRUFwbFVjMEhhQktZQ1lUMEdsSlpzQ0Jaczc4ZmRBVGx3bmt5Y0ZTLzVreFdHRFR0T3oKTVN2SkJEUm8wVE8yMi82TUppcWFtaDVZUEtGRzdqZEp1aTZMYzlSbVdvR0JCZXpWcnowUkVsM0drR0dGZHQ5agpFTTZONnZ5djlFMDBiTXB2aUV0VlVUNzY2S202SENRYkNJK0liZ2QyNC9KN3dRUTVEbjdrY3dzVkRYSHg4Z2t5CmpCR3Z0NWQremRrd1FadTRhb0YyY3g2V1BDcmZOYmJSNzJnVERlQkluQ0dEZEVzR2FmcVQxOWJHSlB2RVZTcnMKcmxSSXRZbHNzRDRid1JjVnF0ZTl2TGhpaTdHMEZQS2w3bXRkeGp2aFlnWk9rbm95OHlZM3hjdC9qd3U5WlN5bgorQitzOWFQWngzaTNjcmJiMDFwd0dNUzNFcDdubXJsUFZ5OFNQUUlEQVFBQm8yRXdYekFPQmdOVkhROEJBZjhFCkJBTUNBcVF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdFR0NDc0dBUVVGQndNQ01BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdIUVlEVlIwT0JCWUVGTVkrS1V4Vk9hVXFqVlFHckJvV2MvNEYzZno4TUEwR0NTcUdTSWIzRFFFQgpDd1VBQTRJQkFRQUtWTjZzOGpvcGptM1FyT0FKK2t3STZ5Ni9URkF4NGxiNS9vRWphK2I3d1RDaVgrRXJhSmtmCmI4Ym53RHlLYkhqSWlzWG5VYmhaWTVYYlhXMEtVeTB1ZmpCd0p6YmFiRnZqdHRyL1F0emI2U2s3WE0veVJFbVUKOU9Va3ZhU3cxa1RDK0h2RlBQOGk2OUZSQUdNdE5vQWQ2TlExbFlLZllhNzZqcVQzZkIwaXlkN3NmV2x6V0dhUwo2UzlnOVVaTWphbmlmR09aUE5xZXBwT1YrNzZQSFF1akRPOGw2SjQ4aDdWWnUra0czRTBoZmhNdnQ5blpzaFcwCkRLamR2ZHJuVUVZTEcwNzRtU0hUWTlnS1RhWkUvS2M4NXRmT3ZLbkdNWGtuWitpNzFqOWtnL3B1c0k2a29mbVQKK1BSZVJNcGpZMG1jZVkwWFY5WU5tQWpjQ01YV1NzMlIKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"tls.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURWakNDQWo2Z0F3SUJBZ0lRSXprNjU1OFJad2ltMTdiaDJtTGhrakFOQmdrcWhraUc5dzBCQVFzRkFEQVUKTVJJd0VBWURWUVFERXdsRGFXeHBkVzBnUTBFd0hoY05NalV3TlRJeU1EazBOVFEzV2hjTk1qWXdOVEl5TURrMApOVFEzV2pBcU1TZ3dKZ1lEVlFRRERCOHFMbVJsWm1GMWJIUXVhSFZpWW14bExXZHljR011WTJsc2FYVnRMbWx2Ck1JSUJJakFOQmdrcWhraUc5dzBCQVFFRkFBT0NBUThBTUlJQkNnS0NBUUVBMWRwb0NiMytZU2kzdmorb3o1UUcKYm1YcG95Mk05Z2ZxdHJKNTRBb1BoeXhTYktjL2FVbkY4UlZ2ajNLVTQ5OXY5cjZsbS9UclFsNXFCcW1HbTJ5VQpXTTF3bXNxTFhiak1zd1NpcWcvSkJ0Sm0zNXFnWGs4YXNJSGo0UFNodGI4eDNSOFFVSWdGYllubXNrUmpKOHZMCjNrL2pZZjN4U1Vka2svVDR2UE9Va3dDQ1pJcjBXY2k2dmtPcVZNRmF3YlpWMDJWcGQzRWR4bUVpVkdGZ1UzeTYKcVNsckRFWDlJYXFVV2JxS0NZNGpiYkZFZXYrZHdzbUg2QXl5RzBmd0RUOE5aSno2WHA1V0ttODJSdk5ZUkxVWApGNUI3bks3MVVkTnl3M2FSZ1lGYkdyV1lwdVNlQWxLL25waTN2MEVQMndWNzJCTDJuVXhYS2g4YjZFN3d4OERICkFRSURBUUFCbzRHTk1JR0tNQTRHQTFVZER3RUIvd1FFQXdJRm9EQWRCZ05WSFNVRUZqQVVCZ2dyQmdFRkJRY0QKQVFZSUt3WUJCUVVIQXdJd0RBWURWUjBUQVFIL0JBSXdBREFmQmdOVkhTTUVHREFXZ0JUR1BpbE1WVG1sS28xVQpCcXdhRm5QK0JkMzgvREFxQmdOVkhSRUVJekFoZ2g4cUxtUmxabUYxYkhRdWFIVmlZbXhsTFdkeWNHTXVZMmxzCmFYVnRMbWx2TUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFBa2VKSnRTWHM5cFhmbFJDQXg1TU9Sc1FhKzJUcmoKcTlBMVlKYzhGWGZmMGFVMVhEbFFSbVZKT2c1d0JHcUZJbkdIYkZaUlNDR1BERFRlWDlVdm5idnBzMHRxamNpRwpyZ1cyNnVmWk9iQjRnNkdLN1hPdkJmZHNyQUZtQzZ1YVo4MFZRSkM1SXdnS2htK0RZVUkxdWprN0pqTEQxVW5WCkcyQ2hweTVYSTJFZ09lcTREdVJSQTh3cjFKQUNiSFk5T1MrMS9lY3plK2hSaGVhb0lSZ3Z2U3pYL3BsMWZCc2cKQUFNVHJNeHUrVGhnZnR3c2ppUXlGQWVZUmRaaUdFa0VVWnU5RFByd1BXR0pMbWdhc3ZKaVp0cE9VZHpoZWJMSgpnVUFlY24xSVQvWmJDVUZPd1JBM0lPSForL012Q2FIUExQQUh0aUNFYUMzSDVyN3daemhWQ2JnMAotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
		"tls.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBMWRwb0NiMytZU2kzdmorb3o1UUdibVhwb3kyTTlnZnF0cko1NEFvUGh5eFNiS2MvCmFVbkY4UlZ2ajNLVTQ5OXY5cjZsbS9UclFsNXFCcW1HbTJ5VVdNMXdtc3FMWGJqTXN3U2lxZy9KQnRKbTM1cWcKWGs4YXNJSGo0UFNodGI4eDNSOFFVSWdGYllubXNrUmpKOHZMM2svallmM3hTVWRray9UNHZQT1Vrd0NDWklyMApXY2k2dmtPcVZNRmF3YlpWMDJWcGQzRWR4bUVpVkdGZ1UzeTZxU2xyREVYOUlhcVVXYnFLQ1k0amJiRkVlditkCndzbUg2QXl5RzBmd0RUOE5aSno2WHA1V0ttODJSdk5ZUkxVWEY1QjduSzcxVWROeXczYVJnWUZiR3JXWXB1U2UKQWxLL25waTN2MEVQMndWNzJCTDJuVXhYS2g4YjZFN3d4OERIQVFJREFRQUJBb0lCQUFWZWQwSDJXNHg2S3BuTAp6SnZRakRSSm1mcnJMZml2MUhKYml3Q0hWQ0k1U0VUNjBuWmM0Q3U0TlcyeEsyQ0l0NjJHMWc3VE1IUmhQVEYzCllGNG0xTmNoYWtneW1WcmtKTHlDVzJpZ1hwUk5wRUJOS0NWU0FGb3AycXduVENlTldpM0NaY1VWMHlnUHdDTmQKNE96cStvNTFiRUNsc09EOWVqNldOZ2Y5YUEra05maFJad0pJTnJ4SXROSDlhN0ZJZU9XVENwcktGbE90bDlHTQpoRXJlUXdTTzFvYldSeEJxa1Jqb3lKSk4vVnAwUlpKRyszL3p1SGNLMEdJV1ozclRhQ0h5RVFLVDZDSXJ4NTNDCjQzSk1tNkNSNERrblE4TFBuN0RueitoTzBjRVhSMkkwRGFPL1NjQXJWaG5GaDJOd2krOXg5TUpFcU4rTXFTdGEKTjJzc3RDa0NnWUVBMTh0T1hsdHVBem9zS3NQaVUyb0trOFVlOStlQnZ4SlZXQ1Y1bnloemNXMktqaDVLU2NaVgpVdzlHRTVqVHl5Z2xwVC9pMWdBc3JWdW9MaHpqRk1YRGx4OGM0N2oyNTdvUW5LclQ1UmxLTmNLZ3MxVmE4NkNqClErQ1JiRXAzaDRva0VRdFJ6U3cyMmpyODhFdXUxU1VOZTUvNzdGWE4vdmhGU0pITVFKekdGcGtDZ1lFQS9iS0YKSXRsM0F2bndaQVFMM2kxaVFQZ1lGdXQ4NnNuRFUwck04THpMUTJNemZvN1ZPajJUY3ZkRjR2ZnNqanI4SUpncQpOd2oyWGs5SDlSb1FOTmVyMnpGckEyUGZjdkJhbG4zaE9LMm53K3JpUFZDYllGWURLTjlHOWhlWUJoc1RRVDc0ClE0NFFUaHN3T2Q2T2MyMXFxMEFGdlBuRlR6SksrME40QWZjd1BLa0NnWUJINmFpa0tUUHdQMktZbmM2K25ZZ0kKMXBnTFpVc0hzY1JmSzUzc1BENjhmaFMrWjdtNS9DNVREN1A2cytOZ3dIQkxNWThXWWRpQnJSbk94REdvcW44VAp6WHFES1JDZkNKS2dvdzBhTytOUEp4MEdwbHM0OVQ5elQxTW5FMm5oOFZjemx1SWJ6YkE1Nlk2QlJiZHRzSHRkCngyTGN6M3RtakxZS0NReFlPK2FIZ1FLQmdRREJReTZpOXJEdjVvRVhYL0craGlvMFBncno0dDdkYVdoUDJrcTMKRmN0dWdYS245WjAvNmNxYXFQNW5RZURHRk84ZTBXeFBVcGVFRHJkTlkxWjNPdGpqZVFrQm95S0V4ODdxbCtocgpxZmFFakRsZTVqb0hNRjdsMHZtVzNUQmxibGpEdW5tYjFPeGM0OTlnSmtlMGJPVDJvaVg4NlBWRE9KZmdRMngzCmF0d25TUUtCZ1FDYTFrNFg1Vm12MlhWd2l2c2pFSDlrUWczeXhLODBWVEczU3J6WUdXQ1YwTHRNenMzWVNOeSsKNU5lM0UxbEs3ZEQzUXNmN0NSSkZkK3VacWNXK1FVOExmZllDRURlb0xYSFhlQVY4bmduZUw0RGt2WUxUOEZNVgptWFZLbzY2UlQrL0R1RXhENHB0azVra1pobGpLYldaQm9RS0Q2OWhFQml1ZDR2djhtSUVrNmc9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="
	}
}
