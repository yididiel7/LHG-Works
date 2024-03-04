# HOW TO BOOT REAL UEFI USB / SSD operating system inside KVM QEMU host

[HOW TO BOOT REAL UEFI SSD operating system inside KVM QEMU host](https://youtu.be/YzA2ToW3Lk0)


┌[srhills☮minipcpn62]-(~)
└> ls -l /dev/disk/by-id/
total 0
lrwxrwxrwx 1 root root  9 May  9 22:33 ata-SanDisk_SSD_PLUS_480GB_200986804526 -> ../../sda
lrwxrwxrwx 1 root root 10 May  9 22:33 ata-SanDisk_SSD_PLUS_480GB_200986804526-part1 -> ../../sda1
lrwxrwxrwx 1 root root 10 May  9 22:33 ata-SanDisk_SSD_PLUS_480GB_200986804526-part2 -> ../../sda2
lrwxrwxrwx 1 root root  9 May  9 22:33 ata-WDC_WD20SMZW-59YFCS1_WD-WXD1A78071SP -> ../../sdb
lrwxrwxrwx 1 root root 10 May  9 23:42 ata-WDC_WD20SMZW-59YFCS1_WD-WXD1A78071SP-part1 -> ../../sdb1
lrwxrwxrwx 1 root root  9 May  9 23:31 usb-SanDisk_Cruzer_Glide_3.0_4C530001111221116490-0:0 -> ../../sdc
lrwxrwxrwx 1 root root 10 May  9 23:42 usb-SanDisk_Cruzer_Glide_3.0_4C530001111221116490-0:0-part1 -> ../../sdc1
lrwxrwxrwx 1 root root 10 May  9 23:31 usb-SanDisk_Cruzer_Glide_3.0_4C530001111221116490-0:0-part2 -> ../../sdc2
lrwxrwxrwx 1 root root  9 May  9 22:33 usb-WD_Elements_25A1_575844314137383037315350-0:0 -> ../../sdb
lrwxrwxrwx 1 root root 10 May  9 23:42 usb-WD_Elements_25A1_575844314137383037315350-0:0-part1 -> ../../sdb1
lrwxrwxrwx 1 root root  9 May  9 22:33 wwn-0x50014ee65e520edc -> ../../sdb
lrwxrwxrwx 1 root root 10 May  9 23:42 wwn-0x50014ee65e520edc-part1 -> ../../sdb1
lrwxrwxrwx 1 root root  9 May  9 22:33 wwn-0x5001b448b5490531 -> ../../sda
lrwxrwxrwx 1 root root 10 May  9 22:33 wwn-0x5001b448b5490531-part1 -> ../../sda1
lrwxrwxrwx 1 root root 10 May  9 22:33 wwn-0x5001b448b5490531-part2 -> ../../sda2

┌[srhills☮minipcpn62]-(~)
└> cat /dev/disk/by-id/

┌[srhills☮minipcpn62]-(~)
└> ls -l /dev/disk/by-id/usb-SanDisk_Cruzer_Glide_3.0_4C530001111221116490-0:0

┌[srhills☮minipcpn62]-(~)
└> sudo virt-manager

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
