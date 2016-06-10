# Copyright (C) 2011 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/jide/sk1wg/sk1wg-vendor.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

#ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/jide/sk1wg/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

DEVICE_PACKAGE_OVERLAYS += \
	device/jide/sk1wg/overlay

# Root
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/fstab.macallan:root/fstab.macallan \
    device/jide/sk1wg/ueventd.macallan.rc:root/ueventd.macallan.rc

# Init
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/init/init.macallan.rc:root/init.macallan.rc \
    device/jide/sk1wg/init/init.hdcp.rc:root/init.hdcp.rc \
    device/jide/sk1wg/init/init.macallan.usb.rc:root/init.macallan.usb.rc \
    device/jide/sk1wg/init/init.tf.rc:root/init.tf.rc \
    device/jide/sk1wg/init/init.recovery.macallan.rc:root/init.recovery.macallan.rc

# Media
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/jide/sk1wg/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/jide/sk1wg/media/enctune.conf:system/etc/enctune.conf \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# GPS
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/gps/gpsconfig.xml:system/etc/gpsconfig.xml \
    device/jide/sk1wg/gps/libgps.conf:system/etc/libgps.conf \
    device/jide/sk1wg/gps/gps.conf:system/etc/gps.conf

# Audio
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/audio/asound.conf:system/etc/asound.conf \
    device/jide/sk1wg/audio/audioConfig_qvoice_icera_pc400.xml:system/etc/audioConfig_qvoice_icera_pc400.xml \
    device/jide/sk1wg/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/jide/sk1wg/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    device/jide/sk1wg/audio/nvaudio_fx.xml:system/etc/nvaudio_fx.xml

# Audio override
PRODUCT_COPY_FILES_OVERRIDES := \
    system/etc/audio_effects.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/wifi/nvram_4324.txt:system/etc/nvram_4324.txt \
    device/jide/sk1wg/wifi/nvram_43341.txt:system/etc/nvram_43341.txt \
    device/jide/sk1wg/wifi/bcm43241.hcd:system/etc/firmware/bcm43241.hcd \
    device/jide/sk1wg/wifi/bcm43341.hcd:system/etc/firmware/bcm43341.hcd \
    device/jide/sk1wg/wifi/firmware/bcm4324/fw_bcmdhd_apsta.bin:system/vendor/firmware/bcm4324/fw_bcmdhd_apsta.bin \
    device/jide/sk1wg/wifi/firmware/bcm4324/fw_bcmdhd.bin:system/vendor/firmware/bcm4324/fw_bcmdhd.bin \
    device/jide/sk1wg/wifi/firmware/bcm4324/fw_bcmdhd_p2p.bin:system/vendor/firmware/bcm4324/fw_bcmdhd_p2p.bin \
    device/jide/sk1wg/wifi/firmware/bcm43341/fw_bcmdhd_apsta.bin:system/vendor/firmware/bcm43341/fw_bcmdhd_apsta.bin \
    device/jide/sk1wg/wifi/firmware/bcm43341/fw_bcmdhd.bin:system/vendor/firmware/bcm43341/fw_bcmdhd.bin \
    device/jide/sk1wg/wifi/firmware/bcm43341/fw_bcmdhd_p2p.bin:system/vendor/firmware/bcm43341/fw_bcmdhd_p2p.bin \
    device/jide/sk1wg/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/jide/sk1wg/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Power
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/power.macallan.rc:system/etc/power.macallan.rc

# Camera
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/camera/nvcamera.conf:system/etc/nvcamera.conf \
    device/jide/sk1wg/camera/model_frontal.xml:system/etc/model_frontal.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# IDC
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
    device/jide/sk1wg/idc/Goodix_ts.idc:system/usr/idc/Goodix_ts.idc \
    device/jide/sk1wg/idc/hanvon_pen.idc:system/usr/idc/hanvon_pen.idc \
    device/jide/sk1wg/idc/Hanvon_ts.idc:system/usr/idc/Hanvon_ts.idc \
    device/jide/sk1wg/idc/nt1103-ts.idc:system/usr/idc/nt1103-ts.idc \
    device/jide/sk1wg/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/jide/sk1wg/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/jide/sk1wg/idc/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    device/jide/sk1wg/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc \
    device/jide/sk1wg/idc/touch_fusion.idc:system/usr/idc/touch_fusion.idc

