# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for zerofltecan hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and zerofltecan, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from noblelte device
$(call inherit-product, device/samsung/noblelte/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := bliss_noblelte
PRODUCT_DEVICE := noblelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-N920I

#Bliss official
BLISS_BUILDTYPE := OFFICIAL

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=nobleltejv \
    TARGET_DEVICE=noblelte \
    PRIVATE_BUILD_DESC="nobleltejv-user 7.0 NRD90M N920CXXU3CQH6 release-keys"

BUILD_FINGERPRINT := "samsung/nobleltejv/noblelte:7.0/NRD90M/N920CXXU3CQH6:user/release-keys"
