#
# Copyright (C) 2015 The CyanogenMod Project
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

DEVICE_PACKAGE_OVERLAYS += device/jide/sk1wg/overlay

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := false

# Use the non-open-source parts, if they're present
-include vendor/jide/sk1wg/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/jide/sk1wg/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

# Assert
TARGET_OTA_ASSERT_DEVICE := sk1wg

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := macallan
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := tegraid=35.1.2.0.0 mem=1941M@2048M memtype=0 vpr=96M@3997M tsec=4M@3993M otf_key=b5923b9204a2b24418ffcda6080239e8 commchip_id=0 usb_port_owner_info=0 emc_max_dvfs=0 androidboot.serialno=FL4R30155066006K androidboot.commchip_id=0 androidboot.modem=none video=tegrafb no_console_suspend=1 console=ttyS0,115200n8 debug_uartport=lsport,3 usbcore.old_scheme_first=1 lp0_vec=2656@0xf95ff000 tegra_fbmem=16596484@0xace23000 core_edp_mv=1170 core_edp_ma=8000 pmuboard=0x8021:0xdb4c:0x29:0x80:0x00 displayboard=0x065b:0x03e8:0x02:0x43:0x03 display_panel=0 power_supply=Battery audio_codec=rt5640 board_info=621:3ea:0:43:3 tegraboot=sdmmc gpt gpt_sector=45055 modem_id=0 nck=1048576@0xf9800000 androidboot.mode=normal power-config=0x00 pmic_rst_reason=0x00000001 android.kerneltype=normal androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE := video=tegrafb no_console_suspend=1 console=ttyS0,115200n8 debug_uartport=lsport,3 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK := device/jide/sk1wg/mkbootimg.mk

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/jide/sk1wg
TARGET_KERNEL_CONFIG := cyanogenmod_sk1wg_defconfig
#TARGET_PREBUILT_KERNEL := device/jide/sk1wg/kernel

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/jide/sk1wg/bluetooth

# Graphics
USE_OPENGL_RENDERER := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#SF_VSYNC_EVENT_PHASE_OFFSET_NS := 1
#HWUI_COMPILE_FOR_PERF := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Media
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
TARGET_RELEASETOOLS_EXTENSIONS := device/jide/sk1wg

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608		# 8M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608		# 8M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000		# 1000M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 60578332672	# 56.4G
BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368		# 768M
BOARD_FLASH_BLOCK_SIZE := 4096

# PowerHAL
TARGET_POWERHAL_VARIANT := tegra

# Recovery
RECOVERY_FSTAB_VERSION := 2
RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := device/jide/sk1wg/fstab.macallan
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD -DADD_LEGACY_MEMORY_DEALER_CONSTRUCTOR_SYMBOL

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
#BOARD_WLAN_DEVICE_REV := bcm4330_b2
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm43341/fw_bcmdhd.bin"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

# Previous version of WIFI_DRIVER
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/bcm43341/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/bcm43341/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/bcm43341/fw_bcmdhd_p2p.bin"

MALLOC_IMPL := dlmalloc

# SELINUX Defines
BOARD_SEPOLICY_DIRS := device/jide/sk1wg/sepolicy/common \
                       device/jide/sk1wg/sepolicy/raydium \
                       device/jide/sk1wg/sepolicy/product \
                       device/jide/sk1wg/sepolicy/sk1wg

POLICYVERS := 26

# BOARD_SEPOLICY_UNION is no longer needed.

BOARD_HARDWARE_CLASS := device/jide/sk1wg/cmhw

# Vendor Init - no need by now
#TARGET_INIT_VENDOR_LIB := libinit_sk1wg
#TARGET_LIBINIT_DEFINES_FILE := device/jide/sk1wg/init/init_sk1wg.c
