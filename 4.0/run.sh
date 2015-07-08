#!/bin/bash
if [ ! -z "$CONTENT_VCL" ]; then
	echo -e "$CONTENT_VCL" > /etc/varnish/default.vcl
	CONTENT="-f /etc/varnish/default.vcl"
fi
exec /usr/sbin/varnishd -a :$LISTEN_PORT $CONTENT -s $CACHE -S /etc/varnish/secret -F $VARNISH_OPTS
