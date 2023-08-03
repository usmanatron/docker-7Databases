#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting Redis Cluster..."
docker network create -d bridge --subnet 173.17.0.0/24 redis_net
docker compose up --detach

>&2 echo "Attempting to Cluster Redis instances..."
docker compose -f docker-compose-cluster.yml up

>&2 echo "Opening rebrow (for visual representation) at 'http://localhost:8097'"

>&2 echo "Connecting to the CLI..."
# docker exec -it 7dbs_redis_db redis-cli
