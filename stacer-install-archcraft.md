# How To Install And Use Stacer On Linux
# Sat 11 Nov 2023 08:23:24 AM IST

## Archcraft Linux Instructions

[Archcraft Linux Instructions](https://tinyurl.com/y86m4hsm).

There aren’t any native packages available for the Stacer system monitoring tool on Arch Linux. Instead, users that want to take advantage of all of the neat Linux system monitoring tools on Arch will need to use the AUR package. The AUR package builds the program from source, ensuring greater compatibility (instead of de-compiling an RPM or DEB package).

To start the building process on Arch, start out by opening up a terminal and using the Git tool to pull the latest version of the package.

Note: make sure you have the “git” package installed, or this process will not work.

$ git clone https://aur.archlinux.org/stacer.git

Using the CD command, move the terminal into the Stacer folder.

cd stacer

Start the build process with the makepkg command. Be sure to add -si to the end of this command, to tell your system to install all available, missing dependencies automatically. Using these flags will also cause Arch to install Stacer automatically when the build is complete.

makepkg -si

# How To Install bleachbit on Arch Linux

$ sudo pacman -Sy

$ sudo pacman -S bleachbit

## Uninstall / Remove bleachbit package

[Clean Your System and Free Disk Space BleachBit](https://www.bleachbit.org/).

Please follow the steps below to uninstall bleachbit package: 

$ sudo pacman -Rcns bleachbit


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
