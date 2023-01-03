#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.oem.hw.sh \
    init.gbmods.sh \
    init.mmi.modules.sh \
    init.qti.chg_policy.sh \
    init.qti.kernel.debug-yupik.sh \
    pstore_annotate.sh \
    init.qcom.post_boot.sh \
    init.qcom.class_core.sh \
    init.qti.display_boot.sh \
    init.qti.media.sh \
    init.kernel.post_boot-yupik.sh \
    init.mmi.shutdown.sh \
    init.qcom.sensors.sh \
    init.qcom.usb.sh \
    init.mdm.sh \
    init.qcom.early_boot.sh \
    vendor_modprobe.sh \
    apanic_save.sh \
    apanic_annotate.sh \
    init.mmi.wlan-getlogs.sh \
    init.kernel.post_boot-lahaina.sh \
    init.crda.sh \
    init.mmi.boot.sh \
    init.mmi.block_perm.sh \
    init.mmi.usb.sh \
    init.qcom.sdio.sh \
    apanic_copy.sh \
    init.qcom.sh \
    hardware_revisions.sh \
    init.oem.fingerprint2.sh \
    init.mmi.qrtr-lookup.sh \
    init.kernel.post_boot-shima.sh \
    init.class_main.sh \
    init.qti.kernel.debug.sh \
    qca6234-service.sh \
    init.mmi.mdlog-getlogs.sh \
    init.kernel.post_boot.sh \
    init.qti.kernel.debug-shima.sh \
    init.mmi.touch.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qti.qcv.sh \
    init.qti.kernel.sh \
    init.qti.kernel.debug-lahaina.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi.tcmd.rc \
    init.mmi.diag_mdlog.rc \
    init.mmi.usb.rc \
    init.mmi.debug.rc \
    init.mmi.wlan.rc \
    init.vendor.st21nfc.rc \
    init.qcom.factory.rc \
    init.mmi.chipset.rc \
    init.mmi.charge_only.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.mmi.overlay.rc \
    init.qti.kernel.rc \
    init.mmi.diag.rc \
    init.qcom.rc \
    init.mmi.rc \
    init.qti.ufs.rc \
    init.recovery.qcom.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.qcom

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
