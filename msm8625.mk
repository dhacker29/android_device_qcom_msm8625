include device/qcom/msm7627a/msm7627a.mk

DEVICE_PACKAGE_OVERLAYS += device/qcom/msm8625/overlay

PRODUCT_NAME := msm8625
PRODUCT_DEVICE := msm8625

PRODUCT_COPY_FILES += \
    device/qcom/msm8625/init.qcom.rc:/root/init.qcom.rc \
    device/qcom/msm8625/recovery_nand.fstab:/system/etc/recovery_nand.fstab \
    device/qcom/msm8625/ueventd.qcom.rc:/root/ueventd.qcom.rc \
    device/qcom/msm8625/vold.fstab:/system/etc/vold.fstab

$(call inherit-product-if-exists, vendor/nokia/normandy/normandy-vendor.mk)
