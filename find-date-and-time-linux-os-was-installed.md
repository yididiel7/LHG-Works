# Arch Linux Find Date and Time Linux OS Was Installed

If you’re running Arch or one of its derivatives like Manjaro or EndeavourOS, the first line of the “pacman.log” file will tell you when your Linux system was installed.

head -n1 /var/log/pacman.log


Find Date and Time Linux OS Was Installed

Finding this information can be done in many different ways, and below, we present you with the best ones, both valid for any Linux distribution and specific to a particular one.
A Universal Method

First, we must clarify that there is no dedicated setting, variable, log file entry, or similar in Linux designed to expressly store information about the actual day and time when the system was installed.

However, it can be easily retrieved by determining when the root (“/”) file system was created.

This can be accomplished with the help of the stat command, which displays detailed information about a file or directory, including metadata such as create, access, and modification timestamps, file type, permissions, and more.

So, to find the exact day and time when your Linux system was installed, run the following:

` stat / | awk '/Birth: /{print $2 " " substr($3,1,5)}' `

And that’s all! We get the information we need right away. According to the command’s output above, the system was installed on December 22, 2020, at 2:14 AM.

In the above example, to display in a convenient way only the information we need, we have piped the stat command’s output to the awk and further formatted it using the substr function.

However, if you want to keep things as simple as possible, you can run the stat command below and look at the “Birth” row, indicating the moment the item was created on the file system.

stat /

Need more details? Check the stat command man page.

Another alternative approach to get information about when the file system was created, which is the Linux system’s installation time, is to use the command below. Remember that you must switch to the root user before running it.

fsname=$(df / | tail -1 | cut -f1 -d' ') && tune2fs -l $fsname |

Of course, other ways exist to discover when the Linux operating system was installed. Still, unlike the distro-agnostic ones shown above, they are tied to the particular distribution used. Here they are.
Debian / Ubuntu

On Debian and Ubuntu systems and all their derivatives like Linux Mint and others, you can see the exact day and time they were installed by displaying the first line of the installer syslog file.

sudo head -n1 /var/log/installer/syslog

Copyright 2024 by Tyrone Hills All rights reserved.
