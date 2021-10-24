NRF_SOC              := nrf52832

SRC_FILES += \
  $(SDK_ROOT)/modules/nrfx/mdk/gcc_startup_nrf52.S \
  $(SDK_ROOT)/modules/nrfx/mdk/system_nrf52.c \

CFLAGS += -DNRF52
CFLAGS += -DNRF52832_XXAA
CFLAGS += -DNRF52_PAN_74

ASMFLAGS += -DNRF52
ASMFLAGS += -DNRF52832_XXAA
ASMFLAGS += -DNRF52_PAN_74