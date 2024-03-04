# How to Auto Mount Drives in Linux on Boot

[✔]

2125  20.2.2023 05:50  sudo fdisk -l
 2126  20.2.2023 05:53  sudo blkid
 2127  20.2.2023 05:56  sudo nano /etc/fstab
 2128  20.2.2023 05:59  lsblk
 2129  20.2.2023 06:01  sudo nano /etc/fstab
 2130* 20.2.2023 06:03  lsblk
 2131* 20.2.2023 06:03  sudo blkid
 2132  20.2.2023 06:17  sudo nano /etc/fstab
 2133  20.2.2023 06:18  re
 2134  20.2.2023 06:21  sudo nano /etc/fstab
 2135  20.2.2023 06:23  sudo mount -a
 2136  20.2.2023 06:24  sudo nano /etc/fstab
 2137  20.2.2023 06:26  sudo mount -a
 2138  20.2.2023 06:26  sudo nano /etc/fstab

# lsblk lists information about all available or the specified block device.

[]Run: ~ $ lsblk

NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 111.8G  0 disk 
├─sda1   8:1    0   512M  0 part /boot/efi
├─sda2   8:2    0 110.3G  0 part /
└─sda3   8:3    0   976M  0 part [SWAP]
sdb      8:16   0   1.8T  0 disk 
└─sdb1   8:17   0   1.8T  0 part /media/srhills/BU_Drive

 
[]sudo blkid
[sudo] password for srhills:            
/dev/sda1: UUID="9A85-A57F" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="1333b584-3614-4a60-a8b3-31ca028e0756"
/dev/sda2: UUID="a7a2b7c4-afb3-44ed-bccb-33577dfecb9f" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="05889fd5-161a-4fc2-8480-961215e0747f"
/dev/sda3: UUID="bc748b51-f645-4351-bf77-4848098d396f" TYPE="swap" PARTUUID="ee7a5bc3-0f9d-4f37-8ec3-5916e5d5e2bc"
/dev/sdb1: LABEL="BU_Drive" UUID="e8d44f93-f9da-4f81-95e5-38837043c10f" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="6ea379c4-f7d6-4a10-83e0-6a980ec8573d"





Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
