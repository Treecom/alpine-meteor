set -e

apk --update add graphicsmagick --repository http://dl-3.alpinelinux.org/alpine/edge/community/

sh $METEORD_DIR/clean-soft.sh