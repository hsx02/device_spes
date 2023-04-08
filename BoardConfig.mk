#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/spes

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += k7tn
ODM_MANIFEST_K7TN_FILES := $(DEVICE_PATH)/manifest_k7tn.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_spes
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_spes

# Kernel
BOARD_MKBOOTIMG_ARGS += --dtb $(DEVICE_PATH)-kernel/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)-kernel/dtbo.img

# OTA assert
TARGET_OTA_ASSERT_DEVICE := spes,spesn

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from sm6225-common
include device/xiaomi/sm6225-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/spes/BoardConfigVendor.mk
