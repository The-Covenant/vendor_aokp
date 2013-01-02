## Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SGR

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i927/full_i927.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i927
PRODUCT_NAME := aokp_i927
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-I927

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I927 TARGET_DEVICE=SGH-I927 BUILD_FINGERPRINT=samsung/SGH-I927/SGH-I927:4.0.4/IMM76D/UCLG9/test-keys PRIVATE_BUILD_DESC="SGH-I927-eng 4.0.4 IMM76D UCLG9 test-keys"

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
