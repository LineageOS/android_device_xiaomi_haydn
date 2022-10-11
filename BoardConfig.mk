#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/haydn

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := haydn

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Include proprietary files
include vendor/xiaomi/haydn/BoardConfigVendor.mk
