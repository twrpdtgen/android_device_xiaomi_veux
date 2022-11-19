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

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

PRODUCT_DEVICE := veux
PRODUCT_NAME := omni_veux
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.221105.003 9229241 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TD1A.221105.003/9229241:user/release-keys
