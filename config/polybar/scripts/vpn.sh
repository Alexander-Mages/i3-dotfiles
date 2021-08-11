#!/bin/sh

IFACE=$(ifconfig | grep tun | awk '{print $1}')

if [ "$IFACE" = "tun0:" ]; then
    echo "%{F#55aa55}賓  $(ifconfig tun0 | grep inet | awk '{print $2}' | cut -f2 -d ':')"
else
    echo "%{F#FF0000}%{u#FF0000}賓  VPN DISCONNECTED%{u-}%{F-}"
fi
