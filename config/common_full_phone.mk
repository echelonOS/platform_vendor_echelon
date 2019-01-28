# Inherit full common echelon stuff
$(call inherit-product, vendor/echelon/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/echelon/overlay/dictionaries

$(call inherit-product, vendor/echelon/config/telephony.mk)
