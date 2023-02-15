#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.38 -t cimg/mariadb:10.3 --platform linux/amd64 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.28 -t cimg/mariadb:10.4 --platform linux/amd64 .
docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.19 -t cimg/mariadb:10.5 --platform linux/amd64 .
docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.12 -t cimg/mariadb:10.6 --platform linux/amd64 .
docker build --file 10.7/Dockerfile -t cimg/mariadb:10.7.8 -t cimg/mariadb:10.7 --platform linux/amd64 .
docker build --file 10.8/Dockerfile -t cimg/mariadb:10.8.7 -t cimg/mariadb:10.8 --platform linux/amd64 .
docker build --file 10.9/Dockerfile -t cimg/mariadb:10.9.5 -t cimg/mariadb:10.9 --platform linux/amd64 .
docker build --file 10.10/Dockerfile -t cimg/mariadb:10.10.3 -t cimg/mariadb:10.10 --platform linux/amd64 .
