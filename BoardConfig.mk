TARGET_OTA_ASSERT_DEVICE := a890,ef59l,ef61k,ef62l
TARGET_SPECIFIC_HEADER_PATH := device/pantech/a890/include

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
#ARCH_ARM_HAVE_ARMV7A 				:= true
#ARCH_ARM_HAVE_NEON 					:= true
#ARCH_ARM_HAVE_TLS_REGISTER 			:= true

# Krait optimizations
#TARGET_USE_KRAIT_BIONIC_OPTIMIZATION:= true
#TARGET_USE_KRAIT_PLD_SET 			:= true
#TARGET_KRAIT_BIONIC_PLDOFFS 		:= 10
#TARGET_KRAIT_BIONIC_PLDTHRESH 		:= 10
#TARGET_KRAIT_BIONIC_BBTHRESH 		:= 64
#TARGET_KRAIT_BIONIC_PLDSIZE 		:= 64

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_INFO_FILE := device/pantech/a890/board-info.txt

# BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf-bjw
TARGET_QCOM_MEDIA_VARIANT := caf-bjw

# Kernel
TARGET_KERNEL_SOURCE := kernel/pantech/a890
TARGET_KERNEL_CONFIG := msm8974_ef59l_tp20_user_defconfig
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=260M loglevel=0
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/pantech/a890/mkbootimg.mk
PANTECH_BOARD_VERSION := tp20

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432		#32M  boot
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200     #200M
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432      #32M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432		#32M  recovery
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2566914048	#2448M system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27171208704   # 25.3G

# Graphics
BOARD_EGL_CFG := device/pantech/a890/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/a890/bluetooth

# Camera
#USE_CAMERA_STUB := false
USE_DEVICE_SPECIFIC_CAMERA 	:= true
COMMON_GLOBAL_CFLAGS += -DVEGA890_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DVEGA_CAMERA_HARDWARE

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# GPS
TARGET_NO_RPC := true
#TARGET_GPS_HAL_PATH := device/pantech/a890/gps
TARGET_PROVIDES_GPS_LOC_API := true

# NFC
#BOARD_HAVE_NFC := true
#BOARD_NFC_CHIPSET := pn547
#BOARD_NFC_HAL_SUFFIX := msm8974

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_RES := device/pantech/a890/charger/images

# QCOM PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# Init
BOARD_CHARGER_DISABLE_INIT_BLANK := true
#TARGET_NO_INITLOGO := true

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 27
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file

# Enable WEBGL in WebKit
ENABLE_WEBGL 						:= true

# Webkit
TARGET_FORCE_CPU_UPLOAD 			:= true

# SELinux
BOARD_SEPOLICY_DIRS := \
       device/pantech/a890/sepolicy

BOARD_USES_SECURE_SERVICES := true

# The list below is order dependent
BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       file_contexts

#TimeServices
BOARD_USES_QC_TIME_SERVICES := true

# Recovery
#TARGET_RECOVERY_FSTAB = device/pantech/a890/fstab.qcom
#RECOVERY_FSTAB_VERSION := 2
#TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
#TARGET_RECOVERY_UI_LIB := librecovery_ui_a890
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#BOARD_RECOVERY_SWIPE := true
TARGET_NO_SEPARATE_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON  := true
BOARD_RECOVERY_SWIPE        := true
BOARD_SUPPRESS_EMMC_WIPE 	:= true
BOARD_HAS_LARGE_FILESYSTEM 	:= true
BOARD_RECOVERY_ALWAYS_WIPES := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/pantech/a890/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_CUSTOM_THEME 					:= device/pantech/a890/recovery/res
DEVICE_RESOLUTION 					:= 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_FLASH_FROM_STORAGE 				:= true
RECOVERY_SDCARD_ON_DATA 			:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 	:= "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE 		:= true
TW_INCLUDE_JB_CRYPTO 				:= true
TW_CRYPTO_FS_TYPE 					:= "ext4"
TW_CRYPTO_REAL_BLKDEV 				:= "/dev/block/platform/msm_sdcc.1/by-name/userdata"
TW_CRYPTO_MNT_POINT 				:= "/data"
TW_CRYPTO_FS_OPTIONS 				:= "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_KEY_LOC 					:= "/persist/metadata"
TW_INCLUDE_FUSE_EXFAT 				:= true
TW_BRIGHTNESS_PATH 					:= /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS 					:= 100
TW_NO_SCREEN_TIMEOUT 				:= true
TARGET_RECOVERY_QCOM_RTC_FIX 		:= true
BOARD_SUPPRESS_SECURE_ERASE 		:= true
