#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# RisingOS Build Flags.
RISING_MAINTAINER := NILOY

# RisingOS Extra Flags.
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# RisingOS Specs.
RISING_RAM := 8GB
RISING_STORAGE := 256GB
RISING_BATTERY := 4085mAh
RISING_DISPLAY := 1440x3120
RISING_CHIPSET := Snapdragon™855

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rising_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2206171030:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7Pro \
    TARGET_PRODUCT=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 11 RKQ1.201022.002 2206171030 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
