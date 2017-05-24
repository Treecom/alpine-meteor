#!/bin/sh
set -e

# alpine graphicsmagick don't work at now!
apk add --update graphicsmagick --repository http://dl-3.alpinelinux.org/alpine/edge/community/

sh $METEORD_DIR/clean-soft.sh