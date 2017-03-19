# Release name
PRODUCT_RELEASE_NAME := maad

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/glx/maad/device_maad.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maad
PRODUCT_NAME := cm_maad
PRODUCT_BRAND := glx
PRODUCT_MODEL := maad
PRODUCT_MANUFACTURER := glx
