#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/haydn

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := haydn,haydnin

# Board
TARGET_BOOTLOADER_BOARD_NAME := haydn

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/hidl/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/haydn_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    focaltech_touch.ko \
    hwid.ko \
    msm_drm.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Vibrator
TARGET_QTI_VIBRATOR_EFFECT_LIB := libqtivibratoreffect.xiaomi
TARGET_QTI_VIBRATOR_USE_EFFECT_STREAM := true

# Include proprietary files
include vendor/xiaomi/haydn/BoardConfigVendor.mk
