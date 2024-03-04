# Filename:    "rsync_copydata.md"
# Description: "Copy your Data and Synchronize Locally and Remotely"
# Author:      "Sr. Yididiel W.I.T©™"             

How to force 'cp' to overwrite a directory instead of creating another one inside?

rsync -a --delete foo/ bar/

ln -s /run/media/srhills/WDEasyStore/ArcoScripts ~/ArcoScripts

rsync -a -vh --delete ~/ArcoScripts/ /run/media/srhills/WDEasyStore/ArcoScripts/

======================================================================

The RSYNC COMMAND WITH THE HELP OF THE RSYNC COMMAND, 
YOU CAN COPY AND SYNCHRONIZE YOUR DATA REMOTELY AND 
LOCALLY ACROSS DIRECTORIES, DISKS, AND NETWORKS, 
PERFORM DATA BACKUPS, AND MIRROR BETWEEN TWO LINUX MACHINES.


📜️THIS COMMAND WORKED. A --dry-run to check where and how the files are being transferred

$ rsync -av --dry-run LinuxBooks/* /media/yididiel/'WD Elements'/BKLinuxBooks

📜️THIS COMMAND WORKED.

$ rsync -av --progress LinuxBooks/* /media/yididiel/'WD Elements'/BKLinuxBooks


💡️📜️ Commands to Run rsync for RishumLekach to BKReshumLekach Which is 'WD Elements'

rsync -av --dry-run RishumLekach/* /media/yididiel/'WD Elements'/BKReshumLekach

rsync -av --progress RishumLekach/* /media/yididiel/'WD Elements'/BKReshumLekach

Basic and advanced usage of the rsync command to transfer your files remotely and 
locally in Linux-based machines. You don’t need to be a root user to run the rsync command.

## Some Advantages and Features of Rsync Command.

It efficiently copies and sync files to or from a remote system.
Supports copying links, devices, owners, groups, and permissions.

It’s faster than scp (Secure Copy) because rsync uses a remote-update protocol which allows transferring just the differences between two sets of files. 
The first time, it copies the whole content of a file or a directory from source to destination but from next time, it copies only the changed blocks and bytes to the destination.

## Rsync consumes less bandwidth utilization as it uses compression and decompression method while sending and receiving data on both ends.

Some common options used with rsync commands.

 -v : verbose
 -r : copies data recursively (but don’t preserve timestamps and permission while transferring data).
 -a : archive mode, which allows copying files recursively and it also preserves symbolic links, file permissions, user & group ownerships, and timestamps.
 -z : compress file data.
 -h : human-readable, output numbers in a human-readable format.

## We can install the rsync package with the help of the following command in your Linux distribution.

How To Install Rsync in Linux System

$ sudo apt-get install rsync   [On Debian/Ubuntu & Mint] 
$ sudo pacman -S rsync              [On Arcolinux and Arch Linux]
$ emerge sys-apps/rsync        [On Gentoo]
$ sudo dnf install rsync       [On Fedora/CentOS/RHEL and Rocky Linux/AlmaLinux]
$ sudo zypper install rsync    [On openSUSE]


[How to Use Rsync to Sync New or Changed/Modified Files in Linux](https://tinyurl.com/2lfv4tkq).

[Rsync Command in Linux](https://tinyurl.com/y9ff7dwc).

[Rsync for local and remote data backups and synchonizations](https://tinyurl.com/2oyj2etp).



