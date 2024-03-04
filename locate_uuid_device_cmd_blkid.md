# How To Locate The Device UUID In Archcraft Linux

```$ sudo blkid```

/dev/sdb1: LABEL="BU_Drive" UUID="1bc58291-0b11-47ac-a362-faf2a5bc4578" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="DU_Drive" 
PARTUUID="b9844e82-0d36-4ad5-87ba-38b2b4d1ddeb"
/dev/sdc1: LABEL="WD-EasyStore" UUID="e1cf6da6-479e-469b-b293-618262be7abf" 
BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="d4ecdce7-4e3b-411f-b73f-91ef7ded1bc2"
/dev/sda2: UUID="28dfa953-eaa2-4a51-9cd6-3ae6d206b0bd" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="root" PARTUUID="d8128322-67c1-414e-9c0e-9a27fc722e3e"
/dev/sda1: UUID="7BE9-A4EB" BLOCK_SIZE="512" TYPE="vfat" PARTLABEL="EFI" PARTUUID="b86d0136-69fb-d64c-bce7-d113702072b1"

1053  28/01/24 06:39:09  sudo blkid
 1055  28/01/24 07:02:32  sudo mkdir -p /mnt/mydisk
 1057  28/01/24 07:12:02  systemctl daemon-reload
 1062  28/01/24 07:15:04  mount
 1063  28/01/24 07:18:33  cat /etc/fstab
 1064  28/01/24 07:20:32  lsblk
 1065* 28/01/24 07:24:06  cd '/home/srhills/.config/openbox'
 1069  28/01/24 07:37:00  sudo mount -a
 1071  28/01/24 07:39:16  mount | grep sdc
 1073  28/01/24 07:40:19  sudo umount /dev/sdb1
 1078  28/01/24 07:43:38  sudo umount /mnt/mydisk
 1079  28/01/24 07:46:59  sudo systemctl daemon-reload
 1080  28/01/24 07:47:23  sudo mount /mnt/mydisk/
 1081  28/01/24 07:47:37  mount | grep sdb
