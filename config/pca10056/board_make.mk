NRF_SOC              := nrf52840

SRC_FILES += \
  $(SDK_ROOT)/modules/nrfx/mdk/gcc_startup_$(NRF_SOC).S \
  $(SDK_ROOT)/modules/nrfx/mdk/system_$(NRF_SOC).c \
  
CFLAGS += -DNRF52840_XXAA

ASMFLAGS += -DNRF52840_XXAA
