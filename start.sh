#!/bin/sh

echo "[$(date)] Starting igmpproxy container"

if [ ! -f /etc/igmpproxy/igmpproxy.conf ]; then
    echo "[$(date)] Configuration file not found, copying template"
    cp /templates/igmpproxy.conf.template /etc/igmpproxy/igmpproxy.conf
    echo "[$(date)] Template copied successfully"
fi

echo "[$(date)] Starting igmpproxy service"
exec igmpproxy -d 5 igmpproxy.conf
