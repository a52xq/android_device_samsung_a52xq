#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)




# Inherit from a52xq device
$(call inherit-product, device/samsung/a52xq/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_DEVICE := a52xq
PRODUCT_NAME := twrp_a52xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A526B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a52xqnaxx-user 11 RP1A.200720.012 A526BXXS4EWG1 release-keys"

BUILD_FINGERPRINT := samsung/a52xqnaxx/a52xq:11/RP1A.200720.012/A526BXXS4EWG1:user/release-keys
