#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting PostgreSQL..."
docker compose up --detach

>&2 echo "Connecting to the CLI as postgres..."
docker exec -it 7dbs_postgres_db psql -U postgres -W --dbname=7dbs
