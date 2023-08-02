#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

docker volume rm hadoop_namenode
docker volume rm hadoop_datanode
docker volume rm hadoop_historyserver