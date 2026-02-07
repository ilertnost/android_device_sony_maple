#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Include from common device tree
$(call inherit-product, device/sony/yoshino-common/yoshino.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit vendor makefiles
$(call inherit-product, vendor/sony/lilac/lilac-vendor.mk)
