# Release name
PRODUCT_RELEASE_NAME := p4dv3

# Inherit device configuration
$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/mdpi.mk)

$(call inherit-product, vendor/osr/products/high_tablet_device.mk)

$(call inherit-product, device/amlogic/p4dv3/full_p4dv3.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

PRODUCT_CHARACTERISTICS := tablet

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=aml8726m BUILD_FINGERPRINT="motorola/tervigon/wingray:4.0.4/IMM76/292727:user/release-keys" PRIVATE_BUILD_DESC="tervigon-user 4.0.4 IMM76 292727 release-keys"

PRODUCT_PACKAGE_OVERLAYS += device/amlogic/p4dv3/overlay

# Inherit Facelock blobs
-include vendor/osr/products/facelock.mk

# Inherit Theme Chooser
-include vendor/osr/products/themes_common.mk

PRODUCT_LOCALES := es_ES ca_ES fr_FR it_IT de_DE nl_NL pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR en_US pt_PT en_GB ro_RO mdpi

## Device identifier. This must come after all inclusions
PRODUCT_NAME := osr_p4dv3
PRODUCT_BRAND := google
PRODUCT_DEVICE := p4dv3
PRODUCT_MODEL := NVSBL P4D v3
PRODUCT_MANUFACTURER := Amlogic
PRODUCT_VERSION_MAINTENANCE := 0

