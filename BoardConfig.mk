#
# Copyright (C) 2016 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the proprietary version

LOCAL_PATH := device/lge/f460
BOARD_VENDOR := lge

TARGET_OTA_ASSERT_DEVICE := tiger6,f460

# Soc platform
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420
USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_NEON := true

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := LineageOS_f460_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/apq8084
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 dwc3_msm.cpu_to_affin=1 androidboot.hardware=tiger6 androidboot.wificountrycode=us lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_REQUIRES_BUMP := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_USES_MKE2FS := true
TARGET_EXFAT_DRIVER := sdfat

# Partitions
TARGET_USERIMAGES_USE_F2FS := true                                                                        
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 18489344
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2583691264 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27116175360
BOARD_CACHEIMAGE_PARTITION_SIZE := 889192448
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/init/fstab.tiger6

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_USE_LL_AS_PRIMARY := true
TARGET_HAVE_DYN_A2DP_SAMPLERATE := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
# TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# off charge for lg kernel
BOARD_HEALTHD_CUSTOM_CHARGER_RES := $(LOCAL_PATH)/charger/images
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "chargerlogo"

# lineagehw
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/lineagehw/
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/tap_to_wake"

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

#FM Radio
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
PRODUCT_VENDOR_MOVE_ENABLED := true
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_DEVICE := "/dev/pn547"
BOARD_NFC_HAL_SUFFIX := apq8084

# RIL
BOARD_RIL_CLASS += $(LOCAL_PATH)/ril/
# TARGET_RIL_VARIANT := caf

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Disable dex-preopt of prebuilts to save space.
DONT_DEXPREOPT_PREBUILTS := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Shipping API level (for CTS backward compatibility)
PRODUCT_SHIPPING_API_LEVEL := 19

# inherit from the proprietary version
-include vendor/lge/f460/BoardConfigVendor.mk
