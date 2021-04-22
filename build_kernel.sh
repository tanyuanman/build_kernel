#!/bin/bash


git clone https://github.com/tanyuanman/android_kernel_xiaomi_mt6765.git -b oreo
git clone git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 gcc
KERNEL_DEFCONFIG=cactus_defconfig

#谷歌GCC4.9
echo "|| Cloning GCC ||"

git clone -b master https://github.com/redfeast/android_kernel_oppo_RMX1801 gcc

cd ./gcc
tar -cvpzf /home/runner/gcc32.tar.gz ./

#
echo
echo "Done!"
echo
