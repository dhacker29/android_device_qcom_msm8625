include device/qcom/msm7627a/msm7627a.mk

DEVICE_PACKAGE_OVERLAYS += device/qcom/msm8625/overlay

PRODUCT_NAME := msm8625
PRODUCT_DEVICE := msm8625
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia_X
PRODUCT_MANUFACTURER := Nokia

PRODUCT_PACKAGES += \
    cfg80211.ko \
    ath6kl_sdio.ko \
    camera.msm7627a.so \
    sensors.msm7627a.so

PRODUCT_COPY_FILES += \
    device/qcom/msm8625/fstab.msm7627a:/root/fstab.msm7627a \
    device/qcom/msm8625/init.qcom.rc:/root/init.qcom.rc \
    device/qcom/msm8625/init.target.rc:/root/init.target.rc \
    device/qcom/msm8625/recovery_nand.fstab:/root/recovery_nand.fstab \
    device/qcom/msm8625/ueventd.qcom.rc:/root/ueventd.qcom.rc \
    device/qcom/msm8625/vold.fstab:/system/etc/vold.fstab

$(call inherit-product-if-exists, vendor/nokia/normandy/normandy-vendor.mk)
