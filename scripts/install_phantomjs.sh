# Install PhantomJS
set -e

# install deps
apk --update add curl freetype-dev freetype fontconfig

# https://github.com/dustinblackman/phantomized
curl -Ls "https://github.com/dustinblackman/phantomized/releases/download/2.1.1/dockerized-phantomjs.tar.gz" | tar xz -C /

npm install -g phantomjs

sh $METEORD_DIR/clean-soft.sh
