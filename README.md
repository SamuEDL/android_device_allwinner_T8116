# recovery_device_allwinner_T8116
TWRP device tree for Tablet T8116

## Device specification

Basic   | Spec Sheet
-------:|:------------------------
CPU     | QuadCore (4 x 1,5Ghz Cortex-A7)
CHIPSET | Allwinner A50
GPU     | Mali
Memory  | 1GB
Android Version | 8.1
Storage | 16GB
Battery | 4000 mAh
Display | 1280 x 800 pixels IPS
Rear Camera  | 2 MP
Front Camera | 2 MP


## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/allwinner/T8116" name="SamuEDL/recovery_device_allwinner_T8116" remote="github" revision="android-8" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_T8116-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/T8116/recovery.img
```


