#!/bin/sh
set -e

# docker build --no-cache --rm -t martinezko/alpine-meteor:latest .
docker build --rm -t martinezko/alpine-meteor:latest .
docker tag martinezko/alpine-meteor:latest martinezko/alpine-meteor:latest
docker push martinezko/alpine-meteor:latest
