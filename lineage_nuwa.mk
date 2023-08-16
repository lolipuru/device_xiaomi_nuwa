#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/nuwa/device.mk)

## Device identifier
PRODUCT_DEVICE := nuwa
PRODUCT_NAME := lineage_nuwa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2210132C
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Xiaomi nuwa 13 TKQ1.220905.001 V14.0.27.0.TMBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nuwa/nuwa:13/TKQ1.220905.001/V14.0.27.0.TMBCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
