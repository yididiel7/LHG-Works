# How to mount USB drive in Linux

[How to Format USB Drives in Linux](http://tinyurl.com/ykt5ugxt).

[How To Partition and Format Storage Devices in Linux](http://tinyurl.com/l7bue8k)

Step 1

Detecting USB hard drive: [How to mount USB drive in Linux](https://tinyurl.com/yd95f2fk).

After you plug in your USB device to the USB port, Linux system adds a new block device into /dev/ directory. 
At this stage, you are not able to use this device as the USB filesystem needs to be mounted before you can 
retrieve or store any data. To find out what name your block device file have you can run fdisk -l command.

NOTE

fdisk command requires administrative privileges to access the required information, thus, from this reason, 
the commands needs to be executed as a root user or with sudo prefix.

# fdisk -l 
OR
$ sudo fdisk -l

## Upon executing the above command you will get an output similar to the one below:

┌─[srhills@minipcpn62] - [~] - [422]
└─[$] sudo fdisk -l                                                                                                                                                                  [18:26:26]
[sudo] password for srhills:

Disk /dev/sda: 447.13 GiB, 480103981056 bytes, 937703088 sectors
Disk model: SanDisk SSD PLUS
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 20F42326-A7AD-1E47-9056-9116F072E2DF

Device      Start       End   Sectors   Size Type
/dev/sda1    4096    618495    614400   300M EFI System
/dev/sda2  618496 937697984 937079489 446.8G Linux filesystem


Disk /dev/sdc: 1.82 TiB, 2000365289472 bytes, 3906963456 sectors
Disk model: Elements 25A1
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 0CB5697D-4332-534F-8E21-1F8C8213DBEA

Device       Start        End    Sectors  Size Type
/dev/sdc1     4096    1052671    1048576  512M EFI System
/dev/sdc2  1052672 3906959804 3905907133  1.8T Linux filesystem


Disk /dev/sdb: 57.73 GiB, 61983424512 bytes, 121061376 sectors
Disk model: Silicon-Power64G
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

Look for your USB drive based on its size and filesystem. 
Once ready, take a note of the block device name of the partition you intent to mount. 
For example in our case that will be /dev/sdb 57.73 GiB 

If NEEDED CREATE USB DRIVE

Step 2

# Create mount point

Before we are able to use mount command to mount the USB partition, we need to create a mount point. 
Mount point can be any new or existing directory within your host filesystem. 
Use mkdir command to create a new mount point directory where you want to mount your USB device:

# mkdir /media/usb-drive

Step 3

# Mount USB Drive

At this stage we are ready to mount our USB’s partition /dev/sdc1 into /media/usb-drive mount point:

# mount /dev/sdc1 /media/usb-drive/

OR 

┌─[srhills@minipcpn62] - [~] - [423]
└─[$] sudo mount /dev/sdb /run/media/srhills/BackUps

To check whether your USB drive has been mounted correctly execute mount command again without any arguments 
and use grep to search for USB block device name:

# mount | grep sdb

┌─[srhills@minipcpn62] - [~] - [417]
└─[$] mount | grep sdb
/dev/sdb on /run/media/srhills/BackUps type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)


    If no output has been produced by the above mount command your USB partition is not mounted. 
    Alternatively, double-check whether you have used a correct block device name in the above command.
    

    Accessing USB Data

    If all went well, we can access our USB data simply by navigating to our previously created mount point /media/usb-drive:

    # cd /media/usb-drive

# USB Unmount

Before we are able to unmount our USB partition we need to make sure that no process is using or accessing our mount point directory, 
otherwise we will receive an error message similar to the one below:

umount: /media/usb-drive: target is busy
(In some cases useful info about processes that
use the device is found by lsof(8) or fuser(1).)

Close your shell or navigate away from USB mount point and execute the following linux command to unmount your USB drive:

# umount /media/usb-drive

Permanent USB Mount in Linux

In order to mount your USB in Linux permanently after reboot add the following line into your /etc/fstab config file:

/dev/sdc1       /media/usb-drive           vfat    defaults        0       0    

---
# How to Mount USB Drives in Linux?: Mon 03 Jul 2023 19:33:14
---

SECOND OPTION FOR MOUNTING USB’S

[The Easy Way](https://tinyurl.com/23lo7xtm).

When it comes to using Linux, effectively managing USB drives is a crucial skill for everyone, whether you’re just starting or a seasoned user. 
Linux’s many capabilities allow us to efficiently handle USB devices, but some users may not know where to start. But don’t worry – we’ve 
put together a complete guide to walk you through the process of easily mounting USB drives in Linux. This article will cover everything from 
identifying your USB drive to creating a mount point and finally mounting the block device. Whether you’re a beginner or an expert, 
this guide will give you the knowledge to easily access, manage, and unmount your USB drives like a pro. 

So let’s get started and unlock the full potential of USB drive management in Linux!

Steps to Mount USB Drives in Linux

Let’s go over the steps without any further delays. The entire process is straightforward, and I’ll walk you through it as a beginner.
Step 1: Plug In The USB Drive
USB Plug In Mount USB Drives in LinuxUSB Plug-In

Plug the USB Drive in the correct USB Port (check for 2.x/3.x specific ports for better performance). 
	Make sure your hardware is all fine, and just with that, we are done with Step 1!
Step 2: Identify Your USB Drive

To use our USB Device, first, we need to identify it. Now there are a couple of different commands which can be used here. 
However, we will go with trusty old fdisk in command line which lists our USB Drive along with its model name, the drive’s capacity, and much more!

Once the USB drive has been plugged in, it will be registered as a new block device in /dev/ directory ( Remember that everything in Linux is a file!). 
To list all block devices, we can type:

$ lsblk

This should return something like follows :
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 931.5G  0 disk 
├─sda1   8:1    0   512M  0 part /boot/efi
├─sda2   8:2    0   929G  0 part /var/lib/lxd/storage-pools/default
└─sda3   8:3    0     2G  0 part [SWAP]
sdb      8:16   1  57.3G  0 disk 
└─sdb1   8:17   1  57.3G  0 part 

Here sda is the primary block device whereas sda1, sda2 and sda3 are the various partitions where the components of the running Operating System are located. 
Next comes sdb, which represents our USB Drive as a block device. Likewise, sdb1 denotes the partition on the USB Drive in our case.

If you have multiple hard disks installed, it will be different. From the above output, we can also see the size of various partitions and their mount points. 
As one can see, our USB Drive is not mounted, but we’ll fix that in a minute.

Note that the name of our USB block device may be something other than sdb. 
Still, it’s almost always of the form sdX, where X usually is a smaller case alphabet like ‘b’, ‘c’, ‘d’, and so on but is seldom ‘a’ as it usually denotes 
the primary block device containing the Operating System. Also

Moving on, we can identify our USB Drive using the following :

$ sudo fdisk -l

In the output, we should get an output like this :
Disk /dev/loop0: 49.9 MiB, 52260864 bytes, 102072 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
 
 
Disk /dev/loop1: 55.6 MiB, 58310656 bytes, 113888 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
 
 
Disk /dev/loop2: 339.9 MiB, 356356096 bytes, 696008 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
 
 
Disk /dev/sda: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disklabel type: gpt
Disk identifier: E3C13307-58B0-4C45-AD3F-DF4C1449D7D4
 
Device      Start      End  Sectors  Size Type
/dev/sda1  227328 20971486 20744159  9.9G Linux filesystem
/dev/sda14   2048    10239     8192    4M BIOS boot
/dev/sda15  10240   227327   217088  106M EFI System
 
Partition table entries are not in disk order.

From the given output, we can identify our USB Drive’s model, size, and other information which can help us pinpoint our USB Drive. 
Note the Block Name from here, which is /dev/sda in the given example is Linux Filesystem, had it been a windows system we would have seen ntfs file system. 
Now, lets proceed to the next step.

Output Of Fdisk L

Output Of fdisk -l

Step 3: Creating A Mount Point

Now that we have identified which Block Device we want to mount, we would need a place to mount it to. 
Usually, we make a folder under /mnt directory using the mkdir command:

$ sudo mkdir /mnt/USB

With this, we finally have a place to mount our block device. Onto the next step!
Step 4 : Mount The Block Device

Finally, we can now mount our USB Drive in the folder we made earlier! This can be easily done via the mount command. 
Following our example, remember that we had our USB Drive registered as the block device /dev/sdb? Remember how it had a partition /dev/sdb1? 
We cannot mount block devices, rather we shall mount this partition as follows:

1
	
$ sudo mount /dev/sdb1 /mnt/USB/

And now, we can access the contents of our USB Drive right as if it were just another folder on our Desktop. 
We can also change the ownership of the folder where we mounted our USB Drive as such :
1
	
$ sudo chown $USER /mnt/USB/

After the above command, you no longer need to type sudo repeatedly whenever we move data to-and-from our USB Device! 
Just to validate that our USB Drive has been mounted correctly, we can return it to our good friend lsblk and it should show us an output like:
1
2
3
4
5
6
7
	
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 931.5G  0 disk 
├─sda1   8:1    0   512M  0 part 
├─sda2   8:2    0   929G  0 part /home
└─sda3   8:3    0     2G  0 part [SWAP]
sdb      8:16   1  57.3G  0 disk 
└─sdb1   8:17   1  57.3G  0 part /mnt/USB

As we can see, our USB Drive is mounted in the folder we previously created ( /mnt/USB ); hence, we have successfully mounted our USB Drive!

Bonus: How To Unmount USB Drive?

Once we finish all of our desired USB operations, unmounting our USB Drive before physically removing it from our machine is good practice. 
This can be achieved via the umount command that umounts media attached to the system. Just simply type in:
1
	
$ sudo umount [FOLDER WHERE DRIVE IS MOUNTED]

Staying consistent with our previous example, this would translate to:
1
	
$ sudo umount /mnt/USB

With that, we are done and free to remove our physical media like usual!
Conclusion

To sum up, connecting a USB drive to a Linux system is an easy and effective process that can be done in four uncomplicated steps. 
These steps include plugging in the USB drive, identifying it, making a mount point, and finally mounting the block device. 
Once you have mastered these steps, you will have seamless access to the contents of your USB drive on your Linux system. Moreover, 
you will also learn how to safely unplug your USB drive after use to safeguard your data. This beginner-friendly guide enables Linux 
newcomers to effortlessly navigate the process and enjoy the advantages of using USB drives on their Linux devices.

Note that sometimes, the mount command fails to mount our USB Drive, primarily because of file types: 
The USB Drive might have a different file system than the Operating System. 
In such cases, the -t flag can be used to specify the type of file system you want to mount. 
For more information, check out the man pages for mount.


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
