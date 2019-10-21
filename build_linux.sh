#!/bin/bash

./configure --prefix=`pwd`/out/linux/ \
--enable-static \
--enable-pic \
--enable-strip \
--disable-cli \
--disable-asm 

make clean
make
make install
