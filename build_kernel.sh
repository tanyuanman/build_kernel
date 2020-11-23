#!/bin/bash
#内核源码地址
KERNEL_URL=https://github.com/oppo-source/R15Pro-9.0-kernel-source
#内核defconfig
KERNEL_DEFCONFIG=sdm660_perf_defconfig

#谷歌GCC4.9
echo "|| Cloning GCC ||"
mkdir gcc
cd gcc
git clone -b hmp https://github.com/vijaymalav564/lockdown_kernel_realme2pro


tar -cvpzf /home/runner/gcc32.tar.gz ./

#
echo
echo "Done!"
echo
