
# Quick Guide to The Awesome GNOME Disk Utility

## (Disk Utility on Ubuntu 19.04 is indeed very handy)

GNOME Disk Utility is an awesome tool to maintain hard disk drives that shipped with Ubuntu. 
It's called simply "Disks" on start menu on 19.04, anyway. It's able to format hard disks 
and USB sticks, create and remove partitions, rename partitions, and check disk health. 
Not only that, it also features writing ISO into disk and vice versa, create ISO image
of a disk. This tutorial explains in brief how to use it for 8 purposes. Let's go!

# Subscribe to UbuntuBuzz Telegram Channel to get article updates directly.

(I use Disk Utility version 3.32 that came preinstalled with Ubuntu Disco Dingo)

1. Viewing Active Disks

Attach your disk drives and let the Disk Utility reads them. 
Names of disks shown on left panel. If you select one, it shows the partitions that disk has.

(Pay attention to information inside red boxes: 

it shows very much details about each disk and each partition selected)

2. Viewing Details of Partition

Disk Utility shows detailed info of each partition on bottom part of its window. 
You can read important details such as:

    Partition name
    Size in GB and Byte
    Device address (/dev/sda1, /dev/sdc1, etc.)
    UUID
    Partition type
    Filesystem name (FAT, NTFS, EXT4, etc.)
    Mount address (e.g. /media/yourname/MYUSB/)

## (GIF animation: click each partition name to view its properties)

3. Format Disk and Partition

Hard disk, flash disk, or other storage drives can be formatted (write partition table into)
with Disk Utility. Of course, you can also create, delete, rename, repair, and modify partitions
in every disk drive.

Formatting a disk drive:

## (Utilize the triple dot button on top)

Formatting a partition within a drive:

## (Pay attention to the gear button on Volumes area)

4. Burn ISO into USB Stick

I always use Disk Utility to burn GNU/Linux images that are not compatible with multiboot tools
(mine are MultiSystem and Multibootusb) such as Debian Live, Deepin, Mageia, BlankOn, and so on.

On Ubuntu especially, and other distros as well, simply right-click an ISO Image file and select 
Write with Disk Utility to write it into USB stick. Very handy, right?

(Writing ISO right into USB stick is just one touch on Ubuntu thanks to Disk Utility)

5. Rename a Partition

I believe you don'twant multiple partitions with same name, right? 
You can rename each partition by selecting it > click gear button > Edit Filesystem > type name you wish > OK.

## (Renaming a partition)

6. Make ISO out of a Disk Drive

This is the very convenient way to make full backup or clone of disk drive. 
As you may know, I ever said I distribute GNU/Linux USB in my home country Indonesia, 
so I include every USB with backup instruction based on this awesome utility.

To create ISO image, select a disk drive from left panel > click triple dot button on top > Create Disk Image > 
determine storage location > let it process the rest > ISO Image created.

(Making backup of a whole USB stick is easy)

7. Check Disk Health

Every hard disk drive has internal health information called S.M.A.R.T. The Disk Utility can read that information for us. 
Simply click triple dot button on top > SMART Data & Self Test > click Start > let it process a while > it shows all information.

(SMART information of my solid state disk)

8. Benchmark

Even more special, Disk Utility features benchmark, so we can test disk drives' read/write speed. 
Example below depicts my test result of SanDisk Cruzer Blade 16GB resulting read speed average of 27MB/s.

(Benchmark result of my USB stick)

9. Enable Automount

I've written about this here, in short, it enables you to easily enable automatic mounting of partitions you like. 
No command line needed, simply click and done. Now everybody can manage their hard disks very easily on GNU/Linux. 
What you need to do is to enable Mount at system startup on each partition's Mount Options. Amazing, right?
