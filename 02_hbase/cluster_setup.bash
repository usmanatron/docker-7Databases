#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

docker volume create --name=hadoop_namenode
docker volume create --name=hadoop_datanode
docker volume create --name=hadoop_historyserver