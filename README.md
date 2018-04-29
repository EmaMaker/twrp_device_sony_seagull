Original files by Sony Mobile Communications 2014 Copyright (C)
=============================================

Original build instructions for Android Marshmellow 6.0:
http://developer.sonymobile.com/knowledge-base/open-source/open-devices/aosp-build-instructions/

Modified files by EmaMaker

How to use these files to build TWRP:
Download TWRP Source (guide here for TWRP 3.x: https://forum.xda-developers.com/showthread.php?t=1943625)

Inside your .repo directory, create a local_manifests folder and inside that folder create a file with the following content:

	<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
	<remove-project name="platform/hardware/qcom/camera" />
	<project path="device/sony/sepolicy" name="git://github.com/sonyxperiadev/device-sony-sepolicy" groups="device" remote="sony" revision="m-mr1" />
	<project path="device/sony/common" name="git://github.com/sonyxperiadev/device-sony-common" groups="device" remote="sony" revision="m-mr0" />
	<project path="device/sony/common-headers" name="git://github.com/sonyxperiadev/device-sony-common-headers" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="device/sony/common-kernel" name="git://github.com/sonyxperiadev/vendor-sony-kernel" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="device/sony/seagull" name="git://github.com/EmaMaker/device-sony-seagull" groups="device" remote="sony" revision="twrp-3.0" />
	<project path="device/sony/yukon" name="git://github.com/sonyxperiadev/device-sony-yukon" groups="device" remote="sony" revision="m-mr1" />
	<project path="hardware/qcom/camera" name="git://github.com/sonyxperiadev/camera" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="kernel/sony/msm" name="git://github.com/sonyxperiadev/kernel" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="vendor/qcom/opensource/dataservices" name="git://github.com/sonyxperiadev/vendor-qcom-opensource-dataservices" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/thermanager" name="git://github.com/sonyxperiadev/thermanager" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/mkqcdtbootimg" name="git://github.com/sonyxperiadev/mkqcdtbootimg" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/macaddrsetup" name="git://github.com/sonyxperiadev/macaddrsetup" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/timekeep" name="git://github.com/sonyxperiadev/timekeep" groups="device" remote="sony" revision="master" />
	</manifest>

Now run repo sync
To build the recovery, on top of your android code root directory type . build/envsetup.sh
Now run lunch and select aosp_d5103-userdebug
Now run make -jN recoveryimage. Where N is a number between your cpu's threads and twice your cpu threads.
