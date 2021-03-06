LOCAL_PATH:= $(call my-dir)

ifneq ($(BOARD_HAVE_BLUETOOTH_BLUEZ), true)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	audio_a2dp_hw.c

LOCAL_CFLAGS += $(bdroid_CFLAGS)

LOCAL_C_INCLUDES+= . \
	$(bdroid_C_INCLUDES)

LOCAL_SHARED_LIBRARIES := \
	libcutils

LOCAL_SHARED_LIBRARIES += \
	libpower

LOCAL_MODULE := audio.a2dp.default
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif  #BOARD_HAVE_BLUETOOTH_BLUEZ
