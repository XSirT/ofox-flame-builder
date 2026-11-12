#!/bin/bash
# OrangeFox build variables for flame (POCO M7 5G / Redmi 14C 5G / Redmi 14R 5G).
# Sourced by the workflow before lunch. Edit here, commit, re-run the workflow.

export FOX_BUILD_DEVICE="flame"
export TARGET_DEVICE_ALT="flame"
export LC_ALL="C"
export ALLOW_MISSING_DEPENDENCIES=true

# Branding
export OF_MAINTAINER="${OF_MAINTAINER:-SIY}"
export FOX_BUILD_TYPE="Unofficial"

# Partition layout: A/B, virtual A/B, with a dedicated recovery_a / recovery_b partition
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_AB_DEVICE_WITH_RECOVERY_PARTITION=1

# Screen: 720x1640 panel, OrangeFox themes are laid out at 1080 wide -> 1640*1080/720
export OF_SCREEN_H=2460

# Safe behaviour on this device
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_NO_MIUI_PATCH_WARNING=1
export OF_USE_GREEN_LED=0
export OF_QUICK_BACKUP_LIST="/boot;/data;"

# Extra tools inside recovery
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_DELETE_AROMAFM=1
