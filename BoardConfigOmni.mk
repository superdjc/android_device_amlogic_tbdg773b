# Inline kernel
BOARD_KERNEL_IMAGE_NAME := uImage
TARGET_KERNEL_CONFIG := tbdg773b_defconfig
TARGET_KERNEL_SOURCE := kernel/amlogic/tbdg773b
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-android-

KERNEL_EXTERNAL_MODULES:
	device/amlogic/tbdg773b/dtd/aml2dts.sh device/amlogic/tbdg773b/dtd/tbdg773b.dtd
	dtc -O dtb -o device/amlogic/tbdg773b/dtd/tbdg773b.dtb device/amlogic/tbdg773b/dtd/tbdg773b.dts
	cp /home/trepidator/android/omni/out/target/product/tbdg773b/obj/hardware/arm/gpu/mali/mali.ko /home/trepidator/android/omni/out/target/product/tbdg773b/system/lib/modules/mali.ko
	cp /home/trepidator/android/omni/out/target/product/tbdg773b/obj/hardware/arm/gpu/ump/ump.ko /home/trepidator/android/omni/out/target/product/tbdg773b/system/lib/modules/ump.ko
TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES

# TWRP
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
