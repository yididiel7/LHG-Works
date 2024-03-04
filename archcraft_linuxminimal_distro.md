Archcraft Yet another minimal Linux distribution, based on Arch Linux.

## Installation Instructions

Latest Release  :  archcraft-2023.05.01-x86_64.iso
The username and password for live session is  :  liveuser
Archcraft is only available for 64-bit architectures. 

STEP: #0

## Download link: [Archcraft](https://archcraft.io/download.html)

**AFTER DOWNLOAD**

dd (Linux)

You should be very careful while using this command as improper usage may cause huge data loss. 
So, some people consider dd tool as disk destroyer. Without knowing or being careless can cause 
the destruction of partition and metadata from the block device.

STEP: #1

## Erasing the iso image data from the USB Drive.

sudo dd if=/dev/zero of=/dev/sdc bs=1M count=1024 status=progress && sync

OUTPUT:
1034944512 bytes (1.0 GB, 987 MiB) copied, 1 s, 1.0 GB/s
1024+0 records in
1024+0 records out
1073741824 bytes (1.1 GB, 1.0 GiB) copied, 1.3208 s, 813 MB/s

STEP: #2

Open a terminal and run sudo fdisk -l to get the USB info. In my case, it's /dev/sdc.

``` $ sudo fdisk -l ```

Disk /dev/sdc: 1.82 TiB, 2000365289472 bytes, 3906963456 sectors
Disk model: Elements 25A1
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: C5DFC04E-716D-C341-8D8A-237ABA4532EC

You can also run lsblk to find your USB device, by judging the size of it.

``` $ lsblk ```

NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 447.1G  0 disk
├─sda1   8:1    0   300M  0 part /boot/efi
└─sda2   8:2    0 446.8G  0 part /
sdb      8:16   0   3.6T  0 disk
└─sdb1   8:17   0   3.6T  0 part /run/media/srhills/WDEasyStore
sdc      8:32   0   1.8T  0 disk
├─sdc1   8:33   0   300M  0 part
└─sdc2   8:34   0   1.8T  0 part /run/media/srhills/2546ae41-0d9f-4102-bee2-a8d98418ed3b

After finding your USB device, Run dd to flash the ISO on USB 

sudo dd if=archcraft-2023.05.01-x86_64.iso of=/dev/sdb status=progress && sync

    Make sure you replace path/to/archcraft.iso with the Archcraft ISO path and sdX with your USB device.
    This will create a bootable Archcraft USB for both BIOS and UEFI.

STEP: #1


Verify the ISO

After downloading, you should verify the authenticity of the ISO.

    Assuming you have downloaded gpg signature and sha256sum files along with ISO and they are in the same directory as ISO.
    Open the terminal and verify the details of the key on keyserver (any one)

    $ gpg --keyserver hkps://keys.gnupg.net --recv-keys 7DC81F73
    $ gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 7DC81F73
    $ gpg --keyserver hkp://pgp.mit.edu --recv-keys 7DC81F73

    Verify the gpg signature by running...

    $ gpg --verify archcraft-2023.05.01-x86_64.iso.sig

    Finally, Verify the sha256sum checksum by running...

    $ sha256sum -c archcraft-2023.05.01-x86_64.iso.sha256sum

STEP: #2

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.

