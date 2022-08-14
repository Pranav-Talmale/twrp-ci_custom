#!/bin/bash

# Device
export TWRP_BRANCH="twrp-12.1"
export DT_LINK="https://github.com/Pranav-Talmale/NB1-test -b 12.1-NB1"

export DEVICE="NB1"
export OEM="nokia"
export TARGET="bootimage"

export OUTPUT="output.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://github.com/Pranav-Talmale/android_kernel_xiaomi_lisa.git"
#export PLATFORM="sm6150" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
#export EXTRA_CMD="y u bulli me"

# Clang
# Cloned in ~/work/prebuilts/clang/host/linux-x86/$CUSTOM_CLANG_FOLDER
# Custom Clang is needed if you face issues while building with a kernel source. Make sure to add appropriate flags in your BoardConfig.mk to use custom clang.
# Can't clone both clangs. Uncomment the clang that you don't need.
#OF_USE_NEUTRON_CLANG=true
#OF_USE_PROTON_CLANG=true
#export CUSTOM_CLANG_FOLDER="clang_13.0.0"

# Not Recommended to Change
export SYNC_PATH="$HOME/work/twrp" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
#
if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
###
