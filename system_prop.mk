# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.chip.vendor=brcm \
    ro.bt.bdaddr_path="/data/misc/bluetooth/bdaddr" \
    persist.service.avrcp.browsing=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
   rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
   persist.rild.nitz_plmn="" \
   persist.rild.nitz_long_ons_0="" \
   persist.rild.nitz_long_ons_1="" \
   persist.rild.nitz_long_ons_2="" \
   persist.rild.nitz_long_ons_3="" \
   persist.rild.nitz_short_ons_0="" \
   persist.rild.nitz_short_ons_1="" \
   persist.rild.nitz_short_ons_2="" \
   persist.rild.nitz_short_ons_3="" \
   ril.subscription.types=NV,RUIM \
   DEVICE_PROVISIONED=1 \
   persist.radio.apm_mdm_not_pwdn=1 \
   ro.telephony.default_network=9 \
   persist.radio.add_power_save=1 \
   ro.ril.telephony.mqanelements=5 \
   ro.telephony.ril_class=LgeLteRIL \
   ro.vendor.extension_library=libqc-opt.so \
   persist.qcril.disable_retry=true

# mdp
PRODUCT_PROPERTY_OVERRIDES += \
   debug.sf.hw=0 \
   debug.egl.hw=0 \
   persist.hwc.mdpcomp.enable=true \
   debug.mdpcomp.logs=0 \
   ro.sf.lcd_density=560 \
   ro.opengles.version=196609 \
   ro.qualcomm.cabl=1

# audio 
PRODUCT_PROPERTY_OVERRIDES += \
   tunnel.audio.encode = false \
   audio.offload.video=true \
   use.voice.path.for.pcm.voip=true \
   audio.offload.gapless.enabled=true \
   audio.offload.buffer.size.kb=32

# media
PRODUCT_PROPERTY_OVERRIDES += \
   qcom.hw.aac.encoder=true \
   media.stagefright.enable-player=true \
   media.stagefright.enable-http=true \
   media.stagefright.enable-aac=true \
   media.stagefright.enable-qcp=true \
   media.stagefright.enable-fma2dp=true \
   media.stagefright.enable-scan=true \
   mmp.enable.3g2=true \
   media.aac_51_output_enabled=true \
   mm.enable.smoothstreaming=true \
   mm.enable.qcom_parser=3183219 \
   persist.mm.enable.prefetch=true \
   media.stagefright.use-awesome=true \
   ro.qc.sdk.audio.ssr=false \
   ro.qc.sdk.audio.fluencetype=fluence \
   persist.audio.fluence.voicecall=true \
   persist.audio.fluence.voicerec=false \
   persist.audio.fluence.speaker=true \
   audio.offload.pcm.16bit.enable=false \
   audio.offload.pcm.24bit.enable=true \
   audio.offload.pcm.enable=true \
   audio.offload.video=false \
   audio.offload.gapless.enabled=false \
   audio.offload.multiple.enabled=false \
   audio.offload.passthrough=false \
   av.offload.enable=true \
   av.streaming.offload.enable=true

# radio
PRODUCT_PROPERTY_OVERRIDES += \
   ro.use_data_netmgrd=true \
   persist.data.netmgrd.qos.enable=true \
   persist.data.qmi.adb_logmask=0

# time services
PRODUCT_PROPERTY_OVERRIDES += \
   persist.timed.enable=true

# bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
   bt.max.hfpclient.connections=1 \
   qcom.bluetooth.soc=rome

# sdcard
PRODUCT_PROPERTY_OVERRIDES += \
   persist.fuse_sdcard=true

# RmNet
PRODUCT_PROPERTY_OVERRIDES += \
   persist.rmnet.data.enable=true \
   persist.data.wda.enable=true \
   persist.data.df.dl_mode=5 \
   persist.data.df.ul_mode=5 \
   persist.data.df.agg.dl_pkt=10 \
   persist.data.df.agg.dl_size=4096 \
   persist.data.df.mux_count=8 \
   persist.data.df.iwlan_mux=9 \
   persist.data.df.dev_name=rmnet_usb0 \
   persist.data.llf.enable=true

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
   ro.nfc.port=I2C

# vm tune
PRODUCT_PROPERTY_OVERRIDES += \
   dalvik.vm.dex2oat-thread_count=4

# maintainer
PRODUCT_PROPERTY_OVERRIDES += \
  ro.mk.maintainer=JZshminer
  