#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/sony/lilac

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5242880000
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Inherit common board configs
include device/sony/yoshino-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
TARGET_KERNEL_CONFIG += sony/lilac.config

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit vendor board configs
include vendor/sony/lilac/BoardConfigVendor.mk
