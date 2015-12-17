$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/virgo/virgo-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/virgo/overlay
include $(call all-subdir-makefiles)
LOCAL_PATH := device/xiaomi/virgo

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	$(LOCAL_PATH)/dt.img:dt.img

#Add cofface prop
PRODUCT_PROPERTY_OVERRIDES += \
  ro.weibo.com=weibo.com/cofface

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_virgo
PRODUCT_DEVICE := virgo
