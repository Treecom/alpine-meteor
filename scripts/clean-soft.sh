set -e

# Some modules require test folder even if used in production. Commented out...
# if [ -d /app/programs ]; then
# 	find /app/programs/server/node_modules -name test -type d |  xargs rm -rf;
# 	find /app/programs/server/npm/node_modules -name test -type d |  xargs rm -rf;
# fi

if [ -d /usr/lib/node_modules/npm ]; then
	find /usr/lib/node_modules/npm -name test -o -name .bin -type d | xargs rm -rf;
fi

rm -rf $METEORD_DIR/bin /usr/share/doc /usr/share/man /tmp/* /var/cache/apk/* \
		/usr/share/man /tmp/* /var/cache/apk/* \
		/usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html
