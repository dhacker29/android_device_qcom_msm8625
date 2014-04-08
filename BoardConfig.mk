#
# config.mk
#
# Product-specific compile-time definitions.
#

include device/qcom/msm7627a/BoardConfig.mk

-include vendor/qcom/proprietary/common/msm8625/BoardConfigVendor.mk

KERNEL_DEFCONFIG := cyanogenmod_normandy_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.emmc=true loglevel=1 vmalloc=200M
BOARD_NO_SPEAKER :=
TARGET_BOOTIMG_SIGNED :=
TARGET_NO_BOOTLOADER := true
BOARD_USES_GENERIC_AUDIO := false
#USE_CAMERA_STUB := false
#BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_ADRENO_200 := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
BOARD_HAVE_BLUETOOTH := true
BOARD_USES_SRS_TRUEMEDIA := true

# GPS
TARGET_NO_RPC := false
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default

# Wlan
BOARD_HAS_ATH_WLAN := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
WIFI_CFG80211_DRIVER_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_CFG80211_DRIVER_MODULE_NAME := "cfg80211"
WIFI_CFG80211_DRIVER_MODULE_ARG  := ""
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_TEST_INTERFACE     := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

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
