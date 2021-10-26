#
# Copyright (C) 2020 The LineageOS Project
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

include device/samsung/exynos9810-common/BoardConfigPlatform.mk
include vendor/samsung/starlte/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/starlte

PRODUCT_PLATFORM := exynos9810

TARGET_OTA_ASSERT_DEVICE := starlte

TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/hardware/include

### DISPLAY
TARGET_SCREEN_DENSITY := 560

### KERNEL
TARGET_KERNEL_CONFIG := exynos9810-starlte_defconfig

### VENDOR SECURITY PATCH DATE
VENDOR_SECURITY_PATCH := 2021-08-01
