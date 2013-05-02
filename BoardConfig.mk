# Copyright (C) 2012-2013 Paul Kocialkowski <contact@paulk.fr>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := gta04

# Images
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
BOARD_USES_UBOOT := true
BOARD_CUSTOM_BOOTIMG_MK := device/goldelico/gta04/bootimg.mk

# Bootloaders
TARGET_BOOTLOADER_SOURCE := bootable/bootloader/goldelico/gta04/u-boot/
TARGET_BOOTLOADER_CONFIG := omap3_gta04_config
TARGET_XLOADER_SOURCE := bootable/bootloader/goldelico/gta04/x-loader/
TARGET_XLOADER_CONFIG := omap3530gta04_config

# Kernel
TARGET_KERNEL_CONFIG := gta04_defconfig
TARGET_KERNEL_SOURCE := kernel/goldelico/gta04

# Hardware
BOARD_HAVE_FM_RADIO := false
BOARD_HAVE_BLUETOOTH := false
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Audio
BOARD_USE_TINYALSA_AUDIO := true
