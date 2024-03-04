# Steps to Clean Arch Linux

Cleaning the cache manually

You can clean the cache manually. For example, I usually move these files to my old hard drive that I use only to store data. This way I can always access these files but they do not take valuable space on my system.

However, if you do not have extra space to store these packages, you can remove them without a backup. One option is to remove cached packages that are not currently installed:

sudo pacman -Sc

The other option is to remove all the package from the cache, including those that are installed:

sudo pacman -Scc

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
