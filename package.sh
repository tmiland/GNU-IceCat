#!/bin/bash

VERSION=$(curl -s https://icecatbrowser.org/all_downloads.html |
  grep -Po 'b>\K.*(?=</b)' |
  head -n 1 |
  sed -n 's/[^0-9.]*\([0-9.]*\).*/\1/p' |
  # Stript trailing .
sed 's/.$//')
# Replace Version in ./amd64/DEBIAN/control file
sed -i "s/Version: .*/Version: $VERSION/" ./amd64/DEBIAN/*

arch=$(uname -m)
if [ "$arch" == "x86_64" ]; then
  arch="amd64"
else
  arch="x86"
  echo "Error: $arch is no longer supported..."
  exit 1
fi

dpkg-deb --build $arch gnu-icecat_$arch.deb
