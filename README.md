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
	<remote name="sony" fetch="git://github.com/sonyxperiadev/" />
	<remote name="ema" fetch="git://github.com/emamaker/" />



	<project path="device/sony/sepolicy" name="device-sony-sepolicy" groups="device" remote="sony" revision="m-mr1" />
	<project path="device/sony/common" name="device-sony-common" groups="device" remote="sony" revision="m-mr0" />
	<project path="device/sony/common-headers" name="device-sony-common-headers" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="device/sony/common-kernel" name="vendor-sony-kernel" groups="device" remote="sony" revision="aosp/LA.BF64.1.1_rb1.27" />
	<project path="device/sony/seagull" name="device-sony-seagull" groups="device" remote="ema" revision="twrp-3.0" />
	<project path="device/sony/yukon" name="device-sony-yukon" groups="device" remote="sony" revision="m-mr1" />
	<project path="hardware/qcom/camera" name="camera" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="kernel/sony/msm" name="kernel" groups="device" remote="sony" revision="aosp/LA.BF64.1.2.2_rb4.7" />
	<project path="vendor/qcom/opensource/dataservices" name="vendor-qcom-opensource-dataservices" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/thermanager" name="thermanager" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/mkqcdtbootimg" name="mkqcdtbootimg" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/macaddrsetup" name="macaddrsetup" groups="device" remote="sony" revision="master" />
	<project path="vendor/sony-oss/timekeep" name="timekeep" groups="device" remote="sony" revision="master" />
	</manifest>

Now run <b>repo sync</b>
To build the recovery, on top of your android code root directory type <b>. build/envsetup.sh</b>
Now run <b>lunch</b> and select <b>aosp_d5103-userdebug</b>
Now run <b>make -jN recoveryimage</b>. Where N is a number between your cpu's threads and twice your cpu threads.
