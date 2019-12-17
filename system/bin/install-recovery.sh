#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:99bc300130ad2249e955c725cae7f79bf5a6deb3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:7f95785ea0d2bfb4cb0778de4953466334531028 EMMC:/dev/block/bootdevice/by-name/recovery 99bc300130ad2249e955c725cae7f79bf5a6deb3 55235884 7f95785ea0d2bfb4cb0778de4953466334531028:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
