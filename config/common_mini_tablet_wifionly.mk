# Inherit mini common echelon stuff
$(call inherit-product, vendor/echelon/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
