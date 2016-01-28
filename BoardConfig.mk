LOCAL_PATH := device/lge/f460
BOARD_VENDOR := lge

# Soc platform
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420
# USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
# TARGET_CPU_SMP := true
# ARCH_ARM_HAVE_TLS_REGISTER := true

# Qcom OPTIMIZATION
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := JZ_f460_defconfig
TARGET_KERNEL_SOURCE := /home/jz-shminer/lg/f460/f460
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := /home/jz-shminer/lg/f460/f460/android-toolchain/bin
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 dwc3_msm.cpu_to_affin=1 androidboot.hardware=tiger6 androidboot.selinux=permissive lpm_levels.sleep_disabled=1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_REQUIRES_BUMP := true

# Partitions
TARGET_USERIMAGES_USE_F2FS := true                                                                        
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2583691264 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27116175360
BOARD_CACHEIMAGE_PARTITION_SIZE := 889192448
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/fstab.tiger6

# Audio
BOARD_USES_ALSA_AUDIO := true
# BOARD_USES_GENERIC_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# BOARD_BLUEDROID_VENDOR_CONF :=
# BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR :=

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND=' \
    { "persist.data.sensor_name", AID_CAMERA, 0 }, \
    { "camera.4k2k.enable", AID_MEDIA, 0 }, \
    { "persist.data.rear.minfps", AID_MEDIA, 0 }, \
    { "persist.data.front.minfps", AID_MEDIA, 0 }, \
    '


# CMHW
# BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/
# TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/tap_to_wake"

# Enables Adreno RS driver
#OVERRIDE_RS_DRIVER := libRSDriver_adreno.so


# Disable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := false

# Display
BOARD_EGL_CFG := device/lge/f460/configs/egl.cfg
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
# TARGET_USES_NEW_ION_API :=true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true
TARGET_USES_OVERLAY := true
HAVE_ADRENO_SOURCE := false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so


# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Offmode Charging
COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Power
TARGET_POWERHAL_VARIANT := qcom

# NFC
BOARD_NFC_CHIPSET := pn547

# RIL
BOARD_RIL_CLASS += $(LOCAL_PATH)/ril

# Time for RIL
PRODUCT_PACKAGES += \
    libtime_genoff
    
# Qualcomm support
TARGET_QCOM_DISPLAY_VARIANT := caf
BOARD_USES_QCOM_HARDWARE := true


# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
  ifeq ($(call match-word-in-list,$(TARGET_BUILD_VARIANT),user),true)
    ifeq ($(WITH_DEXPREOPT_BOOT_IMG_ONLY),)
      WITH_DEXPREOPT_BOOT_IMG_ONLY := true
    endif
  endif
endif

# inherit from the proprietary version
-include vendor/lge/f460/BoardConfigVendor.mk
