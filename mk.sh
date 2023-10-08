#!/bin/sh
autoreconf -f -i
make distclean
./configure --disable-silent-rules --host arm-linux-gnueabihf --target arm-linux-gnueabihf
make -j4