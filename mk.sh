#!/bin/sh
autoreconf -f -i
make distclean
./configure --prefix "/mnt/SDCARD/.tmp_update/" --disable-silent-rules --host arm-linux-gnueabihf --target arm-linux-gnueabihf
make -j4