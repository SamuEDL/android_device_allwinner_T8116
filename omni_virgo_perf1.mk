#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from virgo_perf1 device
$(call inherit-product, device/allwinner/virgo_perf1/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := virgo_perf1
PRODUCT_NAME := omni_virgo_perf1
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := Moaan-SR9
PRODUCT_MANUFACTURER := allwinner
PRODUCT_RELEASE_NAME := Allwinner Moaan-SR9

PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Allwinner/virgo_perf1/virgo-perf1:8.1.0/OPM1.171019.026/20201217-192614:user/test-keys"
    PRIVATE_BUILD_DESC="virgo_perf1-user 8.1.0 OPM1.171019.026 20201217-192614 test-keys"