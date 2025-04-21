#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.7/Dockerfile -t cimg/mariadb:11.7.1 -t cimg/mariadb:11.7 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.6/Dockerfile -t cimg/mariadb:11.6.2 -t cimg/mariadb:11.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.4/Dockerfile -t cimg/mariadb:11.4.4 -t cimg/mariadb:11.4 --push .
