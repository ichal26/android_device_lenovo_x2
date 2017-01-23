# inherit from the proprietary version
-include vendor/lenovo/x2eu/BoardConfigVendor.mk

DEVICE_FOLDER_COMMON := device/lenovo/x2eu
#X2_DEVICE:=eu

# Off ninja
USE_NINJA=false

# Platform
TARGET_BOARD_PLATFORM := mt6595
TARGET_NO_BOOTLOADER := true

TARGET_LDPRELOAD += libxlog.so:libmtkabi.so

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6595

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28877258752
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0x40000000 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x04000000 \
	--second_offset 0x00f00000 \
	--tags_offset 0x0e000000 \
	--board 32

TARGET_PREBUILT_KERNEL := device/lenovo/x2eu/prebuilt/kernel


# build kernel from source
#TARGET_KERNEL_SOURCE := kernel/lenovo/x2eu
#TARGET_KERNEL_ARCH := arm
#TARGET_KERNEL_HEADER_ARCH := arm
#TARGET_KERNEL_CONFIG := x2eu_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := kernel/lenovo/toolchain/bin/arm-eabi-
#BOARD_KERNEL_IMAGE_NAME := zImage
#MTK_APPENDED_DTB_SUPPORT := 

#BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_KMODULES := true

BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG := $(DEVICE_FOLDER_COMMON)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Sensors
BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M

# MTK Hardware
MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

#BOARD_HAVE_OPENSOURCE_IMMVIBE := true
#BOARD_HARDWARE_CLASS := $(DEVICE_FOLDER_COMMON)/cmhw

# Audio
# source-compiled TFA9890 support
#NXP_SMARTPA_SUPPORT := tfa9890

# Include path
#TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_FOLDER_COMMON)/include

# RIL
BOARD_PROVIDES_RILD := true
MTK_CIP_SUPPORT := yes
MTK_DT_SUPPORT := no
MTK_VT3G324M_SUPPORT := no
MTK_UMTS_TDD128_MODE := no
MTK_SHARE_MODEM_CURRENT := 1
MTK_SHARE_MODEM_SUPPORT := 2
MTK_MD_SHUT_DOWN_NT := yes
MTK_FD_SUPPORT := yes
MTK_IPV6_SUPPORT := yes
MTK_LTE_SUPPORT := yes
MTK_LTE_DC_SUPPORT := no
MTK_SVLTE_SUPPORT := no
MTK_EAP_SIM_AKA := yes
MTK_IRAT_SUPPORT := no
MTK_DTAG_DUAL_APN_SUPPORT := no
MTK_MD1_SUPPORT := 5
MTK_MD2_SUPPORT := 4
MTK_MD3_SUPPORT := 2
MTK_MD5_SUPPORT := 5
MTK_ENABLE_MD1 = yes
MTK_ENABLrE_MD2 = no
MTK_ENABLE_MD3 = no
MTK_ENABLE_MD5 = no
MTK_TC1_FEATURE := no
MTK_SIM_RECOVERY := yes
MTK_SIM_HOT_SWAP_COMMON_SLOT := no
MTK_WORLD_PHONE := yes
MTK_VOLTE_SUPPORT := yes
MTK_VILTE_SUPPORT := yes
MTK_WIFI_CALLING_RIL_SUPPORT := yes
BOARD_GLOBAL_CFLAGS += \
	-DMTK_CIP_SUPPORT=1 \
	-DMTK_SHARE_MODEM_CURRENT=1 \
	-DMTK_SHARE_MODEM_SUPPORT=2 \
	-DMTK_MD_SHUTDOWN_NT=1 \
	-DMTK_FD_SUPPORT=1 \
	-DMTK_IPV6_SUPPORT=1 \
	-DMTK_LTE_SUPPORT=1 \
	-DMTK_EAP_SIM_AKA=1 \
	-DMTK_MD1_SUPPORT=5 \
	-DMTK_MD2_SUPPORT=4 \
	-DMTK_MD3_SUPPORT=2 \
	-DMTK_MD5_SUPPORT=5 \
	-DMTK_ENABLE_MD1=1 \
	-DMTK_SIM_RECOVERY=1 \
	-DMTK_WORLD_PHONE=1 \
	-DMTK_VOLTE_SUPPORT=1 \
	-DMTK_VILTE_SUPPORT=1 \
	-DMTK_WIFI_CALLING_RIL_SUPPORT=1 \

BOARD_GLOBAL_CPPFLAGS += \
	-DMTK_CIP_SUPPORT=1 \
	-DMTK_SHARE_MODEM_CURRENT=1 \
	-DMTK_SHARE_MODEM_SUPPORT=2 \
	-DMTK_MD_SHUTDOWN_NT=1 \
	-DMTK_FD_SUPPORT=1 \
	-DMTK_IPV6_SUPPORT=1 \
	-DMTK_LTE_SUPPORT=1 \
	-DMTK_EAP_SIM_AKA=1 \
	-DMTK_MD1_SUPPORT=5 \
	-DMTK_MD2_SUPPORT=4 \
	-DMTK_MD3_SUPPORT=2 \
	-DMTK_MD5_SUPPORT=5 \
	-DMTK_ENABLE_MD1=1 \
	-DMTK_SIM_RECOVERY=1 \
	-DMTK_WORLD_PHONE=1 \
	-DMTK_VOLTE_SUPPORT=1 \
	-DMTK_VILTE_SUPPORT=1 \
	-DMTK_WIFI_CALLING_RIL_SUPPORT=1 \

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_FOLDER_COMMON)/bluetooth

# Digital Restrictions Management
MTK_WVDRM_SUPPORT := yes
MTK_WVDRM_L1_SUPPORT := no

# Power and native tap-to-wake
TARGET_POWERHAL_VARIANT := mtk-xen0n
TARGET_POWER_SET_FEATURE_LIB := power-feature-arale

# system.prop
TARGET_SYSTEM_PROP := $(DEVICE_FOLDER_COMMON)/system.prop

# Resolution
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER_COMMON)/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FONT := roboto_15x24.h
TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# TWRP
#RECOVERY_VARIANT := twrp
#TW_THEME := portrait_hdpi
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_SDCARD_ON_DATA := true
#W_INTERNAL_STORAGE_PATH := "/sdcard"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_NO_REBOOT_BOOTLOADER := true
#TW_INCLUDE_JB_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p8"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
#TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
#TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
#TW_NO_SCREEN_BLANK := true
#TW_EXTRA_LANGUAGES := true
#TW_DEFAULT_LANGUAGE := ru_RU
#TW_MAX_BRIGHTNESS := 255
#TARGET_RECOVERY_INITRC := $(DEVICE_FOLDER_COMMON)/recovery/init.rc

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_FOLDER_COMMON)/sepolicy

POLICYVERS := 28

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := $(DEVICE_FOLDER_COMMON)/cmhw/

# Hack for building without kernel sources
ifeq ($(TARGET_DEVICE),x2eu)
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
endif
