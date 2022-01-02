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

$(call inherit-product-if-exists, vendor/lge/f460/device-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# This device is 560dpi.  However the platform doesn't
# currently contain all of the bitmaps at 560dpi density so
# we do this little trick to fall back to the xxhdpi version
# if the 560dpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

#init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init/fstab.tiger6:root/fstab.tiger6 \
    $(LOCAL_PATH)/rootdir/init/init.apq8084_core.rc:root/init.apq8084_core.rc \
    $(LOCAL_PATH)/rootdir/init/init.apq8084.crash.sh:root/init.apq8084.crash.sh \
    $(LOCAL_PATH)/rootdir/init/init.apq8084.sensor.sh:root/init.apq8084.sensor.sh \
    $(LOCAL_PATH)/rootdir/init/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/init/init.lge.bt_vendor.rc:root/init.lge.bt_vendor.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.fs.rc:root/init.lge.fs.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.power.rc:root/init.lge.power.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.svelte.rc:root/init.lge.svelte.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.default.sh:root/init.lge.usb.default.sh \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.rc:root/init.lge.usb.rc \
    $(LOCAL_PATH)/rootdir/init/init.lge.usb.sh:root/init.lge.usb.sh \
    $(LOCAL_PATH)/rootdir/init/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init/init.tiger6_core.rc:root/init.tiger6_core.rc \
    $(LOCAL_PATH)/rootdir/init/init.tiger6_product.rc:root/init.tiger6_product.rc \
    $(LOCAL_PATH)/rootdir/init/init.tiger6.rc:root/init.tiger6.rc \
    $(LOCAL_PATH)/rootdir/init/init.tiger6.power.rc:root/init.tiger6.power.rc \
    $(LOCAL_PATH)/rootdir/init/ueventd.tiger6.rc:root/ueventd.tiger6.rc \
    $(LOCAL_PATH)/rootdir/sbin/sharpening:root/sbin/sharpening

# WiFi cal NVRAM file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
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

PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.memtrack@1.0-impl \
    copybit.apq8084 \
    gralloc.apq8084 \
    hwcomposer.apq8084 \
    memtrack.apq8084 \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl
    
# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    audiod \
    audio.a2dp.default \
    audio.primary.apq8084 \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.apq8084 \
    tinymix \
    tinyloop \
    tinyplay \
    tinycap \
    libtinyxml \
    libtinyxml2
    
# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml 

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml
    
# Audio effects
PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing 

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensor_def_common.conf:system/etc/sensors/sensor_def_common.conf \
    $(LOCAL_PATH)/sensors/sensor_def_variable.conf:system/etc/sensors/sensor_def_variable.conf

# JZ note: enable it until we find usable thermal-engine
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/thermal-engine-8084.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8084.conf \
   $(LOCAL_PATH)/configs/thermal-engine-default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-default.conf
      
# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# misc configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# rssi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/rssi.xml:system/etc/rssi.xml
    
# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libmm-omxcore \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVdecHevc \
    libstagefrighthw \
    libstagefright_omx \
    libqomx_core \
    libqcmediaplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += qcmediaplayer

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor \
    hwaddrs \
    bdAddrLoader 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    camera.device@1.0-impl-legacy \
    Snap \
    camera.apq8084

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni
    
# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs
    
# Location
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    gps.apq8084
    
# Keymaster
PRODUCT_PACKAGES += \
    keystore.apq8084 \
    android.hardware.keymaster@3.0-impl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.apq8084

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.apq8084 \
    Tag

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_VENDOR)/etc/nfcee_access.xml

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    power.apq8084

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libwpa_client \
    hostapd \
    hostapd_cli \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# RIL symbols
PRODUCT_PACKAGES += \
    liblge \
    libcurl \
    librmnetctl \
    libtime_genoff
    
# Qualcomm
PRODUCT_PACKAGES += \
    dsi_config.xml \
    netmgr_config.xml \
    qmi_config.xml
    
# ppp
PRODUCT_PACKAGES += ip-up-vpn

# tcmiface for tcm support
PRODUCT_PACKAGES += tcmiface

PRODUCT_BOOT_JARS += \
    tcmiface
    
# Radio
PRODUCT_PACKAGES += \
    libxml2

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy
        
# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl
    
# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.period_size=192
