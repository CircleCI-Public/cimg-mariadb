#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.10  -t cimg/mariadb:10.6 .
docker build --file 10.7/Dockerfile -t cimg/mariadb:10.7.6  -t cimg/mariadb:10.7 .
docker build --file 10.8/Dockerfile -t cimg/mariadb:10.8.5  -t cimg/mariadb:10.8 .
docker build --file 10.9/Dockerfile -t cimg/mariadb:10.9.3  -t cimg/mariadb:10.9 .
