#!/bin/bash
#内核源码地址
KERNEL_URL=https://github.com/oppo-source/R15Pro-9.0-kernel-source
#内核defconfig
KERNEL_DEFCONFIG=sdm660_perf_defconfig

#谷歌GCC4.9
echo "|| Cloning GCC ||"
git clone --depth 69 https://gitlab.com/Vijaymalav564/aarch64-linux-android-4.9.git gcc
git clone --depth 69 https://gitlab.com/Vijaymalav564/arm-linux-androideabi-4.9.git gcc-arm
	
echo "|| Cloning KERNEL ||"
cd gcc-arm

tar -cvpzf /home/runner/gcc32.tar.gz ./

#
echo
echo "Done!"
echo
