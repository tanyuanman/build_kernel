#!/bin/bash
#内核源码地址
KERNEL_URL=https://github.com/oppo-source/R15Pro-9.0-kernel-source
#内核defconfig
KERNEL_DEFCONFIG=sdm660_perf_defconfig

#谷歌GCC4.9
echo "|| Cloning GCC ||"
mkdir gcc
cd gcc
mkdir arm32-gcc
cd arm32-gcc
git clone -b eleven https://github.com/AOSiP/platform_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9 --depth 1
cd ..
mkdir arm64-gcc
cd arm64-gcc
git clone -b eleven https://github.com/AOSiP/platform_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 --depth 1
cd ..
echo "|| Cloning KERNEL ||"
cd gcc

tar -cvpzf /home/runner/gcc32.tar.gz ./

#
echo
echo "Done!"
echo
