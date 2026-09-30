#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from CK8n device
$(call inherit-product, device/tecno/CK8n/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_CK8n
PRODUCT_DEVICE := CK8n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK8n

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_SYSTEM_NAME := CK8n-GL
PRODUCT_SYSTEM_DEVICE := TECNO-CK8n

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_64_armv82_tecno-user 14 UP1A.231005.007 732551 release-keys" \
    BuildFingerprint=TECNO/CK8n-GL/TECNO-CK8n:14/UP1A.231005.007/241029V516:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)