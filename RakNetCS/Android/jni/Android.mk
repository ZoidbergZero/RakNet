LOCAL_CPP_FEATURES += exceptions
LOCAL_CPPFLAGS  := -std=c++11
LOCAL_CPPFLAGS += -fexceptions
LOCAL_CPPFLAGS += -frtti
LOCAL_PATH := $(call my-dir) 
include $(CLEAR_VARS) 
LOCAL_MODULE := RakNet 
MY_PREFIX := $(LOCAL_PATH)/src/
MY_SOURCES := $(wildcard $(MY_PREFIX)*.cpp) 
LOCAL_SRC_FILES += $(MY_SOURCES:$(MY_PREFIX)%=src/%)
include $(BUILD_SHARED_LIBRARY)
LOCAL_C_INCLUDES := /include 
