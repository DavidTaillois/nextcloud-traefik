#!/usr/bin/env bash

docker-compose  -f ./traefik/docker-compose.yaml down
docker-compose  -f ./nextcloud/docker-compose.yaml down