#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.5/Dockerfile -t cimg/mariadb:11.5.2 -t cimg/mariadb:11.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.6/Dockerfile -t cimg/mariadb:11.6.2 -t cimg/mariadb:11.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.7/Dockerfile -t cimg/mariadb:11.7 -t cimg/mariadb:11.7 --push .
