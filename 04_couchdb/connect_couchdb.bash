#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

#docker exec -it 7dbs_couch_db bash

docker compose  --file docker-compose-linux.yml exec couch bash
