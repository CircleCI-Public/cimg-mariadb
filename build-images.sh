#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 11.0/Dockerfile -t cimg/mariadb:11.0.1 -t cimg/mariadb:11.0 --platform linux/amd64 .
