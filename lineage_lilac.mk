#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first API level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 27

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := lineage_lilac
PRODUCT_DEVICE := lilac
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8441

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8441-user 9 47.2.A.11.228 3311891731 release-keys" \
    BuildFingerprint=Sony/G8441/G8441:9/47.2.A.11.228/3311891731:user/release-keys
