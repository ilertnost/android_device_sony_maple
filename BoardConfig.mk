#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/sony/maple

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7707033600
BOARD_VENDORIMAGE_PARTITION_SIZE := 419430400
BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := 4096
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := squashfs
BOARD_VENDORIMAGE_JOURNAL_SIZE := 0
BOARD_VENDORIMAGE_SQUASHFS_COMPRESSOR := lz4

# Inherit common board configs
include device/sony/yoshino-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 430

# Kernel
TARGET_KERNEL_CONFIG += sony/maple.config

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Inherit vendor board configs
include vendor/sony/maple/BoardConfigVendor.mk
