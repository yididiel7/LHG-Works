# The Disk Destroyer How to Use the dd Command.

**The DD = dd Command Stands for Data Definition.**

You should be very careful while using this command as improper usage may cause huge data loss. 
So, some people consider dd tool as disk destroyer. Without knowing or being careless can cause 
the destruction of partition and metadata from the block device.

## Erasing the iso image data from the USB Drive.

`$ sudo dd if=/dev/zero of=/dev/sdb bs=1M count=1024 status=progress && sync`

`$ ls /dev`

## Create an Empty File with dd

`$ dd if=/dev/zero of=zero bs=1024k count=1024 status=progress && sync`

## Transferring an ISO with the dd Command.

`$ sudo dd if=arcolinuxd-v23.05.04-x86_64.iso of=/dev/sdb status=progress && sync`

## The Best Example for installing OS on a USB Flash drive

**┌─[srhills@sr-minipcpn62] - [~/Downloads] **- [350]**
  └─[$] sudo dd bs=4M if=neon-user.iso of=/dev/sdc status=progress oflag=sync                            

2562719744 bytes (2.6 GB, 2.4 GiB) copied, 178 s, 14.4 MB/s
614+0 records in
614+0 records out
2575302656 bytes (2.6 GB, 2.4 GiB) copied, 178.883 s, 14.4 MB/s

## Last Run of dd Wed 10 May 2023 11:06:45

┌[srhills☮minipcpn62]-(~/Downloads)
└> sudo dd if=garuda-dr460nized-linux-zen-230501.iso of=/dev/sdb status=progress && sync
5241932+0 records in
5241932+0 records out
2683869184 bytes (2.7 GB, 2.5 GiB) copied, 251.558 s, 10.7 MB/s

┌[srhills☮minipcpn62]-(~/Downloads)
└>

Step 6: Enable Network Time Protocols (NTP)

Next, enable Network Time Protocols (NTP) and allow the system to update the time via the Internet:

timedatectl set-ntp true

To check the NTP service status, use:

timedatectl status

