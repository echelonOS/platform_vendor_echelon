# Inherit full common echelon stuff
$(call inherit-product, vendor/echelon/config/common_full.mk)

PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/echelon/overlay/tv
