#!/bin/bash
autoreconf
make clean
./configure --host=arm-none-linux-gnueabi --target=arm-none-linux-gnueabi --enable-pandora --with-png=$PNDSDK/usr --with-sdl-prefix=$PNDSDK/usr
make
