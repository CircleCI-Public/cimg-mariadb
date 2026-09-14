#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.1/Dockerfile -t cimg/mariadb:13.1.1 -t cimg/mariadb:13.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 13.0/Dockerfile -t cimg/mariadb:13.0.2 -t cimg/mariadb:13.0 --push .
