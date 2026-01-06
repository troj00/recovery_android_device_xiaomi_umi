#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2021 The OrangeFox Recovery Project
#	
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
# 	
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="umi"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

FOX_MANIFEST_ROOT=$(gettop)
if [ -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox_defaults.go -a -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox.mk ]; then
	if [ -z "$TW_DEFAULT_LANGUAGE" ]; then
		unset TW_DEFAULT_LANGUAGE
		export TW_DEFAULT_LANGUAGE=RU		
	fi
# -- add settings for R11 --
		export TARGET_ARCH=arm64
#		export FOX_BUILD_DEVICE=umi
		export FOX_DEVICE="umi"
		export TARGET_DEVICE_ALT="umi"
#		export FOX_TARGET_DEVICES="umi"
		export FOX_BUILD_TYPE=Stable
		export OF_SCREEN_H=2340
		#export OF_STATUS_H=80
		export OF_STATUS_INDENT_LEFT=20
		export OF_STATUS_INDENT_RIGHT=20
		export FOX_REPLACE_TOOLBOX_GETPROP=1
		export FOX_REPLACE_BUSYBOX_PS=1
		export FOX_USE_RESETPROP_BINARY=1
		#export OF_USE_LZMA_COMPRESSION=1
		#export OF_USE_LZ4_COMPRESSION=1
		export FOX_USE_ZIP_BINARY=1
		export FOX_USE_TAR_BINARY=1
		export FOX_USE_SED_BINARY=1
		export FOX_USE_LZ4_BINARY=1
		export FOX_USE_ZSTD_BINARY=1
		export FOX_USE_DATE_BINARY=1
		export FOX_USE_GREP_BINARY=1
		export FOX_USE_BUSYBOX_BINARY=1
		export FOX_USE_FSCK_EROFS_BINARY=1
		export FOX_USE_PATCHELF_BINARY=0
		export FOX_REMOVE_ZIP_BINARY=0
		export FOX_USE_BASH_SHELL=1
		export FOX_USE_XZ_UTILS=1
		export FOX_ASH_IS_BASH=1
		export FOX_EXCLUDE_ZIP=1
		export FOX_REMOVE_BASH=0
		export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
		export FOX_DISABLE_UPDATEZIP=0
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION=0
		export OF_TWRP_COMPATIBILITY_MODE=0
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES=0
		export OF_SKIP_FBE_DECRYPTION=0
		export OF_OTA_RES_DECRYPT=0
		export OF_NO_MIUI_OTA_VENDOR_BACKUP=0
		export OF_NO_RELOAD_AFTER_DECRYPTION=1
		export OF_NO_TREBLE_COMPATIBILITY_CHECK=0
		#export FOX_RESET_SETTINGS=1
		export FOX_DELETE_AROMAFM=0
		export OF_USE_GREEN_LED=0
		export OF_FLASHLIGHT_ENABLE=1
		export OF_MAINTAINER="Alex_Troj"
		export OF_HIDE_NOTCH=1
		export OF_CLOCK_POS=0
		export OF_ALLOW_DISABLE_NAVBAR=0
		export OF_DONT_KEEP_LOG_HISTORY=0
		export OF_SKIP_ORANGEFOX_PROCESS=0
		export FOX_VANILLA_BUILD=0
		export FOX_REMOVE_AAPT=0
		export OF_CHECK_OVERWRITE_ATTEMPTS=0
		export OF_FBE_METADATA_MOUNT_IGNORE=1
		export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
		export OF_PATCH_AVB20=1
		export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
		export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
		export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
		export OF_NO_MIUI_PATCH_WARNING=1
		export OF_DISABLE_MIUI_OTA_BY_DEFAULT=0
		export OF_QUICK_BACKUP_LIST="/boot;/dtbo;/persist;/recovery;"
		export OF_USE_LOCKSCREEN_BUTTON=0
		export OF_ADVANCED_SECURITY=1
		export FOX_NO_SAMSUNG_SPECIAL=1
		export OF_DISABLE_EXTRA_ABOUT_PAGE=0
		export OF_NO_SPLASH_CHANGE=0
		export FOX_DELETE_MAGISK_ADDON=1
		export OF_REPORT_HARMLESS_MOUNT_ISSUES=0
		export FOX_DELETE_INITD_ADDON=0
		export FOX_INSTALLER_DEBUG_MOD=0
		export FOX_ENABLE_APP_MANAGER=1
		export FOX_USE_NANO_EDITOR=1
		export FOX_EXCLUDE_NANO_EDITOR=1
		#export FOX_BUILD_BASH=0
		export FOX_VARIANT=MIUI
		export OF_FORCE_PREBUILT_KERNEL=1
		export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=0
		export OF_ENABLE_LPTOOLS=1
		export OF_ENABLE_ALL_PARTITION_TOOLS=1
		export FOX_PATCH_VBMETA_FLAG=0
		export OF_FIX_DECRYPTION_ON_DATA_MEDIA=0
		export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=0
		export OF_ENABLE_FS_COMPRESSION=1
		export OF_MANUAL_ROOT_VENDOR_ERROR_FIX=1
		export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
		export FOX_SETTINGS_ROOT_DIRECTORY="/persist/OFRP"
		export FOX_MISCELLANEOUS_ROOT_DIRECTORY="/sdcard"
		export FOX_ALLOW_EARLY_SETTINGS_LOAD=1
		export FOX_BASH_TO_SYSTEM_BIN=1
		export OF_UNBIND_SDCARD_F2FS=1
		export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
		export OF_BIND_MOUNT_SDCARD_ON_FORMAT=1
		export OF_UNMOUNT_SDCARDS_BEFORE_REBOOT=1
		export FOX_USE_UPDATED_MAGISKBOOT=1
		export FOX_COMPRESS_EXECUTABLES=1
		export FOX_DRASTIC_SIZE_REDUCTION=1
		export FOX_EXTREME_SIZE_REDUCTION=1
		#export OF_FORCE_DATA_FORMAT_F2FS=1
		export OF_FORCE_DATA_FORMAT_EXT4=1
		export FOX_MOVE_MAGISK_INSTALLER_TO_RAMDISK=1
		export OF_FORCE_CASEFOLDING=1
		#export FOX_USE_DMSETUP=1
		export OF_USE_DMCTL=1
		export FOX_ENABLE_KERNELSU_SUPPORT=0
		export FOX_ENABLE_KERNELSU_NEXT_SUPPORT=0
		export FOX_ENABLE_SUKISU_SUPPORT=1
		export OF_ENABLE_FRP_ADDON=1
		#export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
		export OF_KEEP_FORCED_ENCRYPTION=0
# -- end R11 settings --

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
#

