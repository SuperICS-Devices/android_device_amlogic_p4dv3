#Amlogic generic device
include device/amlogic/common/BoardConfig.mk

#Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

#BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#Prebuilt Kernel
TARGET_PREBUILT_KERNEL := device/amlogic/p4dv3/kernel

#TS
BOARD_USE_LEGACY_TOUCHSCREEN:=true

#/proc/mtd READ FROM DEVICE PLEASE
#dev:    size   erasesize  name
#mtd0: 00800000 00200000 "nandboot"
#mtd1: 01000000 00800000 "logo"
#mtd2: 01000000 00800000 "aml_logo"
#mtd3: 02000000 00800000 "recovery"
#mtd4: 02000000 00800000 "boot"
#mtd5: 18000000 00800000 "system"
#mtd6: 08000000 00800000 "cache"
#mtd7: 28000000 00800000 "userdata"
#mtd8: 1b0000000 00800000 "NFTL_Part"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x18000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x28000000
BOARD_FLASH_BLOCK_SIZE := 8388608

#OTHER OPTIONS FOR PERFORMANCE
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
