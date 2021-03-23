#!/bin/bash +x
NOW="$(date)"
argocd app patch-resource $2 --kind Deployment  --patch "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"lastUpdate\":\"$NOW\", \"gitBranch\":\"$4\", \"commitId\":\"$3\"}}}}}" --auth-token $1

