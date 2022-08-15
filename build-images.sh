#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.10/Dockerfile -t cimg/mariadb:10.10.1  -t cimg/mariadb:10.10 .
docker build --file 10.9/Dockerfile -t cimg/mariadb:10.9.2  -t cimg/mariadb:10.9 .
docker build --file 10.8/Dockerfile -t cimg/mariadb:10.8.4  -t cimg/mariadb:10.8 .
docker build --file 10.7/Dockerfile -t cimg/mariadb:10.7.5  -t cimg/mariadb:10.7 .
docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.9  -t cimg/mariadb:10.6 .
docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.17  -t cimg/mariadb:10.5 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.26  -t cimg/mariadb:10.4 .
docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.36  -t cimg/mariadb:10.3 .
