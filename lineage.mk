#
# Copyright 2016 The LineageOS Project
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
#


# Inherit some common LineageOS stuff.

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/lge/f460/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := f460
PRODUCT_NAME := lineage_f460
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F460

PRODUCT_GMS_CLIENTID_BASE := android-lge
