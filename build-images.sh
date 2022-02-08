#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.6  -t cimg/mariadb:10.6 .
docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.14  -t cimg/mariadb:10.5 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.23  -t cimg/mariadb:10.4 .
docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.33  -t cimg/mariadb:10.3 .
