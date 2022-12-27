#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from xpeng device
$(call inherit-product, device/motorola/xpeng/device.mk)

PRODUCT_DEVICE := xpeng
PRODUCT_NAME := omni_xpeng
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2175-2
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xpeng_retcn-user 11 RRXC31.Q3-45-54-5 31bd10 release-keys"

BUILD_FINGERPRINT := motorola/xpeng_retcn/xpeng:11/RRXC31.Q3-45-54-5/31bd10:user/release-keys
