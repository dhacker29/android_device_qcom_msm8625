include device/qcom/msm7627a/AndroidBoard.mk

include $(CLEAR_VARS)
LOCAL_MODULE := camera.msm7627a.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /system/lib/hw/camera.msm7x27a.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/lib/hw/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Symlink: $(SYMLINK) -> $(TARGET)"
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)
LOCAL_MODULE := sensors.msm7627a.so
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_TAGS := optional
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := /system/lib/hw/sensors.msm7x27a.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/lib/hw/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Symlink: $(SYMLINK) -> $(TARGET)"
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@

include $(CLEAR_VARS)

LOCAL_COPY_HEADERS_TO         := $(TARGET_OUT_HEADERS)/loc_api/rpcgen/inc
LOCAL_COPY_HEADERS            := ../../../device/qcom/msm8625/commondefs_rpcgen_rpc.h
#Copy the headers for gps
include $(BUILD_COPY_HEADERS)
