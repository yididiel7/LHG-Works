# How to Auto Mount a Hard Drive in Linux
# Author: Sr. Yididiel Hills
# Wed 19 Jul 2023 22:57:44
# Last Modified:
=========================================

## First we use the `sudo blkid command` to extract the device uuid.

┌─[srhills@minipcpn62] - [~] - [1826] [21:42:03]
└─[$] sudo blkid                                                                                                                                                                     
[sudo] password for srhills:

## List of all mounted drives.

/dev/sdb1: LABEL="WD-EasyStore" UUID="e1cf6da6-479e-469b-b293-618262be7abf" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="d4ecdce7-4e3b-411f-b73f-91ef7ded1bc2"
/dev/sdc2: UUID="ee044f88-1fa5-4033-8557-c62e99e67fc0" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="root" PARTUUID="ee7c709b-6f76-0f41-ab53-0b27b11099be"
/dev/sdc1: UUID="7B39-1973" BLOCK_SIZE="512" TYPE="vfat" PARTLABEL="EFI" PARTUUID="abb38d33-d6ec-c448-838a-22218ffe28b2"
/dev/sda2: UUID="c89097e4-35ed-4777-a779-13cd995131b5" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="root" PARTUUID="709ed317-8334-8f4c-9a28-e03e25b4d472"
/dev/sda1: UUID="1945-773A" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="c9137ebd-02df-894e-842c-0ee6d136b694"

The uuid we need is /dev/sdb1 LABEL="WD-EasyStore". We take 
UUID=e1cf6da6-479e-469b-b293-618262be7abf

## Next we need to run the command `cat /proc/mounts`.

┌─[srhills@minipcpn62] - [~] - [1827] [21:42:48]
└─[$] cat /proc/mounts

───────┬────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: /proc/mounts
───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ proc /proc proc rw,nosuid,nodev,noexec,relatime 0 0
   2   │ sys /sys sysfs rw,nosuid,nodev,noexec,relatime 0 0
   3   │ dev /dev devtmpfs rw,nosuid,relatime,size=3974860k,nr_inodes=993715,mode=755,inode64 0 0
   4   │ run /run tmpfs rw,nosuid,nodev,relatime,mode=755,inode64 0 0
   5   │ efivarfs /sys/firmware/efi/efivars efivarfs rw,nosuid,nodev,noexec,relatime 0 0
   6   │ /dev/sda2 / ext4 rw,noatime 0 0
   7   │ securityfs /sys/kernel/security securityfs rw,nosuid,nodev,noexec,relatime 0 0
   8   │ tmpfs /dev/shm tmpfs rw,nosuid,nodev,inode64 0 0
   9   │ devpts /dev/pts devpts rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000 0 0
  10   │ cgroup2 /sys/fs/cgroup cgroup2 rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot 0 0
  11   │ pstore /sys/fs/pstore pstore rw,nosuid,nodev,noexec,relatime 0 0
  12   │ bpf /sys/fs/bpf bpf rw,nosuid,nodev,noexec,relatime,mode=700 0 0
  13   │ systemd-1 /proc/sys/fs/binfmt_misc autofs rw,relatime,fd=34,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=1320 0 0
  14   │ hugetlbfs /dev/hugepages hugetlbfs rw,relatime,pagesize=2M 0 0
  15   │ mqueue /dev/mqueue mqueue rw,nosuid,nodev,noexec,relatime 0 0
  16   │ debugfs /sys/kernel/debug debugfs rw,nosuid,nodev,noexec,relatime 0 0
  17   │ tracefs /sys/kernel/tracing tracefs rw,nosuid,nodev,noexec,relatime 0 0
  18   │ fusectl /sys/fs/fuse/connections fusectl rw,nosuid,nodev,noexec,relatime 0 0
  19   │ configfs /sys/kernel/config configfs rw,nosuid,nodev,noexec,relatime 0 0
  20   │ ramfs /run/credentials/systemd-sysctl.service ramfs ro,nosuid,nodev,noexec,relatime,mode=700 0 0
  21   │ ramfs /run/credentials/systemd-sysusers.service ramfs ro,nosuid,nodev,noexec,relatime,mode=700 0 0
  22   │ ramfs /run/credentials/systemd-tmpfiles-setup-dev.service ramfs ro,nosuid,nodev,noexec,relatime,mode=700 0 0
  23   │ tmpfs /tmp tmpfs rw,noatime,inode64 0 0
  24   │ /dev/sda1 /boot/efi vfat rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro 0 0
  25   │ ramfs /run/credentials/systemd-tmpfiles-setup.service ramfs ro,nosuid,nodev,noexec,relatime,mode=700 0 0
  26   │ tmpfs /run/user/1000 tmpfs rw,nosuid,nodev,relatime,size=796592k,nr_inodes=199148,mode=700,uid=1000,gid=1000,inode64 0 0
  27   │ gvfsd-fuse /run/user/1000/gvfs fuse.gvfsd-fuse rw,nosuid,nodev,relatime,user_id=1000,group_id=1000 0 0
  28   │ binfmt_misc /proc/sys/fs/binfmt_misc binfmt_misc rw,nosuid,nodev,noexec,relatime 0 0
  29   │ portal /run/user/1000/doc fuse.portal rw,nosuid,nodev,relatime,user_id=1000,group_id=1000 0 0
  30   │ /dev/sdc2 /run/media/srhills/ee044f88-1fa5-4033-8557-c62e99e67fc0 ext4 rw,nosuid,nodev,relatime,errors=remount-ro 0 0
  31 ✅│ /dev/sdb1 /run/media/srhills/WD-EasyStore ext4 rw,nosuid,nodev,relatime,errors=remount-ro 0 0

## The uuid we need is /dev/sdb1 LABEL="WD-EasyStore". We take `/run/media/srhills/WD-EasyStore` and Append to the UUID.

`UUID=e1cf6da6-479e-469b-b293-618262be7abf /run/media/srhills/WD-EasyStore ext4 rw,nosuid,nodev,relatime,errors=remount-ro 0 0`

## This line of code must go in the `/etc/fstab` file in order to auto mount the drive.

## Now open the `/etc/fstab` file and add UUID then SAVE THE FILE AND EXIT. REBOOT THE PC.
The drive should mount automatically.

sudo nano /etc/fstab


The next Drive that I want to automount is my WD Elements 2T

`UUID=7B39-1973 /run/media/srhills/ee044f88-1fa5-4033-8557-c62e99e67fc0 ext4 rw,nosuid,nodev,relatime,errors=remount-ro 0 0`

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
