#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.

# Inherit some common Lineage stuff.

# Inherit from xpeng device
$(call inherit-product, device/motorola/xpeng/device.mk)

PRODUCT_DEVICE := xpeng
PRODUCT_NAME := twrp_xpeng
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g200 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xpeng_g-user 11 RRX31.Q3-59-18-7 6ad81 release-keys"

BUILD_FINGERPRINT := motorola/xpeng_g/xpeng:11/RRX31.Q3-59-18-7/6ad81:user/release-keys
