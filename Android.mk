#
# Copyright (C) 2012-2017 ParanoidAndroid Project
#
# Licensed under the GNU GPLv2 license
#
# The text of the license can be found in the LICENSE file
# or at https://www.gnu.org/licenses/gpl-2.0.txt
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES := \
    androidx.core_core \
    androidx.appcompat_appcompat \
    com.google.android.material_material

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := --auto-add-overlay

LOCAL_PACKAGE_NAME := CandyWrappers

include $(BUILD_PACKAGE)
