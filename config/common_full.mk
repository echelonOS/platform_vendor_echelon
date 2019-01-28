# Inherit common echelon stuff
$(call inherit-product, vendor/echelon/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
