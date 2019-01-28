include vendor/echelon/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/echelon/config/BoardConfigQcom.mk
endif

include vendor/echelon/config/BoardConfigSoong.mk
