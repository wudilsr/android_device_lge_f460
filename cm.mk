$(call inherit-product, device/lge/f460/full_f460.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_f460

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="tiger6" \
    PRODUCT_NAME="tiger6_kt_kr" 
