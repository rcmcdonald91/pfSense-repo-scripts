#!/bin/sh

poudriere ports -u -p ng_ports_251
poudriere ports -u -p ng_ports_devel
poudriere ports -u -p wg_pkg_devel
# poudriere ports -u -p wg_kmod

#Build all 12.2 archs
for arch in amd64 armv7 aarch64
do
    poudriere bulk -j freebsd_12-2_$arch -p ng_ports_251 -O wg_pkg_devel -f /usr/local/etc/poudriere.d/pfSense-minion-packages-list
    poudriere bulk -j freebsd_12-2_$arch -p ng_ports_devel -O wg_pkg_devel  -f /usr/local/etc/poudriere.d/pfSense-minion-packages-list
done
