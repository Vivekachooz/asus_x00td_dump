#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:17a7b0f617bd2c952bd35aefaeb3988e98f07af1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:1cbdfa5bb23704466b7ed232145d0299737088e9 EMMC:/dev/block/bootdevice/by-name/recovery 17a7b0f617bd2c952bd35aefaeb3988e98f07af1 55235884 1cbdfa5bb23704466b7ed232145d0299737088e9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
