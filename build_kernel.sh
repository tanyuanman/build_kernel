#!/bin/bash


git clone https://github.com/tanyuanman/android_kernel_xiaomi_mt6765.git -b oreo cactus
cd cactus
git clone git clone git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 gcc

export CROSS_COMPILE=gcc/bin/arm-linux-androideabi-
export ARCH=arm && export SUBARCH=arm
mkdir out
make o=out cactus_defconfig 
make o=out -j$(nproc --all)


