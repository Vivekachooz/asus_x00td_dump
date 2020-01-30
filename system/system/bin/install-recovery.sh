#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:56968492:838762f6e71107970a2fc34a0ae6802fec860c94; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:50738472:5d9147fca79f210d01e6a2afd944433932827e4b \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:56968492:838762f6e71107970a2fc34a0ae6802fec860c94 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
