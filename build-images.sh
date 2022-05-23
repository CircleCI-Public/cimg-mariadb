#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.16  -t cimg/mariadb:10.5 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.25  -t cimg/mariadb:10.4 .
docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.8  -t cimg/mariadb:10.6 .
docker build --file 10.7/Dockerfile -t cimg/mariadb:10.7.4  -t cimg/mariadb:10.7 .
docker build --file 10.8/Dockerfile -t cimg/mariadb:10.8.3  -t cimg/mariadb:10.8 .