# Keylayout
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/jide/sk1wg/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/jide/sk1wg/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/jide/sk1wg/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/jide/sk1wg/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/jide/sk1wg/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/jide/sk1wg/keylayout/Vendor_0b05_Product_4500.kl:system/usr/keylayout/Vendor_0b05_Product_4500.kl \
    device/jide/sk1wg/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
    device/jide/sk1wg/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
    device/jide/sk1wg/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
    device/jide/sk1wg/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
    device/jide/sk1wg/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
    device/jide/sk1wg/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/jide/sk1wg/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
    device/jide/sk1wg/keylayout/Vendor_18d1_Product_2c40.kl:system/usr/keylayout/Vendor_18d1_Product_2c40.kl \
    device/jide/sk1wg/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/jide/sk1wg/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_b501.kl:system/usr/keylayout/Vendor_046d_Product_b501.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/jide/sk1wg/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/jide/sk1wg/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/jide/sk1wg/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
    device/jide/sk1wg/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
    device/jide/sk1wg/keylayout/Vendor_1017_Product_1006.kl:system/usr/keylayout/Vendor_1017_Product_1006.kl \
    device/jide/sk1wg/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
    device/jide/sk1wg/keylayout/Vendor_1532_Product_0900.kl:system/usr/keylayout/Vendor_1532_Product_0900.kl \
    device/jide/sk1wg/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
    device/jide/sk1wg/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
    device/jide/sk1wg/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
    device/jide/sk1wg/keylayout/Vendor_1949_Product_0401.kl:system/usr/keylayout/Vendor_1949_Product_0401.kl \
    device/jide/sk1wg/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
    device/jide/sk1wg/keylayout/Vendor_2378_Product_1008.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
    device/jide/sk1wg/keylayout/Vendor_0b05_Product_17fc.kl:system/usr/keylayout/Vendor_0b05_Product_17fc.kl

# Keylayout overrides
PRODUCT_COPY_FILES_OVERRIDES += \
    system/usr/keylayout/AVRCP.kl \
    system/usr/keylayout/ft5x06_ts.kl \
    system/usr/keylayout/Generic.kl \
    system/usr/keylayout/gpio-keys.kl \
    system/usr/keylayout/himax-touchscreen.kl \
    system/usr/keylayout/qwerty.kl \
    system/usr/keylayout/Vendor_0b05_Product_4500.kl \
    system/usr/keylayout/Vendor_1bad_Product_f016.kl \
    system/usr/keylayout/Vendor_1bad_Product_f023.kl \
    system/usr/keylayout/Vendor_1bad_Product_f027.kl \
    system/usr/keylayout/Vendor_1bad_Product_f036.kl \
    system/usr/keylayout/Vendor_1d79_Product_0009.kl \
    system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    system/usr/keylayout/Vendor_12bd_Product_d015.kl \
    system/usr/keylayout/Vendor_18d1_Product_2c40.kl \
    system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    system/usr/keylayout/Vendor_045e_Product_028e.kl \
    system/usr/keylayout/Vendor_046d_Product_b501.kl \
    system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    system/usr/keylayout/Vendor_046d_Product_c216.kl \
    system/usr/keylayout/Vendor_046d_Product_c219.kl \
    system/usr/keylayout/Vendor_046d_Product_c294.kl \
    system/usr/keylayout/Vendor_046d_Product_c299.kl \
    system/usr/keylayout/Vendor_046d_Product_c532.kl \
    system/usr/keylayout/Vendor_054c_Product_0268.kl \
    system/usr/keylayout/Vendor_0079_Product_0011.kl \
    system/usr/keylayout/Vendor_0583_Product_2060.kl \
    system/usr/keylayout/Vendor_1017_Product_1006.kl \
    system/usr/keylayout/Vendor_1038_Product_1412.kl \
    system/usr/keylayout/Vendor_1532_Product_0900.kl \
    system/usr/keylayout/Vendor_1689_Product_fd00.kl \
    system/usr/keylayout/Vendor_1689_Product_fd01.kl \
    system/usr/keylayout/Vendor_1689_Product_fe00.kl \
    system/usr/keylayout/Vendor_1949_Product_0401.kl \
    system/usr/keylayout/Vendor_2378_Product_100a.kl \
    system/usr/keylayout/Vendor_2378_Product_100a.kl \
    system/usr/keylayout/Vendor_0b05_Product_17fc.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# JIDE
PRODUCT_COPY_FILES += \
    device/jide/sk1wg/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml \
    device/jide/sk1wg/permissions/com.nvidia.feature.xml:system/etc/permissions/com.nvidia.feature.xml \
    device/jide/sk1wg/permissions/com.nvidia.graphics.xml:system/etc/permissions/com.nvidia.graphics.xml \
    device/jide/sk1wg/permissions/com.nvidia.miracast.xml:system/etc/permissions/com.nvidia.miracast.xml \
    device/jide/sk1wg/permissions/com.nvidia.nvstereoutils.xml:system/etc/permissions/com.nvidia.nvstereoutils.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ap.interface=wlan1 \
    ro.carrier=wifi-only \
    ro.sf.override_null_lcd_density = 1 \
    persist.tegra.compositor=glcomposer \
    debug.hwui.render_dirty_regions=false \
    persist.tegra.nvmmlite = 1 \
    drm.service.enabled=true \
    tf.enable=y \
    persist.sys.isUsbOtgEnabled=true \
    sys.io.scheduler=bfq

# Audio
PRODUCT_PACKAGES += \
        audio.a2dp.default \
        audio.usb.default \
        audio.r_submix.default \
        libaudioutils

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
       make_ext4fs

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := sk1wg
PRODUCT_DEVICE := sk1wg
PRODUCT_MODEL := REMIX SK1WG
PRODUCT_BRAND := Jide
PRODUCT_MANUFACTURER := JIDE
