# Linux tune2fs Command Examples

sudo sfdisk /dev/sda < sda.dump --force

## Example:

$ sudo tune2fs -m 1 /dev/sdc1

The "tune2fs" command is used to change or modify tunable parameters on ext2, ext3 and ext4 type filesystems. To display the current values that are set you can use the tune2fs command with the "-l" option or use the dumpe2fs command.

[Linux tune2fs Command Examples](https://tinyurl.com/2qw4onlg).

## Basic Usage of tune2fs

tune2fs - View Filesystem Information

The command to display filesystem information is "tune2fs -l /dev/sdax" - (amend device name accordingly to match your system)

## Display Filesystem Volume Name

In the following example we are going to use the grep command to extract information that relates to the "Filesystem Volume Name".

You will need to amend the device name accordingly.


# tune2fs -l /dev/vdb1 | grep volume
Filesystem volume name:   


## Change Filesystem Volume Name

Using the "-L" parameter, we can give add/change the filesystem volume name.

Displaying Filesystem Check Intervals and Mount Counts

By default, most systems will automatically attempt to check your filesystems after a defined time limit. This may be the number of times a filesystem has been mounted or literally a set time. To display the current settings we can use the "tune2fs" command and grep for " interval" and "count".

## Disable Filesystem Check on Boot

The following parameters should only be used in a test environment where you may be carrying out multiple reboots during the course of the day. The Mount Count and check interval values below are set to "-1" which disables any checking.

## Modifying Filesystem Checks

The following will modify the Check interval and Mount Count to only check after 100 mounts or a 2 month period.

Staggering the mount counts at which filesystems are checked can avoid all filesystems being checked at one time. This will avoid all filesystems being checked at the same time and can reduce boot time.
tune2fs Popular Options

For a full list of available options consult the man pages: man tune2fs

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
