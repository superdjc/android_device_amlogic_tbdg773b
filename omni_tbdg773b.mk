# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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
# Inherit omni-specific board config
include device/amlogic/tbdg773b/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/amlogic/tbdg773b/aosp_tbdg773b.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk) 
$(call inherit-product-if-exists, vendor/amlogic/tbdg773b/tbdg773b-vendor.mk)

TARGET_BOOTANIMATION_SIZE := 360x240

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_tbdg773b
PRODUCT_BRAND := amlogic
PRODUCT_MODEL := tbdg773b
PRODUCT_MANUFACTURER := amlogic
