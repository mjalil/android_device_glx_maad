USE_CAMERA_STUB := true

include device/cyanogen/mt6735-common/BoardConfigCommon.mk

# Include maad properties
TARGET_SYSTEM_PROP += device/glx/maad/system.prop

# inherit from the proprietary version
-include vendor/glx/maad/BoardConfigVendor.mk

# kernel: remove architecture variables in favor of 'mt6735-common' board config
TARGET_BOARD_SUFFIX := _64

TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := maad

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
# end kernel

# fix this up by examining /proc/mtd on a running device
# jalilnejad: read from sp flash tool scatter file
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE:=419430400
# end
BOARD_FLASH_BLOCK_SIZE := 131072

# kernel build : override kernel source in device/cyanogen/mt6735-common/BoardConfigCommon.mk
# to be removed
TARGET_KERNEL_SOURCE :=
TARGET_PREBUILT_KERNEL := device/glx/maad/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
