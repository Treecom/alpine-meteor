set -e

export PYTHONPATH=/usr/lib/python2.7/
export GYP_DEFINES="linux_use_gold_flags=0"

PRODUCTION="--production"

if [ -d /bundle ]; then
  cd /bundle
  tar xzf *.tar.gz
  cd /bundle/bundle/programs/server/
  npm i $PRODUCTION
  cd /bundle/bundle/
elif [[ $BUNDLE_URL ]]; then
  cd /tmp
  curl -L -o bundle.tar.gz $BUNDLE_URL
  tar xzf bundle.tar.gz
  cd /tmp/bundle/programs/server/
  npm i $PRODUCTION
  cd /tmp/bundle/
elif [ -d /app ]; then
  cd /app
  cd /app/programs/server/
  npm i $PRODUCTION
  cd /app
else
  echo "=> You don't have an meteor app to run in this image."
  exit 1
fi


if [ -f /opt/meteord/rebuild_npm_modules.sh ]; then
  cd programs/server
  bash /opt/meteord/rebuild_npm_modules.sh
  cd ../../
fi
