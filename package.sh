#!/bin/bash
arch=`uname -m`
if [ "$arch" == "x86_64" ]; then
    arch="amd64"
else
    arch="x86"
fi

dpkg-deb --build $arch teamspeak3-client_$arch.deb
