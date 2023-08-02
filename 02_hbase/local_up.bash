#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting HBase (local standalone)..."
docker-compose -f docker-images/docker-compose-standalone.yml up --detach

# Connect to HBase shell
docker exec -it hbase /opt/hbase-1.2.6/bin/hbase shell