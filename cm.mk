TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Inherit device configuration for tf701t.
$(call inherit-product, device/jide/sk1wg/sk1wg.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_sk1wg
PRODUCT_BRAND := Jide
PRODUCT_DEVICE := sk1wg
PRODUCT_MODEL := REMIX SK1WG
PRODUCT_MANUFACTURER := JIDE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=JIDE-SK1WG BUILD_FINGERPRINT=Jide/sk1wg/sk1wg:5.1.1/LMY47V/B2016051203:user/release-keys PRIVATE_BUILD_DESC="sk1wg-user 5.1.1 LMY47V B2016040701 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := sk1wg
