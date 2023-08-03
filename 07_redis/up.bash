#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting Redis..."
docker compose up --detach

>&2 echo "Opening rebrow (for visual representation) at 'http://localhost:8087'"

>&2 echo "Connecting to the CLI..."

docker compose exec db redis-cli
