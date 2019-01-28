PRODUCT_VERSION = 0.1
ifneq ($(ECHELON_BUILDTYPE),)
ECHELON_VERSION := echelonOS-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(ECHELON_BUILD)-$(ECHELON_BUILDTYPE)
else
ECHELON_VERSION := echelonOS-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(ECHELON_BUILD)-Unofficial
ECHELON_BUILDTYPE := Unofficial
endif

# ECHELON System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.echelon.version=$(ECHELON_VERSION) \
    ro.echelon.releasetype=$(ECHELON_BUILDTYPE) \
    ro.echelon.build.version=$(PRODUCT_VERSION) \
    ro.modversion=$(ECHELON_VERSION) \
