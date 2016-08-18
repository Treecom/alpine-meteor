set -e

if [ $BUILD_PACKAGES ]; then
	apk del ${BUILD_PACKAGES}
fi

if [ -f ${METEORD_DIR}/bin/${PHANTOMJS_TAR_FILE} ]; then
	rm ${METEORD_DIR}/bin/${PHANTOMJS_TAR_FILE}
fi

npm uninstall -g node-gyp
npm cache clear

rm -rf $METEORD_DIR/bin /usr/share/doc /usr/share/man /tmp/* /var/cache/apk/* \
		/usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp #/usr/lib/node_modules/npm

