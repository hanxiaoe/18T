#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 18T device
$(call inherit-product, device/ulefone/18T/device.mk)

PRODUCT_DEVICE := 18T
PRODUCT_NAME := 18T
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := 18T
PRODUCT_MANUFACTURER := ulefone

PRODUCT_GMS_CLIENTID_BASE := android-ulefone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1rck61v164bspP51 release-keys"

BUILD_FINGERPRINT := Ulefone/18T/18T:12/SP1A.210812.016/1681875184:user/release-keys
