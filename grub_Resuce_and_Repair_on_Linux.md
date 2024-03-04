# GRUB Resuce and Repair on Linux

Use the GRUB Rescue and Repair tool on Linux to Rescue and Repair the bootloader or other system issues. Figure out how to use GRUB Rescue to boot into a system without having to reinstall or look for a different method of repair. GRUB Rescue is a great utility once you know how to use it on Linux and we'll be using Ubuntu to demo how to use GRUB Rescue today. Fix unknown file system errors or no such partition on Linux.

First Step: grub> ls

Check for the list of drives with this command:

> $ ls

Check for your partitions boot and grub drive.

Example: ls (hd2,gpt2)/

After you find the right drive use this command to Repair drive.

> $ set prefix=(hd2,gpt2)/boot/grub

> $ set root=(hd2,gpt2)

> $ insmod normal

> $ normal


