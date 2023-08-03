#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

# Because the files created inside the container may have have a different
# user id than the user outside the container, the user outside the container
# cannot delete the files in data and logs without elevated privileges.
# Instead, we again run the container, and delete from within the container
# with the same user id that created them.
docker compose --file docker-compose-linux.yml run --entrypoint rm neo -rf /data/* /logs/*
rm -rf data logs
