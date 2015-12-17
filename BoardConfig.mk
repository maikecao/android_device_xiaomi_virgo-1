USE_CAMERA_STUB := true

LOCAL_PATH := device/xiaomi/virgo

# inherit from the proprietary version
-include vendor/xiaomi/virgo/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8974
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_HARDWARE := qcom
ARCH_ARM_HAVE_TLS_REGISTER := true


TARGET_BOOTLOADER_BOARD_NAME := MSM8974	

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/xiaomi/virgo/dt.img

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/virgo/kernel

#twrp
DEVICE_RESOLUTION := 1080x1920
TARGET_CPU_SMP := true
TW_NO_SCREEN_BLANK := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 250
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"


#cofface theme
TW_CUSTOM_THEME := device/xiaomi/hermes/recovery/twres
