#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 12.3/Dockerfile -t cimg/mariadb:12.3.4 -t cimg/mariadb:12.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.8/Dockerfile -t cimg/mariadb:11.8.10 -t cimg/mariadb:11.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.4/Dockerfile -t cimg/mariadb:11.4.14 -t cimg/mariadb:11.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.20 -t cimg/mariadb:10.11 --push .
