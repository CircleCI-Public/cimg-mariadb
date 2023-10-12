#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.2/Dockerfile -t cimg/mariadb:11.2.1 -t cimg/mariadb:11.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.1/Dockerfile -t cimg/mariadb:11.1.2 -t cimg/mariadb:11.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.0/Dockerfile -t cimg/mariadb:11.0.3 -t cimg/mariadb:11.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.5 -t cimg/mariadb:10.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.10/Dockerfile -t cimg/mariadb:10.10.6 -t cimg/mariadb:10.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.9/Dockerfile -t cimg/mariadb:10.9.8 -t cimg/mariadb:10.9 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.6/Dockerfile -t cimg/mariadb:10.6.15 -t cimg/mariadb:10.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.4/Dockerfile -t cimg/mariadb:10.4.31 -t cimg/mariadb:10.4 --push .
