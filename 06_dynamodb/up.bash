#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "${SCRIPT_DIR}"

>&2 echo "Starting DynamoDB (local)..."
docker network create -d bridge --subnet 173.106.0.0/24 dynamo_net

docker build -t aws-cli:1.16.173 ./aws_cli
docker compose up --detach

>&2 echo "Opening dynamo-admin at 'http://localhost:8086'"

>&2 echo "Connecting to the CLI..."
>&2 echo "All Dynamo commands need the following appended: --endpoint-url http://db:8000"
docker run \
    -it \
    --name 7dbs_dynamo_cli \
    --network dynamo_net \
    -e "AWS_ACCESS_KEY_ID=dummy" \
    -e "AWS_SECRET_ACCESS_KEY=dummy" \
    -e "AWS_DEFAULT_REGION=eu-west-1" \
    -e "AWS_DEFAULT_OUTPUT=json" \
    aws-cli:1.16.173 \
    sh
