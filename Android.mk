#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),spes)

include $(call all-makefiles-under,$(LOCAL_PATH))

# Kernel headers
$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr: $(wildcard device/xiaomi/spes-kernel/kernel-headers/*)
	rm -rf $@
	mkdir -p $@/include
	cp -a device/xiaomi/spes-kernel/kernel-headers/. $@/include

endif
