#!/bin/bash

NDK_ROOT=$NDK_HOME
PREBUILT=$NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
PLATFORM=$NDK_ROOT/platforms/android-19/arch-arm

./configure --prefix=`pwd`/android/ \
--enable-static \
--enable-pic \
--enable-strip \
--disable-cli \
--disable-asm \
--extra-cflags="-march=armv7-a -O2 -mfloat-abi=softfp -mfpu=neon" \
--host=arm-linux \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM

make clean
make
make install
