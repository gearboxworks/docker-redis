#!/bin/bash
# Created on 2020-03-14T03:58:53+1100, using template:redis.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /etc/gearbox/build/redis.apks ]
then
	APKS="$(cat /etc/gearbox/build/redis.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /etc/gearbox/build/redis.env ]
then
	. /etc/gearbox/build/redis.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

# cp /etc/gearbox/rootfs/data/redis.conf /data

c_ok "Finished."
