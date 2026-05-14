#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.8/Dockerfile -t cimg/mariadb:11.8.7 -t cimg/mariadb:11.8 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.4/Dockerfile -t cimg/mariadb:11.4.11 -t cimg/mariadb:11.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.17 -t cimg/mariadb:10.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.6/Dockerfile -t cimg/mariadb:10.6.26 -t cimg/mariadb:10.6 --push .