[Backing Stuff up with dd](https://tinyurl.com/2kltlzv6).

dd how to backup and restore disk images including compression with gzip

dd is a very handy tool and there are some more practical things we can do.  For example if we want to dump a 3TB drive and want to preserve it and only 200GB are being used on the 3TB we can save a lot of space with gzip.
Backing Stuff up with dd

How to Use dd to backup a raw hard drive and tar gzip at once

    Change /dev/sda to the drive you want to backup
    Change /mnt/extraspace to the path you want to backup to

sudo dd if=/dev/sda bs=20M| gzip -c > /mnt/extraspace/backup.img.gz

 

How to use dd to backup a raw hard drive WITHOUT compression:

sudo dd if=/dev/sda of=/mnt/extraspace/backup.img.gz bs=20M
Restoring Stuff with dd

Restoring is just the opposite.

How to restore a raw image with dd with compression:

change the /dev/sdX to the drive you want to restore to (be careful and understand /dev/sdX will be totally wiped out and erased with this operation or at least as much data as the image contains)

gunzip -c /mnt/yourddimage.img.gz | dd of=/dev/sdX

How to restore a raw image with dd WITHOUT compression:

change the /dev/sdX to the drive you want to restore to (be careful and understand /dev/sdX will be totally wiped out and erased with this operation or at least as much data as the image contains)

sudo dd if=/mnt/yourddimage.img of=/dev/sdX bs=10M

The Linux dd command is one of the most powerful utilities for Unix and Unix-like operating systems. 
It can be used in a variety of ways. 

1. [Linux DD Command – 18 Examples](https://tinyurl.com/2gkky5xk).

dd command in Linux

dd command is mainly used for copying and converting data, hence it stands for data duplicator.

Using dd command we can do:

    * Backing up and restoring an entire hard drive or a partition.
    * Creating virtual filesystem and backup images of CD or DVDs called ISO files
    * Copy regions of raw device files like backing up MBR (master boot record).
    * Converting data formats like ASCII to EBCDIC.
    * Converting lowercase to uppercase and vice versa.

Only the superuser can execute dd command.

You should be very careful while using this command as improper usage may cause huge data loss. 
So, some people consider dd tool as disk destroyer. Without knowing or being careless can cause 
the destruction of partition and metadata from the block device. 

**Syntax of dd command**

The basic use of the dd utility is rather easy because it takes just two arguments: if= to specify 
the input file and of= to specify the output file. The arguments for those options can be either 
files or block devices. I would, however, not recommend using dd to copy files because cp does that 
in a much simpler way. However, you can use it to clone a hard disk.

Syntax:

dd if=<source file name> of=<target file name> [Options]

dd command Examples

We will learn various options while going through dd command examples.
1. Backing up and restoring an entire disk or a partition

It is possible to save all the data from an entire disk/partition to another disk/partition. Not a simple copy as cp command but a block size copy.
a. Backup entire disk to disk

You can copy all the data (entire disk) from the disk /dev/sda to /dev/sdb. dd doesn’t know anything about the filesystem or partitions; it will just copy everything from /dev/sda to /dev/sdb.

You need to indicate the block size to be copied at time with bs option. So, this will clone the disk with the same data on the same partition.

sudo dd if=/dev/sda of=/dev/sdb bs=4096 conv=noerror,sync

Output
97281+0 records in
97280+0 records out
99614720 bytes (100 MB) copied, 2.75838 s, 36.1 MB/s

This works only if the second device is as large as or larger than the first. Otherwise, you get truncated and worthless partitions on the second one.

Where,

if stands for input file , of stands for output file

bs stands for the block size (number of bytes to be read/write at a time). Make sure you use block sizes in multiples of 1024 bytes which is equal to 1KB. If you don't specify block size, dd use a default block size of 512 bytes.

The conv value parameter noerror allows the tool to continue to copy the data even though it encounters any errors. The sync option allows to use synchronized I/O.
b. Creating dd disk image (file image)

You can create an image of a disk or a file image. Backing up a disk to an image will be faster than copying the exact data. Also, disk image makes the restoration much easier.

sudo dd if=/dev/sda of=/tmp/sdadisk.img

You can store the output file where you want but you have to give a filename ending with .img an extension. Instead of /tmp/sdadisk.img, you could store it for example at /sdadisk.img if you want.
c. Creating a compressed disk image

Because dd creates the exact content of an entire disk, it means that it takes too much size. You can decide to compress the disk image with the command below

sudo dd if=/dev/vda | gzip -c >/tmp/vdadisk.img.gz

The pipe | operator makes the output on the left command become the input on the right command. The -c option writes output on standard output and keeps original files unchanged.
d. Backup a partition or clone one partition to another

Instead of an entire disk, you can only backup a simple partition. You just need to indicate the partition name in the input file.

sudo dd if=/dev/sda1 of=/dev/sdb1 bs=4096 conv=noerror,sync

This will synchronize the partition /dev/sda1 to /dev/sdb1. You must verify that the size of /dev/sdb1 should be larger than /dev/sda1. Or you can create a partition image as below

sudo dd if=/dev/sda1 of=/tmp/sda1.img

e. Restoring a disk or a partition image

Save a disk or a partition helps to restore all the data, if there is any problem with our original drive.

To restore, you need to inverse the input file with the output file indicated during the backup operation:

sudo dd if=/tmp/sdadisk.img of=/dev/sda

You will retrieve data that were present before the backup operation and not after the operation
f. Restoring compressed image

You need to first indicate the compressed file and the output file which is the disk compressed before.

sudo gzip -dc /tmp/vdadisk.img.gz | dd of=/dev/vda

The -d option here is to uncompress. Note the output file. You can mount the restored disk to see the content.
2. Creating virtual filesystem/Backup images of CD or DVDs as iso files

You can need to create a virtual filesystem on Linux for some reasons as creating a virtual machine on your Linux host. You can also need to create a backup iso image of a CD or DVD
a. Creating a virtual filesystem

A virtual filesystem is a filesystem that exists in a file, which in turn exists on a physical disk. You can need it to create for example an additional swap or loop device or a virtual machine. We need /dev/zero which is a file used to create a file with no data but with required size (a file with all zero’s). In other words, this will create a data file with all zeros in the file which will give the size to a file.

sudo dd if=/dev/zero of=/file bs=1024K count=500

	Output
	500+0 records in
	500+0 records out
	524288000 bytes (524 MB) copied, 1.21755 s, 431 MB/s

The option count refers to the number of input blocks to be copied. Combined with block size value, it indicates the total size to copy. 
For example bs=1024k and count=500 give a size=1024K*500 =524288000 bytes =524MB.
## Now let's check the size of our file.

	ls -lh /file
	
	Output
	-rw-r--r-- 1 root root 500M May 17 18:57 /file

You can see that we have our virtual filesystem created with the size indicated. You can now use it to create loop device or a virtual disk or anything else.
b. Modify the first 512 bytes of a file with null data

If during the operation you indicate an existing output file, you will lose its data. For some reason, you can need to replace a block size of the output file.

sudo dd if=/dev/zero of=file1 bs=512 count=1 conv=notrunc

The notrunc option refers to do not truncate the file, only replace the first 512 bytes, if it exists. Otherwise, you will get a 512-byte file
c. Creating a backup iso image of CD or DVD

You may wonder why not just copy the contents of your CD to a directory. How would you handle the boot sector of a CD? You can’t find that as a file on the device because it’s just the first sector. Because dd copies sector by sector, on the other hand, it will copy that information as well.

sudo dd if=/dev/cdrom of=/mycd.iso

You need to know that you have to use the -o loop option, which allows you to mount a file like any normal device. So, to mount /mycd.iso on the /mnt/cd directory, do as below

sudo mount -o loop /mycd.iso /mnt/cd

d. Create a bootable USB Drive

Let's assume we have downloaded AlmaLinux iso image here to this directory "~/Downloads/".

sudo dd if=~/Downloads/AlmaLinux-9-latest-x86_64-dvd.iso of=/dev/sdb bs=1M

if=~/Downloads/AlmaLinux-9-latest-x86_64-dvd.iso - input file is in the path '~/Downloads/AlmaLinux-9-latest-x86_64-dvd.iso'

of=/dev/sdb - output file is in the path '/dev/sdb'

bs=1M - Read from '~/Downloads/AlmaLinux-9-latest-x86_64-dvd.iso' and write to '/dev/sdb' 1 Megabytes of data at a time.
3. Backing up and restoring MBR

The GRUB bootloader is most commonly stored in the MBR of the bootable drive. The MBR makes up the first 512 bytes of the disk, allowing up to 466 bytes of storage for the bootloader. The additional space will be used to store the partition table for that drive.  If MBR gets corrupted, we will not be able to boot into Linux.
a. Backing up MBR

Because the MBR makes up the first 512 bytes of the disk, we just need to copy that block size

sudo dd if=/dev/sda of=/tmp/sdambr.img bs=512 count=1

With the count=1 and bs=512, only 512 bytes will be copied which corresponds to the size of our MBR.

You can display the saved MBR with the od command which dump files in octal and other formats as below

sudo od -xa /tmp/sdambr.img

Output
0000000    bf52    81f4    8b66    832d    087d    0f00    e284    8000
          R   ?   t soh   f  vt   - etx   }  bs nul  si eot   b nul nul
0000020    ff7c    7400    6646    1d8b    8b66    044d    3166    b0c0
          | del nul   t   F   f  vt  gs   f  vt   M eot   f   1   @   0

-a option  selects named characters and -x selects hexadecimal 2-byte units
b. Backing up the boot data of MBR excluding the partition table

The MBR 512 bytes data is located at the first sector of the hard disk. It consists of 446 bytes bootstrap, 64 bytes partition table and 2 bytes signature. It means that we can exclude the partition table and bytes signature while backing up the MBR with conserving only a block size equal to the bootstrap size.

sudo dd if=/dev/sda of=/tmp/sdambr2.img bs=446 count=1

c. Restoring MBR from MBR image

You can restore your MBR as shown on the previous commands with

sudo dd if=/tmp/sdambr.img of=/dev/sda

3. Converting data formats

If an input file uses a character set that is not the native character set of the host computer, the import operator must perform a conversion. For example, if ASCII is the native format for strings on your host computer, but the input data file represents strings using EBCDIC, you must convert EBCDIC to ASCII and vice versa.
a. Convert the data format of a file from EBCDIC to ASCII

If there’s an ebcdic file with you, mostly retrieved from mainframe systems, then, you would like to convert them to ASCII for making modifications using text editors on UNIX servers

sudo dd if=textfile.ebcdic of=textfile.ascii conv=ascii

The conv value parameter now is ascii because we convert from EBCDIC to ASCII
b. Convert the data format of a file from ASCII to EBCDIC

After modifying the ASCII version and once done, you may convert it back to EBCDIC to be used by your application.

sudo dd if=textfile.ascii of=textfile.ebcdic conv=ebcdic

The conv value parameter now is ebcdic because we convert from ASCII to EBCDIC. If you’re just replacing the particular number of bytes with an equivalent number of bytes having different characters, the conversion would be smooth and the application reading the file should not have any issues.
4. Converting case of a file

DD command can be also used for an amazing thing. It can convert all text (alphabets) in a file to upper or lower case and vice versa. For the example below, we will have a file for the tests.

cat file10
test dd convert

a. Converting a file to uppercase

Because our text file example is on lowercase, we will convert it to uppercase

sudo dd if=~/file10 of=~/file20 conv=ucase

The command will create the new file indicated. See that now conv option takes ucase value. Let's check the result

cat file20 TEST DD CONVERT

b. Converting a file to lowercase

Now we will do the reverse operation which will convert to lowercase

dd if=~/file20 of=~/file30 conv=lcase

See that we use lcase of conv option to convert from upper case to lower case.

cat file30 
test dd convert

dd command does not convert the file names, only it's content.
5. Show Progress

dd utility is bunded with Coreutils. The versions above 8.24 are able to show a progress bar while copying.

You can check the coreutils version by checking dd --version command.

The following time shows a progress bar showing amount of data copied and elapsed time.

sudo dd if=/home/ubuntu/data.txt of=/home/ubuntu/backup/backup.txt status=progress

By default, dd command won't show the progress bar need to add the option status=progress.
Conclusion

In this tutorial, we learn in-depth about the dd command in Linux. We have illustrated with dd command examples to understand the options.
