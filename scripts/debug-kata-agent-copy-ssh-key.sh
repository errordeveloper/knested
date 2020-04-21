#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

# kubectl cp is slow on kata, so we have this
# it depends on kata agent image being built with
# an SSH key (see `images/kata-agent-ubuntu/Makefile`)

kubectl exec -ti deployment/test-cluster-master bash -- -c "
cat > id_rsa << EOF
$(cat ~/.ssh/id_rsa)
EOF
chmod 0600 id_rsa
"
