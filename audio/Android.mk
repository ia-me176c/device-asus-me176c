LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := audio.primary.me176c
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := audio_hw.c
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libtinyalsa \
    libaudioroute \
    liblog
LOCAL_C_INCLUDES := \
    external/tinyalsa/include \
    $(call include-path-for, audio-route)
LOCAL_CFLAGS := -Werror -pedantic -Wno-unused-parameter
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c-audio.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_RELATIVE_PATH := init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := audio_policy_configuration.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_REQUIRED_MODULES := \
    a2dp_audio_policy_configuration.xml \
    r_submix_audio_policy_configuration.xml \
    audio_policy_volumes.xml \
    default_volume_tables.xml
include $(BUILD_PREBUILT)

LOCAL_PATH := frameworks/av/services/audiopolicy/config

include $(CLEAR_VARS)
LOCAL_MODULE := a2dp_audio_policy_configuration.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := r_submix_audio_policy_configuration.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := audio_policy_volumes.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := default_volume_tables.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
