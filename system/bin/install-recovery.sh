#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52471084:db2f81ce611088059e1245ffc8eeaa4a9182597d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47506728:1f1fc9999439ab76b14bfb22ca6255cbc4458103 EMMC:/dev/block/bootdevice/by-name/recovery db2f81ce611088059e1245ffc8eeaa4a9182597d 52471084 1f1fc9999439ab76b14bfb22ca6255cbc4458103:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
