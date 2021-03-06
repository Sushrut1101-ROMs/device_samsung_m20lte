DEVICE_PATH := device/samsung/m20lte

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_m20lte

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_CONFIG := m20lte_defconfig
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888

# Dynamic Partitions
BOARD_SUPER_PARTITION_METADATA_DEVICE := SYSTEM
BOARD_SUPER_PARTITION_BLOCK_DEVICES := \
	SYSTEM \
	VENDOR
BOARD_SUPER_PARTITION_SIZE := 4018143232
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 4013948928
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3565158400
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 452984832

BOARD_ROOT_EXTRA_SYMLINKS := /mnt/vendor/efs:/efs

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.exynos7904

# Sepolicy
BOARD_SEPOLICY_TEE_FLAVOR := mobicore

# SPL
VENDOR_SECURITY_PATCH := 2021-07-01

# Inherit common board flags
include device/samsung/universal7904-common/BoardConfigCommon.mk

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/android.hardware.keymaster@3.0-service.xml
