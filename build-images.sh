#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.10/Dockerfile -t cimg/mariadb:10.10.2 -t cimg/mariadb:10.10 .
docker build --file 10.11/Dockerfile -t cimg/mariadb:10.11.1 -t cimg/mariadb:10.11 .
