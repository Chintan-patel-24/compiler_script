#Basic Script to build kernel

#!/bin/bash
cd RyZeN
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_HOST="NOT-GAMING-KERNEL"
export KBUILD_BUILD_USER="K A R T H I K"
MAKE="./makeparallel"

# Set Date
DATE=$(TZ=Asia/Jakarta date +"%Y%m%d")

# For end-time
BUILD_START=$(date +"%s")

blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'

TC_DIR="/home/karthik558/Workspace/"
MPATH="$TC_DIR/CLANG-13/bin/:$PATH"
rm -f out/arch/arm64/boot/Image.gz-dtb
