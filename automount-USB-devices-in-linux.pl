# How to Automount USB Devices in Linux

[How to Automount USB](https://tinyurl.com/2ycfl65e).


1. Overview

In this tutorial, we’ll talk about automounting USB (Universal Serial Bus) devices on our Linux machines. 
This is especially relevant since the widely used usbmount tool has not been maintained in several years. 
It also doesn’t support NTFS (New Technology File System) devices.

2. Automatic Mounting at Startup With fstab

If we’re only interested in automatically mounting the USB drives whenever we boot our machine, we can use fstab.

fstab is a system file that comes from the standard util-linux, which is commonly available in most Linux distributions. 
We can install it if it’s not present in our system with yum or apt.

Let’s imagine that we want to mount a USB stick located in /dev/sdb1. 
We need to edit the /etc/fstab file with our editor of choice and super-user rights and append this line:

/dev/sdb1 /media/usb-stick auto defaults,nofail,x-systemd.automount 0 2

We should keep in mind that this procedure only works for USB drives connected to the system at startup. 
Let’s break apart the previous instruction to understand it.

2.1. File System Specification

The first part refers to the node of the file system that we want to mount: /dev/sdb1. 
We can also use the symbolic link that udev creates and which we can find in /dev/disk/by-id:

/dev/disk/by-id/usb-VendorCo_ProductCode_9876012345F201230749-0:0-part /media/usb-stick auto defaults,nofail,x-systemd.automount 0 2

However, both approaches based on the /dev folder might stop working if the hardware changes. 
When we modify the physical components of our machine, the ordering of the devices in the /dev folder changes, 
which might break the automounting functionality.

Thus, the recommended and most reliable way is to use the Unique Universal Identifier (UUID). 
The UUID is usually a 128-bit number used to uniquely identify disks so that the kernel maps them to the exact node location. 
We need to specify that we’re using the UUID if we decide to do so:

UUID=12ab345cd-1234-4166-8539-ff4ff3ff2ff1 /media/usb-stick auto defaults,nofail,x-systemd.automount 0 2

We can retrieve the UUID with the blkid command.

2.2. Directory Selection and Other Parameters

The second item in the command is the mounting point. The one selected for the example is /media/usb-stick 
but we can certainly adapt it to our needs.

If we know it, we can specify the type of the file system in the third element (such as FAT32, or exFAT). 
However, if we don’t, we can always use the auto option as in the example.

The fourth element is the list of options. We specify the default ones followed by nofail (used to avoid reporting failures)
 and x-system. automount 
(which we need to instruct systemd to automatically mount the device). 
We can specify other options if we want to, with the exception of noauto, 
which prevents the automatic mounting of the drive.

The fifth element indicates whether we want to perform a check to dump files. This is usually set to 0 to not perform it.

Finally, the sixth element is the order in which the kernel checks the file systems at boot time. 
For root devices, the value is 1 but for our USB drive, it should be 2.

2.3. Testing the Automatic Procedure

We can use journalctl to check the output of the services and system manager, named systemd. 
We should insert a USB drive and reload the configuration:

$ sudo systemctl daemon-reload

What we need to find in the output of journalctl is something that indicates that the system correctly set up our mounting point:

Nov. 21 03:15:11 root systemd[1]: Mounted /media/usb-stick

One of the reasons for failure is that our system might not have NTFS drivers, which we’d need to install with ntfs-3g.
3. Use Tools Developed for That Purpose

If we want to support the automatic mounting of USB drives when swapping them in, the previous approach doesn’t work. 
However, there are some tools that independent developers create and maintain to automate the mounting of USB devices. 
For instance, tinymount and uam are currently maintained and don’t require extensive dependencies.

These tools largely depend on udev. They are collections of curated udev rules combined with scripts to automate these rules, 
providing stable and tested behavior. We can install them and begin to use these rules without further complications, although 
we’ll cover how these rules work in more detail in the next section.

4. Custom Rules for Automatic Mounting With udev

There are cases when we cannot install new tools or just want to keep the programs to a minimum. 
In those situations, we have to create the rules for udev ourselves. Although we’ll focus on the simplest case, 
we can certainly gather more information and use cases by looking at the rules of the tools mentioned in the previous section.

We need to have installed udev and autofs – which we can install with yum or apt. 
The procedure is split into two steps: creating the udev rules and setting autofs to automount certain folders.

4.1. Creating an udev Rule

To create the new rules, we need to add a file in the directory /etc/udev/rules.d/ whose name ends in .rules. 
The file has to contain two rules:

$ cat /etc/udev/rules.d/usb_auto_mount.rules
ACTION=="add", KERNEL=="sd*", ENV{DEVTYPE}=="partition", ENV{ID_BUS}=="usb", \
    SYMLINK+="usbdisks/%k", MODE:="0660", \
    RUN+="/bin/rm /media/usb-sticks/%k", \
    RUN+="/bin/ln -sf /media/auto_mount_usb/%k /media/usb-sticks/%k"
ACTION=="remove", KERNEL=="sd*", ENV{DEVTYPE}=="partition", ENV{ID_BUS}=="usb", \
    RUN+="/bin/rm /media/usb-sticks/%k"

The first rule performs several actions when we connect a USB drive (as ACTION==”add”). 
We create a custom-named device node, named usbdisks, and create a subnode named %k (which refers to the kernel name of the device). 
Then, we specify the modes read and write for the users and group with 660. Finally, 
we remove any existing directories named /media/usb-sticks/%k and create a symbolic link from /media/auto_mount_usb/%k  to /media/usb-sticks/%k.

When we plug out the USB drive, we trigger the second rule (as ACTION==”remove”). This triggers the removal of the directory /media/usb-sticks/%k.

Then, we need to reload the rules:

$ sudo udevadm control --reload-rules

4.2. Automounting With autofs

In the second step, we need to instruct autofs to automatically mount a certain directory based on the automounter map.
To do so, we append this line to the /etc/auto.master file:

/media/auto_mount_usb /etc/auto_mount.usb --timeout=60

The directory that we want to mount is /media/auto_mount_usb/%k and the automounter map is located in /etc/auto_mount.usb. 
We can also specify the unmounting option, in this case after 60 seconds of inactivity.

Let’s see the contents of the file /etc/auto_mount.usb:

#!/bin/bash
fstype=$(/sbin/blkid -o value -s TYPE /dev/usbdisks/${1})
if [ "${fstype}" = "vfat" ] ; then
  echo "-fstype=vfat,sync,uid=0,gid=plugdev,umask=007 :/dev/usbdisks/${key}"
  exit 0
fi
exit 1

We use blkid to know what type of filesystem is used in the partition. Then, we check that it’s FAT (File Allocation Table) 
and proceed to mount the file system with the selected options. We can certainly further customize /etc/auto_mount.usb to handle other types of filesystems.


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
