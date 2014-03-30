#
# config.mk
#
# Product-specific compile-time definitions.
#

include device/qcom/msm7627a/BoardConfig.mk

-include vendor/qcom/proprietary/common/msm8625/BoardConfigVendor.mk

KERNEL_DEFCONFIG := cyanogenmod_normandy_defconfig
BOARD_NO_SPEAKER :=
TARGET_BOOTIMG_SIGNED :=
