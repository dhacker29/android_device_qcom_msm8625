ifeq ($(TARGET_DEVICE),msm8625)

include $(CLEAR_VARS)

LOCAL_COPY_HEADERS_TO         := loc_api/rpcgen/inc
LOCAL_COPY_HEADERS            := ../../../../device/qcom/msm8625/commondefs_rpcgen_rpc.h
#Copy the headers for gps
include $(BUILD_COPY_HEADERS)

include device/qcom/msm8625/srs/Android.mk
endif
