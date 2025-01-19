#!/bin/sh

if [ ! -f /etc/igmpproxy/igmpproxy.conf ]; then
    cp /templates/igmpproxy.conf.template /etc/igmpproxy/igmpproxy.conf
fi

exec igmpproxy /etc/igmpproxy/igmpproxy.conf