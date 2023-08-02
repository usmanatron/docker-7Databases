#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

docker-compose -f cluster/mongo-cluster-docker/docker-compose.1.yml -f cluster/mongo-cluster-docker/docker-compose.2.yml  -f cluster/mongo-cluster-docker/docker-compose.cnf.yml -f cluster/mongo-cluster-docker/docker-compose.shard.yml -f cluster/docker-compose.gui.yml up --detach

# No authentication needed
>&2 echo "Connecting to the CLI..."
sleep 5
docker exec -it mongo-router mongo
