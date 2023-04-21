#!/system/bin/sh
if ! applypatch -c MTD:recovery:20086784:ba3e2f9d86006dd8bb3e5318fd55cfe959757869; then
  applypatch -b /system/etc/recovery-resource.dat MTD:boot:17694720:7558371900b4928ec6fd4082162214f7aa87ac95 MTD:recovery ba3e2f9d86006dd8bb3e5318fd55cfe959757869 20086784 7558371900b4928ec6fd4082162214f7aa87ac95:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
