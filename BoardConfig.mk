#
# config.mk
#
# Product-specific compile-time definitions.
#

include device/qcom/msm7627a/BoardConfig.mk
ifeq ($(QC_PROP),true)
TARGET_HAS_QACT := true
endif
