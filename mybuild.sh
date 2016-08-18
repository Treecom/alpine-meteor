#!/bin/sh

set -e

docker build --rm -t martinez/meteor-apline:binbuild .
docker tag martinez/meteor-apline:binbuild docker-registry.treecom.net:5000/martinez/meteor-apline:binbuild
docker push docker-registry.treecom.net:5000/martinez/meteor-apline:binbuild

