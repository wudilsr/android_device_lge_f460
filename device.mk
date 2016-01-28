$(call inherit-product-if-exists, vendor/lge/f460/device-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System properties
# -include $(LOCAL_PATH)/system_prop.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi 560dpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

#init files
PRODUCT_PACKAGES += \
    fstab.tiger6 \
    $(LOCAL_PATH)/rootdir/init.apq8084_core.rc:root/init.apq8084_core.rc \
    $(LOCAL_PATH)/rootdir/init.apq8084.sensor.sh:root/init.apq8084.sensor.sh \
    $(LOCAL_PATH)/rootdir/init.lge.bt_vendor.rc:root/init.lge.bt_vendor.rc \
    $(LOCAL_PATH)/rootdir/init.lge.power.rc:root/init.lge.power.rc \
    $(LOCAL_PATH)/rootdir/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/rootdir/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.modem_links.sh:root/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.tiger6_core.rc:root/init.tiger6_core.rc \
    $(LOCAL_PATH)/rootdir/init.tiger6_product.rc:root/init.tiger6_product.rc \
    $(LOCAL_PATH)/rootdir/init.tiger6.rc:root/init.tiger6.rc \ 

# Add WiFi Firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
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

# Display
PRODUCT_PACKAGES += \
    gralloc.apq8084 \
    hwcomposer.apq8084 \
    memtrack.apq8084 \
	libc2dcolorconvert \
    liboverlay
	
# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.apq8084 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.apq8084 
	
# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml 

# Audio effects
PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    tinycap \
    tinyloop \
    tinymix \
    tinyplay

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

# WiFi cal NVRAM file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

	  
# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf


# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# misc configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf \
    $(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf
	
# CONNECTIVITY
PRODUCT_PACKAGES += \
	libcnefeatureconfig
	
	
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml
    #frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libqcmediaplayer \
    libstagefrighthw \
    mm-venc-omx-test720p \
    mm-video-driver-test \
    mm-video-encdrv-test \
    qcmediaplayer
	
PRODUCT_BOOT_JARS += qcmediaplayer

# Bluetooth
PRODUCT_PACKAGES += \
    #bdAddrLoader 
	
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
	Tag
	#libnfc-nxp-nci \
    

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp-lg.xml:system/etc/libnfc-nxp-lg.xml

# Power
PRODUCT_PACKAGES += \
    power.apq8084

# Camera
PRODUCT_PACKAGES += \
    camera.apq8084 \
    libxml2

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

# temp
SKIP_BOOT_JARS_CHECK := true
