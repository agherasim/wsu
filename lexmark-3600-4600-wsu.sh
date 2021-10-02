#!/bin/bash
# Wireless configuration utility for Lexmark x4650 printer 
SOURCE_DEB=http://downloads.lexmark.com/downloads/pssd/lexmark-wsu-wJRE-2.0-1.amd64.deb
DEST_FILE=wsu.deb
SRC_DIR=/usr/src
WSUCONFIG=wsconfig
USB_DEV=""

SSID=""
MODE=""
CHANNEL=""
PASSWD=""

if [ -z `which wsuconfig` ]; then
  cd $SRC_DIR && curl $SOURCE_DEB > $DEST_FILE
  dpkg -i $DEST_FILE

  ln -s /usr/local/lexmark/wsu_v2/bin/wsuconfig /usr/local/bin/wsuconfig
fi

#  "wsuconfig -c" + " --ssid=\"" + ssid + "\"" + " --mode=\"" + mode + "\"" + " --channel=\"" + channel + "\"" + " --security=\"" + security + "\"" + " --passwd=\"" + password + "\"" + " " + usb;
$WSUCONFIG \
  -c \
  --ssid="" \
  --mode="" \
  --channel="" \
  --security="" \
  --passwd="" \
  $USB_DEV
