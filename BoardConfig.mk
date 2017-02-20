LOCAL_PATH := device/samsung/nobleltetmo

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := cm_nobleltetmo_defconfig

# RIL
BOARD_MODEM_TYPE := ss333

# Recovery
TARGET_OTA_ASSERT_DEVICE := nobleltejv,noblelte

# Inherit common board flags
include device/samsung/noblelte-common/BoardConfigCommon.mk
