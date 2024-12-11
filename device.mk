#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

PRODUCT_PACKAGES += \
    fastbootd

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Rootdir
PRODUCT_PACKAGES += \
    fstab.ums512_25c10 \
    fstab.ums512_25c10.ramdisk \
    init.gta8wifi.rc \
    init.storage.rc \
    init.ums512_25c10.rc \
    init.ums512_25c10.usb.rc \
    ueventd.ums512_25c10.rc

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/gta8wifi/gta8wifi-vendor.mk)
