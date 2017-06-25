FROM mhart/alpine-node:4.8.3

MAINTAINER Martin Bucko <bucko@treecom.net>

ENV METEORD_DIR="/opt/meteord" BUILD_PACKAGES="python make gcc g++ git libuv bash curl tar bzip2"

WORKDIR /root

COPY scripts $METEORD_DIR

RUN apk --update add ${BUILD_PACKAGES} \
	&& mkdir -p /root \
	&& mkdir -p /app \
	&& npm install -g npm@4 \
	&& npm install -g node-gyp \
	&& node-gyp install

ONBUILD COPY .build/bundle /app

ONBUILD RUN sh $METEORD_DIR/build_app.sh
ONBUILD RUN sh $METEORD_DIR/rebuild_npm_modules.sh
ONBUILD RUN sh $METEORD_DIR/clean-final.sh

EXPOSE 80

ENTRYPOINT sh $METEORD_DIR/run_app.sh
