LOCAL_PATH := device/lge/f460
$(call inherit-product-if-exists, vendor/lge/f460/device-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System properties
#-include $(LOCAL_PATH)/system_prop.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi 560dpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

#init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init/fstab.tiger6:root/fstab.tiger6 \
    $(LOCAL_PATH)/rootdir/init/init.apq8084.crash.sh:root/init.apq8084.crash.sh \
    $(LOCAL_PATH)/rootdir/init/init.apq8084.sensor.sh:root/init.apq8084.sensor.sh \
    $(LOCAL_PATH)/rootdir/init/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/init/init.lge.bt_vendor.rc:root/init.lge.bt_vendor.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.power.rc:root/init.lge.power.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.default.sh:root/init.lge.usb.default.sh \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init/init.tiger6.rc:root/init.tiger6.rc \
    $(LOCAL_PATH)/rootdir/init/ueventd.tiger6.rc:root/ueventd.tiger6.rc \
    $(LOCAL_PATH)/rootdir/sbin/chargerlogo:root/sbin/chargerlogo \
    $(LOCAL_PATH)/rootdir/sbin/pub:root/sbin/pub \
    $(LOCAL_PATH)/rootdir/sbin/rctd:root/sbin/rctd 

# WiFi cal NVRAM file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Display
PRODUCT_PACKAGES += \
	copybit.apq8084 \
    gralloc.apq8084 \
    hwcomposer.apq8084 \
    memtrack.apq8084 \
	
# Audio
#PRODUCT_PACKAGES += \
    #audiod \
    #audio.a2dp.default \
    #audio.primary.apq8084 \
    #audio.r_submix.default \
    #audio.usb.default \
    #audio_policy.apq8084  \
	
# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml 

# Audio effects
#PRODUCT_PACKAGES += \
    #libaudio-resampler \
    #libqcompostprocbundle \
    #libqcomvisualizer \
    #libqcomvoiceprocessing  \
    #tinycap \
    #tinyloop \
    #tinymix \
    #tinyplay

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensor_def_common.conf:system/etc/sensors/sensor_def_common.conf \
    $(LOCAL_PATH)/sensors/sensor_def_variable.conf:system/etc/sensors/sensor_def_variable.conf

# JZ note: enable it until we find usable thermal-engine
#PRODUCT_COPY_FILES += \
#   $(LOCAL_PATH)/conf/thermal-engine-8084.conf:system/etc/thermal-engine-8084.conf \
#   $(LOCAL_PATH)/conf/thermal-engine-default.conf:system/etc/thermal-engine-default.conf
      
# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# misc configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf

	
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml
    
# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidcCommon \
    libqcmediaplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Bluetooth
PRODUCT_PACKAGES += \
    bdAddrLoader 
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hcidump.sh:system/etc/hcidump.sh \
	$(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
	
# Keymaster
PRODUCT_PACKAGES += \
    keystore.apq8084

# GPS
PRODUCT_PACKAGES += \
    gps.apq8084
	
# Lights
PRODUCT_PACKAGES += \
    lights.apq8084

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
	libnfc_ndef \
	libnfc-nxp-nci \
	Tag

    

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp-lg.conf:system/etc/libnfc-nxp-lg.conf

# Power
PRODUCT_PACKAGES += \
    power.apq8084

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf
    
# DATA_OS
PRODUCT_PACKAGES += \
	librmnetctl \
	rmnetcli

# use qcom LLVM
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

# ppp
PRODUCT_PACKAGES += ip-up-vpn

# SOFTAP
PRODUCT_PACKAGES += \
	libQWiFiSoftApCfg \
	libqsap_sdk

# CRDA
PRODUCT_PACKAGES += \
	init.crda.sh
	
# tcmiface for tcm support
PRODUCT_PACKAGES += tcmiface
