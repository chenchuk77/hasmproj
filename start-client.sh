#!/bin/bash

#
# This script will download chromium browser and run it.
# Chromium will be used as a test client browser with CORS enabled (allowing all)
#

if [[ ! -f "chrome-linux.zip" ]]; then
  echo "Downloading chrome-linux.zip. please wait ..."
  wget -O chrome-linux.zip https://download-chromium.appspot.com/dl/Linux_x64?type=snapshots > /dev/null 2>&1
fi

if [[ ! -d "chrome-linux" ]]; then
  echo "extracting archive."
  unzip chrome-linux.zip 
fi

echo "starting CORS enabled browser. press ^C to exit browser."
echo "to access HAssembler, goto http://localhost:8888"
echo ""
sleep 3s
./chrome-linux/chrome  --disable-web-security -–allow-file-access-from-files --user-data-dir /tmp
