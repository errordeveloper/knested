package cilium

"cilium-templates-cilium-ca-secret": {
	// Source: cilium/templates/cilium-ca-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "cilium-ca"
		namespace: "kube-system"
	}
	data: {
		"ca.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURGRENDQWZ5Z0F3SUJBZ0lSQVBnSlI0K2QyWThsdEFpTU96cGU0ZGt3RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkxTURVeU1URTRORGN6TjFvWERUSTRNRFV5TURFNApORGN6TjFvd0ZERVNNQkFHQTFVRUF4TUpRMmxzYVhWdElFTkJNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DCkFROEFNSUlCQ2dLQ0FRRUE2OG05eUFIcVdzQi8xYUJVMy8wOWoxVzVOQkQ0eUdZdVM4TWhkT2lyMGRtMGNCTzkKeEJxU3FDcFh4bDlJOE5VeU1oSkxkUXc1RGR0akE0S0U0QmFySFlZYmpGLzVOOTl4MzJHK3VwRmhMREU5MEtIZwphUGxLbzhmZjl0VG1OQ2oxc0luZG5PQWpGUHE0VHduOE01Nk9HS3NUcnpKWVdwcEp5dDJvWTV5NjdESUFrbXUvCnR5SUlVOXQyZ1J3aGUydkt5eWQrM3NCOTNyaVpMQzh4ZUkyaWlCdkNib0JCSDFCa2IzTFRQUk42YS9lS1lHUXkKOWsvdFRNakFHVXh2eHptM1hSL0Z4ZzErdGswOVJCNjJ2NG42aHU2WGQ0b01lM25EM2dXc05yaTNiNHhFVUM5bAo4T2FkQmpWQnZkd0ZGSXN2Zis0cHhrK0UyeXNPL0lyTDhEUEM4d0lEQVFBQm8yRXdYekFPQmdOVkhROEJBZjhFCkJBTUNBcVF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdFR0NDc0dBUVVGQndNQ01BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdIUVlEVlIwT0JCWUVGTHo1Q2JuUVowZ0NWRUJCN29TTFloVWtrWU9hTUEwR0NTcUdTSWIzRFFFQgpDd1VBQTRJQkFRRGk2Ui9OR3lnbm1VT0tmSGdmNXkwTnJ5bHlKZjhaeHZRYzRpZ1R4Q1NNR1U4Q3M0NEdzdGFYCjAzQmdkRlcvZ21CUElRdkRTOUZKNlhoWmNmZEoxZVlHeFhoSUk4VG1xMmd0a29TTWMyeDF3M1RwQ2cyNkI1NisKRmJrMjBsSEkrWFRJaExyQko0RTBRRWZNYkdndVl6elRLUDFlVkNpaUNMWitmQXZ3WFhCbnJQUVQ5cGxiUVQ2NwpqZGw1aUMvOHpIZ0x6MjRkNiszdG1KTnUrVTEvdFlLTXB1Tnp5cDBFN3U5UmZoc3FnV05ZVWhld0ZhVkxtcS9zCllHZWxtOGFZZEdVU3pMbWRHeTdEVWt3SjduZUt1S2NIZHM3b1pSOEc1YnBPL3VYWnBvQXhhOUpCOVNnd1RvaWYKY2dwRWhyQWdHbGNIOWpzVzRZbmlzeGZZSFR3L0RlbDgKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"ca.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb3dJQkFBS0NBUUVBNjhtOXlBSHFXc0IvMWFCVTMvMDlqMVc1TkJENHlHWXVTOE1oZE9pcjBkbTBjQk85CnhCcVNxQ3BYeGw5SThOVXlNaEpMZFF3NURkdGpBNEtFNEJhckhZWWJqRi81Tjk5eDMyRyt1cEZoTERFOTBLSGcKYVBsS284ZmY5dFRtTkNqMXNJbmRuT0FqRlBxNFR3bjhNNTZPR0tzVHJ6SllXcHBKeXQyb1k1eTY3RElBa211Lwp0eUlJVTl0MmdSd2hlMnZLeXlkKzNzQjkzcmlaTEM4eGVJMmlpQnZDYm9CQkgxQmtiM0xUUFJONmEvZUtZR1F5CjlrL3RUTWpBR1V4dnh6bTNYUi9GeGcxK3RrMDlSQjYydjRuNmh1NlhkNG9NZTNuRDNnV3NOcmkzYjR4RVVDOWwKOE9hZEJqVkJ2ZHdGRklzdmYrNHB4aytFMnlzTy9Jckw4RFBDOHdJREFRQUJBb0lCQUViUy91QUVmMFlLTzN2SwpJS1IxVjFmbUdtN2l5Qys5elpzeFBpdjFOYU1mbnh6cE9SK2VFYjVVbGEvKzhCUnpIWlEvdlkybmdiM0JUOUQrCmsvWVJxUTJCdW1Xa2NHSVJpbzFjT1dPbUJvZTFOTW1semhnS0Jac0RqeWovMHpRSXQ1L3pFVyt0UGF4d0VRdWcKeHJJa3BxOFBPQ2J3V3V6QUdubEdzbTFWWnlwSjJSd0xtUjlBYnFBcXVHV0Y0elpseGxuWTJNUkxzZ3RWRGx4Vwp1d1l2OXo5Q2hDOHZnKzZkUDFRT21TWjFSd3U4RnQ1cmIzYmxOWTNKbXJmL0ZTaEdUVUhLZXM2K1YwUHNnVGR1CmlQS3QxanBQQk5HK0dNdGJYb0VacHp2MFF4VGVRaTJaWVE1cHFmVHJsb1FzM3I0YXhsYktaQ25CNlMyc01oVmYKRUpFZzZSRUNnWUVBOU1OUmZDUFNKMWcwN2htbTFDM0swUHZOSTdOUjVja3BHTm1xeWtpV0JGWEpTcWRRTlFkcAp0akFzM1dJcDhLZGJpVXJKQjNURytSRVNTdHFFSHBieWordlB1TE9GcFNSNXZwYjNUdnhXT2x5bFk0Q04xQkVXClJmQSs5dER5OURkWDBmK0t6NW9JSEE0OUpSbEFjMmhUSXNPZDRRd21OZFlHWmZieVNPK0dRR01DZ1lFQTlwengKQ1p3Zk1yY0l4KzJNNVVONDg0Vk5nMEVRd3lEMUt2dFFlbGdVYXRIQ3BUZzdzUFRIdGhDK2dMcTZJVlhTaElwTQpTdTFUdFRHcUtZTWkvdGlSMVB5RjBzaUlmS3NueUJuQVRxZVFXMXZqYlpxVGpaOGpwZXl1aVE2c3lYZHRwVzVZCkxXVlFkUmFDZVZycHBpc0xpVDFqQVRHcjlZeE9uQUtPcVdCYjBERUNnWUFKU3NEMUxZYjA1MnhhL2E1UHI4MWIKVWJQZi94YkUybllzODFhQWgzRHFpVGN6RmxiOUxHTGUvOFUwUWwzRlBSVkVpUXBJdGk0M2xtWlRZU2hTNFBnawpicGRjTTdTSEtITld3UFJ5a3pIUzFXR1IvWGRrN2FFaTFwUU5XckZlaEJ0WlpaSW5mM2wvVnlzTEZZSlUzMGtJCnNOUjFqcmlFb3JOcmU0eUhLRkM0Y1FLQmdDYVQ3bkRlWjFMN3B2Zi9oU2JvSXllVkZzY05pcDI3cmg2SEtkTzUKcTVmNk1FVEFRell2Vkg1NnFCSmpJM0xMaGg4TnMxbVZQcDc5b2V6VWdzankvLzBkYzZIQmxQaExuZkdEZGIzWQpJSkRxRXUyMlhKYXU2bGl1YWE4dkNJQ0xtaTlpejVCcVpPZXNHY1Q2SDhyS3VRZEMveFhVdTEyeUVTbitqR3FhCmxFSkJBb0dCQUtwQ0JVV3FCeFQ5Y29yMXZwNnJ2SGFVMzlWcEtTZ1N0b2U5TTJ3MVFDbldOY1FnVm96TVRKWEwKNVd3SkxqM3dTN3Z1OEtwQnpENUl2b2tZY0dzdWpMNCtEUE43MjUzUUxZUEppMW5LMHlROHREeDkrRml3Um4wSwpVb0tueUxVRE1QVm11S1EwNWM3Q0Npa0swbVRldUIrNGg3c1pKbUg3RHloLy9IWWZPekp3Ci0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg=="
	}
}
"cilium-templates-cilium-configmap": {
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
"cilium-templates-cilium-secrets-namespace": {
	// Source: cilium/templates/cilium-secrets-namespace.yaml
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: {
		name: "cilium-secrets"
		labels: "app.kubernetes.io/part-of": "cilium"
		annotations: null
	}
}
"cilium-templates-cilium-agent-clusterrole": {
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
"cilium-templates-cilium-agent-clusterrolebinding": {
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
"cilium-templates-cilium-agent-daemonset": {
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
"cilium-templates-cilium-agent-role": {
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
"cilium-templates-cilium-agent-role": {
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
"cilium-templates-cilium-agent-rolebinding": {
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
"cilium-templates-cilium-agent-rolebinding": {
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
"cilium-templates-cilium-agent-serviceaccount": {
	// Source: cilium/templates/cilium-agent/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium"
		namespace: "kube-system"
	}
}
"cilium-templates-cilium-envoy-configmap": {
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
"cilium-templates-cilium-envoy-daemonset": {
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
"cilium-templates-cilium-envoy-service": {
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
"cilium-templates-cilium-envoy-serviceaccount": {
	// Source: cilium/templates/cilium-envoy/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-envoy"
		namespace: "kube-system"
	}
}
"cilium-templates-cilium-operator-clusterrole": {
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
"cilium-templates-cilium-operator-clusterrolebinding": {
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
"cilium-templates-cilium-operator-deployment": {
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
"cilium-templates-cilium-operator-role": {
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
"cilium-templates-cilium-operator-rolebinding": {
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
"cilium-templates-cilium-operator-serviceaccount": {
	// Source: cilium/templates/cilium-operator/serviceaccount.yaml
	apiVersion: "v1"
	kind:       "ServiceAccount"
	metadata: {
		name:      "cilium-operator"
		namespace: "kube-system"
	}
}
"cilium-templates-hubble-peer-service": {
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
"cilium-templates-hubble-tls-helm-server-secret": {
	// Source: cilium/templates/hubble/tls-helm/server-secret.yaml
	apiVersion: "v1"
	kind:       "Secret"
	metadata: {
		name:      "hubble-server-certs"
		namespace: "kube-system"
	}
	type: "kubernetes.io/tls"
	data: {
		"ca.crt":  "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURGRENDQWZ5Z0F3SUJBZ0lSQVBnSlI0K2QyWThsdEFpTU96cGU0ZGt3RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkxTURVeU1URTRORGN6TjFvWERUSTRNRFV5TURFNApORGN6TjFvd0ZERVNNQkFHQTFVRUF4TUpRMmxzYVhWdElFTkJNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DCkFROEFNSUlCQ2dLQ0FRRUE2OG05eUFIcVdzQi8xYUJVMy8wOWoxVzVOQkQ0eUdZdVM4TWhkT2lyMGRtMGNCTzkKeEJxU3FDcFh4bDlJOE5VeU1oSkxkUXc1RGR0akE0S0U0QmFySFlZYmpGLzVOOTl4MzJHK3VwRmhMREU5MEtIZwphUGxLbzhmZjl0VG1OQ2oxc0luZG5PQWpGUHE0VHduOE01Nk9HS3NUcnpKWVdwcEp5dDJvWTV5NjdESUFrbXUvCnR5SUlVOXQyZ1J3aGUydkt5eWQrM3NCOTNyaVpMQzh4ZUkyaWlCdkNib0JCSDFCa2IzTFRQUk42YS9lS1lHUXkKOWsvdFRNakFHVXh2eHptM1hSL0Z4ZzErdGswOVJCNjJ2NG42aHU2WGQ0b01lM25EM2dXc05yaTNiNHhFVUM5bAo4T2FkQmpWQnZkd0ZGSXN2Zis0cHhrK0UyeXNPL0lyTDhEUEM4d0lEQVFBQm8yRXdYekFPQmdOVkhROEJBZjhFCkJBTUNBcVF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdFR0NDc0dBUVVGQndNQ01BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdIUVlEVlIwT0JCWUVGTHo1Q2JuUVowZ0NWRUJCN29TTFloVWtrWU9hTUEwR0NTcUdTSWIzRFFFQgpDd1VBQTRJQkFRRGk2Ui9OR3lnbm1VT0tmSGdmNXkwTnJ5bHlKZjhaeHZRYzRpZ1R4Q1NNR1U4Q3M0NEdzdGFYCjAzQmdkRlcvZ21CUElRdkRTOUZKNlhoWmNmZEoxZVlHeFhoSUk4VG1xMmd0a29TTWMyeDF3M1RwQ2cyNkI1NisKRmJrMjBsSEkrWFRJaExyQko0RTBRRWZNYkdndVl6elRLUDFlVkNpaUNMWitmQXZ3WFhCbnJQUVQ5cGxiUVQ2NwpqZGw1aUMvOHpIZ0x6MjRkNiszdG1KTnUrVTEvdFlLTXB1Tnp5cDBFN3U5UmZoc3FnV05ZVWhld0ZhVkxtcS9zCllHZWxtOGFZZEdVU3pMbWRHeTdEVWt3SjduZUt1S2NIZHM3b1pSOEc1YnBPL3VYWnBvQXhhOUpCOVNnd1RvaWYKY2dwRWhyQWdHbGNIOWpzVzRZbmlzeGZZSFR3L0RlbDgKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"tls.crt": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURWekNDQWorZ0F3SUJBZ0lSQU90QkVYT0ZaQ3YwaFFwajloVGxpWW93RFFZSktvWklodmNOQVFFTEJRQXcKRkRFU01CQUdBMVVFQXhNSlEybHNhWFZ0SUVOQk1CNFhEVEkxTURVeU1URTRORGN6TjFvWERUSTJNRFV5TVRFNApORGN6TjFvd0tqRW9NQ1lHQTFVRUF3d2ZLaTVrWldaaGRXeDBMbWgxWW1Kc1pTMW5jbkJqTG1OcGJHbDFiUzVwCmJ6Q0NBU0l3RFFZSktvWklodmNOQVFFQkJRQURnZ0VQQURDQ0FRb0NnZ0VCQU1iN3YyWjI5RjRJbGdXWHI5a1oKSjBQUXdON2ZtU21JZUFmN2ZVRlZaQjYrWXVlVE1YNUJUN01IbUt0WURUODh0TVY0cEIycnVWeDNUUmI5ai82NApGUmgxVGR4bkc3Ykp0OXNYb0YzUEZZbDQ1SjljYzNyMmF2VVgwUW01WVhnR1BicUIvQnkrNFJadEErSGJqN09BClJhclB1aWRLRk12Wm9hejlsVkt2aWY0U0YwWmxIYzNCVlVwZHFnUWdxYlFFNmdkTmNBUFpxYUg2ZlJhVWFmSzIKV2gyYll0blhobGZKUU9aU25qWUYxOTNUMSt5SE0xMy9XYitBMG04K2hmazJkNEhqNk9iQThlZkNlTWhUL0ozVAo3ZmF5dmtwdzRPQ0Y4akpNM3UyRTZxbmVLajJXRnBXWjVjaVZIK1FIaVZPVWlCaWNUQklENDU4Y1pMMW5TMnRQCnpMRUNBd0VBQWFPQmpUQ0JpakFPQmdOVkhROEJBZjhFQkFNQ0JhQXdIUVlEVlIwbEJCWXdGQVlJS3dZQkJRVUgKQXdFR0NDc0dBUVVGQndNQ01Bd0dBMVVkRXdFQi93UUNNQUF3SHdZRFZSMGpCQmd3Rm9BVXZQa0p1ZEJuU0FKVQpRRUh1aEl0aUZTU1JnNW93S2dZRFZSMFJCQ013SVlJZktpNWtaV1poZFd4MExtaDFZbUpzWlMxbmNuQmpMbU5wCmJHbDFiUzVwYnpBTkJna3Foa2lHOXcwQkFRc0ZBQU9DQVFFQWRqaEVjdUtSbWRPeldXOXBvMzNTR2dNaXkwN3gKZkFFQXNjWTJwVktrUDdzRGZPWktXVzNyR0Q4YjlIV2JjbmxzUFpja3k1S1lON3ByczFHUFg5bkZOb1h0aCtJaApRSU9wNmpJSFBLRE1pT3pJb2lOWU1FWEJYcTIwY3RDdmwrNUYxZFp1QmsvTlRIemN3eVk0YUpram1yNlpQdlVJCmxNcmFmR0N5LytsenNSVlQrNzlWNlNIZFdTOTlhUHZXdVpOT25SQkFtblQySkk0SmRpdnpYNWhtRi94aE1XbmcKYjcyRVcvRjFueitWNmZ6ZXJ3Y1pKcHV3SnRoL245NlBaQnBTS1I3TU1TUDZRaGx6cmF5Y2tsMmRyNGtBTzEyeApPTGlZcU5RRngraUZHSmpCZ1ZBMlVaNkU0TUEwM25iajkxSTdSQTVmYVg3Y2lSZjMrYnFsTDZubmZ3PT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
		"tls.key": "LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcFFJQkFBS0NBUUVBeHZ1L1puYjBYZ2lXQlpldjJSa25ROURBM3QrWktZaDRCL3Q5UVZWa0hyNWk1NU14CmZrRlBzd2VZcTFnTlB6eTB4WGlrSGF1NVhIZE5GdjJQL3JnVkdIVk4zR2NidHNtMzJ4ZWdYYzhWaVhqa24xeHoKZXZacTlSZlJDYmxoZUFZOXVvSDhITDdoRm0wRDRkdVBzNEJGcXMrNkowb1V5OW1oclAyVlVxK0ovaElYUm1VZAp6Y0ZWU2wycUJDQ3B0QVRxQjAxd0E5bXBvZnA5RnBScDhyWmFIWnRpMmRlR1Y4bEE1bEtlTmdYWDNkUFg3SWN6ClhmOVp2NERTYno2RitUWjNnZVBvNXNEeDU4SjR5RlA4bmRQdDlySytTbkRnNElYeU1remU3WVRxcWQ0cVBaWVcKbFpubHlKVWY1QWVKVTVTSUdKeE1FZ1Bqbnh4a3ZXZExhMC9Nc1FJREFRQUJBb0lCQUJkZGRVNmpWak42ZjU4OQpmZzBZaW9kSWluVkJQVHRteG0xdGh2bzJmREN0KzNBazFSRjF1dFdUWlVadGF2VExmSkNaaDIvaWU3d1RXQzZFCmJMV2t5UGxid041S0R6T0tBVGhOVUd2amhxeGpVVGt6UW00a1pFL09VYUg2TGl0SlZGTkRzeVp1OVlCTUljSVMKSlpBVzFsZGwxLzZJRU9RVTlJcWJKajhVMUxmTUZBU0NJaGdCQWJoTzJNT2JIMXRwSnVSbmt1V2FBU3p5WEN2TApwd3VxSXdjeXhibVBqY2NYUGlVV2tXRzBFb2xTTVBFNFBuMVRIVmp2NGdSUlhLNUNraUJpOGtnZlQrTjRUbWNCCkM5eER4ck9wR0RibnBCLzRZTnhzR252THdKaXpLTzlhdXlQVWJxWTJhNHlOVC92b2FxUC9VZXNMa1ptWHl0d1UKblcya0g0a0NnWUVBM3pObFB5ZnBYcnp1NEJhVzFBVjhoMnJIT3lwd1RhMXlEcmJjRkkrU1Y0M3IydzlGT1RHcgozbnN5OGU4cG4yd2NKS3lERk8raDI5VHl6eWhhejVxN1RIclc2VlFMMGRSNWo3UkJpOWg4bDIyQzRIV2JQdEtYCjRYYXExOUtUeWppL1IwRkQwWWZoSTdjZTZwdXdIQWdqTlhxUVU1RnpWT09nWjdKYnNUMGt3d1VDZ1lFQTVEbFIKTDM4ckZuNkN1cjVTSWJYbW9vZlJNZTdCVGtqUHlJRGtidVJTNksrSExseFZyZGxSc0F6OWJTbHIwcHB4eUZQQQozVUttWTVXVjBMU2pnamhpQ2d1bjNRNmUrRHJNYnIrUG0reGtJVWRnWi9QZ2JVcGYzK2VnN3QvSmFSU0lSUHpECjB2Y1U1L2hnY1g3TmlaQktWVWdTVTg1R1lyL0RPc1hWK2hRSktyMENnWUVBdkx3Zi9BU0t3TEp3SjRyU1pWeHkKVGF2TDVrcmZoYitKZDhuR1ZaaUZ2WVZqait2Y3RCMDlZTGE2Z0h1a3JZcmtUVnFXeVFoTXpLL0gxY1lnNi9YQwpOVXlXRjkwYTFZYWVlQmFMYW01WUJFLzA0RXB5U1BBWXYrenhUK2hmVWhza0cyT2pyalVBK290cEdDY29CcndXCjBhemZCOXN4TS9INi9GU0VWbDRHak9VQ2dZRUFwRjhIc3Q2elNNc3JHcFp5anViMHlrQnBrYjMwcVk1VllJSTgKaEFXY0ZRdytuMHhQUlJ2TThyQVlZbU8velhvQTB4aEhRdFI3QkNRN040cXliTnB3K2UwMUpFZ2doSVhNc1VMMAppb2R5QW1ubTdGZkFYdFovUU1NUnJKbXU5U2lka0pvLzY1U2JFUXRaWXNUQ0FmN1RHcU1DMkNzcmxIbXFnWXoxCk5OenpVVDBDZ1lFQWxHYUNqdTJUQmZVbGQwZHphV05nQkdacHNFcERWb04rQXVSQ21xZk16c0pndHdtR0EwVGEKdnBJZldibDMxZVF2UXVia2pFY3pWb0NKQ1RDN2RVUFNvSStsZnJZemZCeEVhcHY4Nm81cDB1N3ZRYUJPcm1FbApUTkhjN2pKY0xZMi9tYzJaY2YrVkM5NUNsdjNnQnNKNisrb1NFNmVid1d2bDhmRnVKRWYwU3E0PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo="
	}
}
