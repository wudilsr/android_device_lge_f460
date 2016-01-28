$(call inherit-product, device/lge/f460/full_f460.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_f460

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="tiger6" \
    PRODUCT_NAME="tiger6_kt_kr" \
    BUILD_FINGERPRINT="lge/tiger6_kt_kr/tiger6:6.0/MRA58K/15351124649f4:user/release-keys" \
    PRIVATE_BUILD_DESC="JZ_tiger6_kt_kr-user 6.0 MRA58K 15351124649f4 release-keys"
