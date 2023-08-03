#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting CouchDB..."
docker compose --file docker-compose-linux.yml up --detach

>&2 echo "Opening GUI (Fauxton) at 'http://localhost:8084/_utils/#login'"
