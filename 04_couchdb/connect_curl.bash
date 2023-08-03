#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

# docker run -it --entrypoint sh --network 04_couchdb_default 04_couchdb_firstrun
docker compose --file docker-compose-linux.yml run --entrypoint sh firstrun
