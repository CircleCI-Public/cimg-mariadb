#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.4/Dockerfile -t cimg/mariadb:11.4.6 -t cimg/mariadb:11.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.12 -t cimg/mariadb:10.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.6/Dockerfile -t cimg/mariadb:10.6.22 -t cimg/mariadb:10.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.5/Dockerfile -t cimg/mariadb:10.5.29 -t cimg/mariadb:10.5 --push .
