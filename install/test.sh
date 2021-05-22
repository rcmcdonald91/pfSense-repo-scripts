#!/bin/sh
CURL=/usr/local/bin/curl
ARCH=`uname -m`

if [ $ARCH == "amd64" ]
then
	ARCH="armv7"
fi

echo $ARCH
