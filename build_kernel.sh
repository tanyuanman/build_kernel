#!/bin/bash
#内核源码地址
KERNEL_URL=https://github.com/oppo-source/R15Pro-9.0-kernel-source
#内核defconfig
KERNEL_DEFCONFIG=sdm660_defconfig

#谷歌GCC4.9
echo "|| Cloning GCC ||"
git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b ndk-release-r21
echo "|| Cloning KERNEL ||"
git clone $KERNEL_URL Kernel

#工具目录变量
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=~/aarch64-linux-android-4.9/bin/aarch64-linux-android-

#编译内核
echo "**** Kernel defconfig is set to $KERNEL_DEFCONFIG ****"
echo "***********************************************"
echo "          BUILDING KERNEL          "
echo "***********************************************"
cd Kernel
make "$KERNEL_DEFCONFIG" O=out
make -j$(nproc --all) O=out

if [ -e "./out/arch/arm64/boot/Image.gz-dtb" ] ;then
    mv ./out/arch/arm64/boot/Image.gz-dtb ./
fi

echo
echo "Done!"
echo
