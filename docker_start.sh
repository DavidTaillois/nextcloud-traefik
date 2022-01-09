#!/usr/bin/env bash

docker pull collabora/code:latest
docker pull nextcloud:latest
docker pull mariadb:latest
docker pull traefik:latest

docker-compose -f traefik/docker-compose.yaml up -d --build
docker-compose -f nextcloud/docker-compose.yaml up -d --build
