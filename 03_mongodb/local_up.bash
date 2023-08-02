#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting MongoDB..."
docker-compose up --detach

>&2 echo "Opening GUI (mongo-express)"

>&2 echo "Connecting to the CLI..."
sleep 5
>&2 echo "Username: mongo; Password: gonmo"
docker exec -it 7dbs_mongo_db mongo --username mongo --password gonmo
