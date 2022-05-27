#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 10.3/Dockerfile -t cimg/mariadb:10.3.35  -t cimg/mariadb:10.3 .
