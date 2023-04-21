#!/system/bin/sh
if ! applypatch -c MTD:recovery:20086784:741497938561964fd7f5f062fa7c6164cfe69279; then
  applypatch -b /system/etc/recovery-resource.dat MTD:boot:17694720:fedc3ae6db4521436bc419b152be27ef3808ab21 MTD:recovery 741497938561964fd7f5f062fa7c6164cfe69279 20086784 fedc3ae6db4521436bc419b152be27ef3808ab21:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
