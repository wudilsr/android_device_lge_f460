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

PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/full_f460.mk \
	$(LOCAL_DIR)/lineage.mk

COMMON_LUNCH_CHOICES := \
    lineage_f460-user \
    lineage_f460-userdebug \
    lineage_f460-eng	
	
