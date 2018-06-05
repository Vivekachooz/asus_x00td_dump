#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52475180:7b9aad19ed4515202ab16effefc34aca0dd4b3b0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47510824:9ca7a29f3b90af90492bfa0c07275390f72f397d EMMC:/dev/block/bootdevice/by-name/recovery 7b9aad19ed4515202ab16effefc34aca0dd4b3b0 52475180 9ca7a29f3b90af90492bfa0c07275390f72f397d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
