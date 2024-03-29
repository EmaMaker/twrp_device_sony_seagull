# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/sony/yukon/PlatformConfig.mk

TARGET_RECOVERY_FSTAB = device/sony/seagull/rootdir/fstab.seagull

TARGET_BOOTLOADER_BOARD_NAME := D5103

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2067791872
#Reserve space for data encryption (5360303104-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5360286720

BOARD_KERNEL_CMDLINE += androidboot.hardware=seagull
BOARD_KERNEL_CMDLINE += mem=1003M

#twrp
TW_NO_REBOOT_RECOVERY := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_NO_BATT_PERCENT := false