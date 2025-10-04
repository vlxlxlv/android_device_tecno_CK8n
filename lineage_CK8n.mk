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
TARGET_DISABLE_EPPE := true
PERF_ANIM_OVERRIDE := true

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 64,2,2 # Example: 50MP + 48MP

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 32 # Example: 42MP

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := fjrXTR

# Processor name (use "_" for spaces)
AXION_PROCESSOR := MediaTek_Dimensity_8050

# Misc
TARGET_ENABLE_BLUR := true
TARGET_INCLUDES_LOS_PREBUILTS := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_CK8n
PRODUCT_DEVICE := CK8n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK8n

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_SYSTEM_NAME := CK8n-GL
PRODUCT_SYSTEM_DEVICE := CK8n
    
BUILD_FINGERPRINT := TECNO/CK8n-GL/TECNO-CK8n:14/UP1A.231005.007/250217V537:user/release-keys
