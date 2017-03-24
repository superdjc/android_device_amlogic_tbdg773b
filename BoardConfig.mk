#
# Copyright (C) 2012 The CyanogenMod Project
#
#
# Copyright (C) 2015 The Android Open-Source Project
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
#

TARGET_BOARD_PLATFORM := meson6
TARGET_BOOTLOADER_BOARD_NAME := tbdg773b

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_EGL_CFG := device/amlogic/tbdg773b/zeki/system/lib/egl/egl.cfg

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true

BOARD_MKBOOTIMG_ARGS := --second /home/trepidator/android/omni/device/amlogic/tbdg773b/dtd/tbdg773b.dtb

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 809500672
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1262485504
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072


# SELinux
BOARD_SEPOLICY_DIRS += \
    device/amlogic/tbdg773b/sepolicy

#-include vendor/amlogic/tbdg773b/BoardConfigVendor.mk
