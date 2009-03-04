#!/bin/bash
autoreconf
make clean
./configure --host=arm-none-linux-gnueabi --target=arm-none-linux-gnueabi --enable-pandora --with-png=$PNDSDK/usr --with-sdl-prefix=$PNDSDK/usr
make
mv System_SDL/NeoPop-SDL release
arm-none-linux-gnueabi-strip NeoPop-SDL
