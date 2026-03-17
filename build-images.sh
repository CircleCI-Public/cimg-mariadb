#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.8/Dockerfile -t cimg/mariadb:11.8.6 -t cimg/mariadb:11.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.0/Dockerfile -t cimg/mariadb:12.0.2 -t cimg/mariadb:12.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.1/Dockerfile -t cimg/mariadb:12.1.2 -t cimg/mariadb:12.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.2/Dockerfile -t cimg/mariadb:12.2.2 -t cimg/mariadb:12.2 --push .
