#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.4/Dockerfile -t cimg/mariadb:10.4.32 -t cimg/mariadb:10.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.4/Dockerfile -t cimg/mariadb:10.4.33 -t cimg/mariadb:10.4 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.5/Dockerfile -t cimg/mariadb:10.5.23 -t cimg/mariadb:10.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.5/Dockerfile -t cimg/mariadb:10.5.24 -t cimg/mariadb:10.5 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.6/Dockerfile -t cimg/mariadb:10.6.16 -t cimg/mariadb:10.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.6/Dockerfile -t cimg/mariadb:10.6.17 -t cimg/mariadb:10.6 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.10/Dockerfile -t cimg/mariadb:10.10.7 -t cimg/mariadb:10.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.6 -t cimg/mariadb:10.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 10.11/Dockerfile -t cimg/mariadb:10.11.7 -t cimg/mariadb:10.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.0/Dockerfile -t cimg/mariadb:11.0.4 -t cimg/mariadb:11.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.0/Dockerfile -t cimg/mariadb:11.0.5 -t cimg/mariadb:11.0 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.1/Dockerfile -t cimg/mariadb:11.1.3 -t cimg/mariadb:11.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.1/Dockerfile -t cimg/mariadb:11.1.4 -t cimg/mariadb:11.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.2/Dockerfile -t cimg/mariadb:11.2.2 -t cimg/mariadb:11.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.2/Dockerfile -t cimg/mariadb:11.2.3 -t cimg/mariadb:11.2 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.3/Dockerfile -t cimg/mariadb:11.3.1 -t cimg/mariadb:11.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.3/Dockerfile -t cimg/mariadb:11.3.2 -t cimg/mariadb:11.3 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 11.4/Dockerfile -t cimg/mariadb:11.4.1 -t cimg/mariadb:11.4 --push .
