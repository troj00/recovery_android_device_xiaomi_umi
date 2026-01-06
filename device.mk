#
# Copyright (C) 2020 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Codename
PRODUCT_RELEASE_NAME := umi

# Core configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Packages
PRODUCT_PACKAGES += \
    bootctrl.xiaomi_sm8250.recovery

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 31

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# OTA / Recovery keys
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/magisk \
    $(DEVICE_PATH)/security/miui_releasekey

# TWRP required modules
TWRP_REQUIRED_MODULES += \
    miui_prebuilt \
    magisk_prebuilt

# ===============================
# Android 11+ Product Identity
# ===============================

# System
PRODUCT_SYSTEM_NAME := umi
PRODUCT_SYSTEM_DEVICE := umi
PRODUCT_SYSTEM_MODEL := Xiaomi Mi 10
PRODUCT_SYSTEM_BRAND := Xiaomi
PRODUCT_SYSTEM_MANUFACTURER := Xiaomi

# Vendor
PRODUCT_VENDOR_NAME := umi
PRODUCT_VENDOR_DEVICE := umi
PRODUCT_VENDOR_MODEL := Xiaomi Mi 10
PRODUCT_VENDOR_BRAND := Xiaomi
PRODUCT_VENDOR_MANUFACTURER := Xiaomi

# ODM (важно для Qualcomm)
PRODUCT_ODM_NAME := umi
PRODUCT_ODM_DEVICE := umi
PRODUCT_ODM_MODEL := Xiaomi Mi 10
