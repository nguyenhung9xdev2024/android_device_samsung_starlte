#
# Copyright (C) 2021 The LineageOS Project
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

### PLATFORM
$(call inherit-product, device/samsung/exynos9810-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/starlte/starlte-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# OpenGapps
GAPPS_VARIANT := pico

GAPPS_EXCLUDED_PACKAGES += \
    GearheadStub \
    DialerFramework \
    GoogleTTS \
    PackageInstallerGoogle \
    SetupWizard
    #CalSync

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)  

DEVICE_PATH := device/samsung/starlte

DEVICE_PACKAGE_OVERLAYS += \
	$(DEVICE_PATH)/overlay \
	$(DEVICE_PATH)/overlay-lineage

#include $(DEVICE_PATH)/device/*.mk
