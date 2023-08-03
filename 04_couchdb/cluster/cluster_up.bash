#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

mkdir -p couch1data
mkdir -p couch2data
mkdir -p couch3data

docker build  --file couch-cookie/Dockerfile --tag couch_cluster:latest couch-cookie
docker compose up -d

sleep 15
./setup_clustering.sh
