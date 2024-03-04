# Create A Bootable USB

[Boot Archcraft](https://wiki.archcraft.io/docs/boot-iso/boot-with-usb).

## dd (Archcraft Linux)

If you're already using Linux, you can create an Archcraft bootable USB with dd. dd creates both BIOS and UEFI bootable USB and this method is recommended due to its simplicity and universal availability. Follow the steps below to create a bootable USB with dd :

    Open a terminal and run sudo fdisk -l to get the USB info. In my case, it's /dev/sda.

$ sudo fdisk -l

Disk /dev/sda: 29.25 GiB, 31406948352 bytes, 61341696 sectors
Disk model: Cruzer Blade
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x940318b0

## You can also run lsblk to find your USB device, by judging the size of it.

$ lsblk

NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda           8:0    1  29.3G  0 disk
├─sda1        8:1    1   1.6G  0 part
└─sda2        8:2    1    54M  0 part
nvme0n1     259:0    0 238.5G  0 disk

After finding your USB device, Run dd to flash the ISO on USB 

$ sudo dd bs=4M if=path/to/archcraft.iso of=/dev/sdX status=progress oflag=sync

    Make sure you replace path/to/archcraft.iso with the Archcraft ISO path and sdX with your USB device.
    This will create a bootable Archcraft USB for both BIOS and UEFI.
