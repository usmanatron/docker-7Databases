#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

docker stop 7dbs_dynamo_cli
docker rm 7dbs_dynamo_cli
docker compose down
docker network rm dynamo_net
