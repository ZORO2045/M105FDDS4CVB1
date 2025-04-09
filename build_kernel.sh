#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

export CROSS_COMPILE=$(pwd)/aarch64-linux-android-4.9/bin/aarch64-linux-android-

make CONFIG_SECTION_MISMATCH_WARN_ONLY=y ARCH=arm64 m10lte_swa_open_defconfig
make CONFIG_SECTION_MISMATCH_WARN_ONLY=y ARCH=arm64 -j$(nproc)
