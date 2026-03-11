#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.3/Dockerfile -t cimg/mariadb:12.3.1 -t cimg/mariadb:12.3 --push .
