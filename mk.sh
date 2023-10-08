#!/bin/sh
autoreconf -f -i
make distclean
rm -rf output/
./configure --prefix "/mnt/SDCARD/.tmp_update/" --disable-silent-rules --host arm-linux-gnueabihf --target arm-linux-gnueabihf
make -j4
mkdir -p output/bin output/lib output/share/misc/
cp src/.libs/file output/bin/
cp src/.libs/libmagic.so* output/lib
cp magic/magic.mgc output/share/misc/