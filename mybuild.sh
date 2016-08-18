#!/bin/sh

set -e

docker build --rm -t martinez/meteor-apline:binbuild .
docker tag martinez/meteor-alpine:latest martinez/meteor-alpine:latest
docker push martinez/meteor-alpine:latest

