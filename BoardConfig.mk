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

# Recovery
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS := ../../../device/nokia/normandy/recovery/graphics.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/nokia/normandy/recovery/tw_graphics.c
TW_TARGET_USES_QCOM_BSP := true
TARGET_RECOVERY_FSTAB := device/nokia/normandy/rootdir/etc/fstab.qcom
TARGET_RECOVERY_INITRC := device/nokia/normandy/recovery/recovery.rc
DEVICE_RESOLUTION := 480x800
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard1"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
