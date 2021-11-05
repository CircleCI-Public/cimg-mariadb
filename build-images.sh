#!/usr/bin/env bash

docker build --file 10.6/Dockerfile -t cimg/mariadb:10.6.4  -t cimg/mariadb:10.6 .
docker build --file 10.5/Dockerfile -t cimg/mariadb:10.5.12  -t cimg/mariadb:10.5 .
docker build --file 10.4/Dockerfile -t cimg/mariadb:10.4.21  -t cimg/mariadb:10.4 .
docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.31  -t cimg/mariadb:10.3 .
docker build --file 10.2/Dockerfile -t cimg/mariadb:10.2.40  -t cimg/mariadb:10.2 .
