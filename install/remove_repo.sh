#!/bin/sh
mv /etc/inc/pkg-utils.inc.orig /etc/inc/pkg-utils.inc
rm /usr/local/etc/pkg/repos/WireGuard.conf
rm /usr/local/etc/ssl/wireguard.crt
pkg update

