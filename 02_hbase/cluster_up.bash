#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting HBase (local cluster)..."
docker-compose -f docker-images/docker-compose-distributed-local.yml up --detach

# Connect to HBase shell
>&2 echo "To connect to the shell: /opt/hbase-1.2.6/bin/hbase shell"
>&2 echo "To access scripts: /tmp/scripts/"
docker exec -it hbase-master /bin/bash
