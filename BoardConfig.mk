LOCAL_PATH := device/samsung/nobleltetmo

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := cm_nobleltejv_defconfig

# RIL
BOARD_MODEM_TYPE := ss333

# Recovery
TARGET_OTA_ASSERT_DEVICE := nobleltejv,noblelte

# /proc/partitions * 2 (why?) * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 29360128
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35651584
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4404019200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27032289280 #32GB

# Inherit common board flags
include device/samsung/noblelte-common/BoardConfigCommon.mk
