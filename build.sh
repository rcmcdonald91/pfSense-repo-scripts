#!/bin/sh

export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/root/bin

poudriere ports -u -p ng_ports_252
poudriere ports -u -p ng_ports_251
poudriere ports -u -p ng_ports_devel
poudriere ports -u -p wg_pkg_devel
# poudriere ports -u -p wg_kmod

#Build all 12.2 archs
for arch in amd64 armv7 aarch64
do
    poudriere bulk -j freebsd_12-2_$arch -p ng_ports_251 -O wg_pkg_main -f /usr/local/etc/poudriere.d/pfSense-minion-packages-list
    poudriere bulk -j freebsd_12-2_$arch -p ng_ports_252 -O wg_pkg_main -f /usr/local/etc/poudriere.d/pfSense-minion-packages-list
    poudriere bulk -j freebsd_12-2_$arch -p ng_ports_devel -O wg_pkg_main  -f /usr/local/etc/poudriere.d/pfSense-minion-packages-list
done
