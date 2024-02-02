package cluster

import (
	rbacv1 "k8s.io/api/rbac/v1"
)

#Role: rbacv1.#Role & {
	#config: #Config
	#role:   string

	let roleConfig = #config[#role]
	let roleAlias = _constants.componentRoles[#role]

	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "Role"
	metadata:   roleConfig.metadata

	if roleAlias == _constants.componentRoles.controlPlane {
		rules: [
			{
				apiGroups: [
					"",
				]
				resourceNames: [
					"\(#config.clusterName)-\(_constants.secrets.kubeconfig)",
					"\(#config.clusterName)-\(_constants.secrets.joinToken)",
				]
				resources: [
					"secrets",
				]
				verbs: [
					"get",
					"patch",
				]
			},
		]
	}
}

#RoleBinding: rbacv1.#RoleBinding & {
	#config: #Config
	#role:   string

	let roleConfig = #config[#role]

	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata:   roleConfig.metadata

	roleRef: {
		apiGroup: "rbac.authorization.k8s.io"
		kind:     "Role"
		name:     metadata.name
	}
	subjects: [
		{
			kind: "ServiceAccount"
			name: metadata.name
		}
	]
}
