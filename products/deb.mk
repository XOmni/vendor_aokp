# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

# Deb Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/deb

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := aokp_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razorg/deb:4.3/JSS15Q/779366:user/release-keys PRIVATE_BUILD_DESC="razorg-user 4.3 JSS15Q 779366 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

