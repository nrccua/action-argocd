#!/bin/bash
NOW="$(date '+%Y-%m-%d_%H-%M-%S_%Z')"
argocd app patch-resource $APP --server $SERVER --kind Deployment  --patch "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"lastUpdate\":\"$NOW\", \"gitBranch\":\"$COMMIT_ID\", \"commitId\":\"$BRANCH\"}}}}}" --auth-token $TOKEN --grpc-web

