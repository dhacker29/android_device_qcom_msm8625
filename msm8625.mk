include device/qcom/msm7627a/msm7627a.mk

DEVICE_PACKAGE_OVERLAYS := device/qcom/msm8625/overlay

PRODUCT_NAME := msm8625
PRODUCT_DEVICE := msm8625
#PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia_X
PRODUCT_MANUFACTURER := Nokia

PRODUCT_PACKAGES += \
    cfg80211.ko \
    ath6kl_sdio.ko \
    audio.primary.msm7627a.so \
    camera.msm7627a.so \
    sensors.msm7627a.so \
    libnl_2

PRODUCT_COPY_FILES += \
    device/qcom/msm8625/apns-conf.xml:/system/etc/apns-conf.xml \
    device/qcom/msm8625/fstab.msm7627a:/root/fstab.msm7627a \
    device/qcom/msm8625/init.qcom.rc:/root/init.qcom.rc \
    device/qcom/msm8625/init.target.rc:/root/init.target.rc \
    device/qcom/msm8625/recovery_nand.fstab:/recovery/root/etc/recovery_nand.fstab \
    device/qcom/msm8625/ueventd.qcom.rc:/root/ueventd.qcom.rc \
    device/qcom/msm8625/vold.fstab:/system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
    persist.dsds.enabled=dsds \
    persist.multisim.config=dsds \
    dalvik.vm.execution-mode=int:fast \
    persist.sys.usb.config=mtp,adb

$(call inherit-product-if-exists, vendor/nokia/normandy/normandy-vendor.mk)
