#
# Copyright (C) 2013 XenonHD
#
# Licensed under the GNU GPLv2 license
#
# The text of the license can be found in the LICENSE file
# or at https://www.gnu.org/licenses/gpl-2.0.txt
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4
LOCAL_SRC_FILES += $(call all-java-files-under, src)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := --auto-add-overlay

LOCAL_SDK_VERSION := current
LOCAL_PACKAGE_NAME := CandyWrappers
include $(BUILD_PACKAGE)

# Static library for target
# ========================================================
include $(CLEAR_VARS)
LOCAL_MODULE := libCandyWrappers
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_SDK_VERSION := current
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_JAVA_LIBRARIES := android-support-v4
include $(BUILD_STATIC_JAVA_LIBRARY)
