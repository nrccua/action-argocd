#!/bin/bash
NOW="$(date)"
argocd APP patch-resource $2 --kind Deployment  --patch "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"lastUpdate\":\"$NOW\", \"gitBranch\":\"$COMMIT_ID\", \"commitId\":\"$BRANCH\"}}}}}" --auth-token $TOKEN

