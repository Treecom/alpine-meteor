#!/bin/sh
set -e

if [ -d /bundle ]; then
  cd /bundle
  tar xzf *.tar.gz
  cd /bundle/bundle/programs/server/
  npm install
  cd /bundle/bundle/
elif [[ $BUNDLE_URL ]]; then
  cd /tmp
  curl -L -o bundle.tar.gz $BUNDLE_URL
  tar xzf bundle.tar.gz
  cd /tmp/bundle/programs/server/
  npm install
  cd /tmp/bundle/
elif [ -d /app ]; then
  cd /app
  cd /app/programs/server/
  npm install
  cd /app
else
  echo "=> You don't have an meteor app to run in this image."
  exit 1
fi
