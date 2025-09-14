#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from CK8n device
$(call inherit-product, device/tecno/CK8n/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_CK8n
PRODUCT_DEVICE := CK8n
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix CK8n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_tecno-user 14 UP1A.231005.007 722992 release-keys" \
    BuildFingerprint=Infinix/CK8n-GL/Infinix-CK8n:14/UP1A.231005.007/241017V722:user/release-keys \
    SystemDevice=Infinix-CK8n \
    SystemName=CK8n-GL
