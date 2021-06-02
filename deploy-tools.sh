#!/bin/sh

export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/root/bin

cd /root/pfSense-repo-scripts
git fetch --all
git reset --hard origin/main


