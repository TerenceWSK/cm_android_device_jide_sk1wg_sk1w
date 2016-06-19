#
# Copyright (C) 2011 The Android Open-Source Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

ifneq ($(filter sk1wg,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# copy audio_effects override
$(shell mkdir -p $(TARGET_OUT_ETC); \
        cp -pf device/jide/sk1wg/audio/audio_effects.conf $(TARGET_OUT_ETC))

# copy keylayout overrides
$(shell mkdir -p $(TARGET_OUT_KEYLAYOUT); \
        cp -pf device/jide/sk1wg/keylayout/AVRCP.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/ft5x06_ts.kl $(TARGET_OUT_KEYLAYOUT); \
        cp -pf device/jide/sk1wg/keylayout/Generic.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/gpio-keys.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/himax-touchscreen.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/qwerty.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0b05_Product_4500.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1bad_Product_f016.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1bad_Product_f023.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1bad_Product_f027.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1bad_Product_f036.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1d79_Product_0009.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_05ac_Product_0239.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_12bd_Product_d015.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_18d1_Product_2c40.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_22b8_Product_093d.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_045e_Product_028e.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_b501.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c21d.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c21f.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c216.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c219.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c294.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c299.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_046d_Product_c532.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_054c_Product_0268.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0079_Product_0011.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0583_Product_2060.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1017_Product_1006.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1038_Product_1412.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1532_Product_0900.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1689_Product_fd00.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1689_Product_fd01.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1689_Product_fe00.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_1949_Product_0401.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_2378_Product_100a.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_2378_Product_1008.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0955_Product_7202.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0955_Product_7203.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0955_Product_7210.kl $(TARGET_OUT_KEYLAYOUT); \
	cp -pf device/jide/sk1wg/keylayout/Vendor_0b05_Product_17fc.kl $(TARGET_OUT_KEYLAYOUT))


# copy set_backlight in to recovery
$(shell mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/sbin; \
        cp -pf device/jide/sk1wg/recovery/set_backlight.sh $(TARGET_RECOVERY_ROOT_OUT)/sbin)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
