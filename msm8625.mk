include device/qcom/msm7627a/msm7627a.mk

PRODUCT_NAME := msm8625
PRODUCT_DEVICE := msm8625

PRODUCT_COPY_FILES += \
    device/qcom/msm8625/vold.fstab:/system/etc/vold.fstab \
    device/qcom/msm8625/recovery_nand.fstab:/system/etc/recovery_nand.fstab

$(call inherit-product-if-exists, vendor/nokia/normandy/normandy-vendor.mk)
