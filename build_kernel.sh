#!/bin/bash
#内核源码地址
KERNEL_URL=https://github.com/tanyuanman/android_kernel_xiaomi_mt6765.git
#内核defconfig
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
