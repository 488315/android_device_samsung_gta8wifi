#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gta8wifi device
$(call inherit-product, device/samsung/gta8wifi/device.mk)

PRODUCT_DEVICE := gta8wifi
PRODUCT_NAME := lineage_gta8wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X200
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta8wifixx-user 13 TP1A.220624.014 X200XXS3CWG2 release-keys"

BUILD_FINGERPRINT := samsung/gta8wifixx/gta8wifi:11/RP1A.200720.012/X200XXS3CWG2:user/release-keys
