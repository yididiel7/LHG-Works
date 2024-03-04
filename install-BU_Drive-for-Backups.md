# Installing BU_Drive for Backups on Archcraft OS Linux

┌─[srhills@sr-minipcpn62] - [~] - [365]
└─[$] lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 447.1G  0 disk
├─sda1   8:1    0   512M  0 part /boot/efi
└─sda2   8:2    0 446.6G  0 part /
sdb      8:16   0   1.8T  0 disk
└─sdb1   8:17   0   1.8T  0 part /run/media/srhills/BU_Drive
sdc      8:32   0   3.6T  0 disk
└─sdc1   8:33   0   3.6T  0 part /run/media/srhills/WD-EasyStore
┌─[srhills@sr-minipcpn62] - [~] - [366]
└─[$] sudo tune2fs -m 0 /dev/sdb1

[sudo] password for srhills:
tune2fs 1.47.0 (5-Feb-2023)
Setting reserved blocks percentage to 0% (0 blocks)

