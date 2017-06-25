#!/bin/sh
set -e

TAG="latest"
# TAG="testing"

# docker build --no-cache --rm -t martinezko/alpine-meteor:$TAG .
docker build --rm -t martinezko/alpine-meteor:$TAG .
docker tag martinezko/alpine-meteor:$TAG martinezko/alpine-meteor:$TAG
docker push martinezko/alpine-meteor:$TAG
