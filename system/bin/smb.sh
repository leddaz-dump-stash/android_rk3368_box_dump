#!/system/bin/busybox sh

#make samba & nfs mount root
mkdir /data/smb 0777 system system
mount tmpfs tmpfs /data/smb mode=0777,uid=1000,gid=1000
chmod -R 0777 /data/smb
mkdir /data/etc 0777 system system
mount tmpfs tmpfs /data/etc mode=0777,uid=1000,gid=1000
chmod -R 0777 /data/etc
touch /data/etc/cifsmanager.sh
chmod 0777 /data/etc/cifsmanager.sh
touch /data/etc/log
chmod 0777 /data/etc/log

mkdir /data/nfs 0777 system system
chmod -R 0777 /data/nfs
mount tmpfs tmpfs /data/nfs mode=0777,uid=1000,gid=1000
