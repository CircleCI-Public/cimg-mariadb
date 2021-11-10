#!/usr/bin/env bash

docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.5  -t cimg/mariadb:10.6 .
docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.13  -t cimg/mariadb:10.5 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.22  -t cimg/mariadb:10.4 .
docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.32  -t cimg/mariadb:10.3 .
