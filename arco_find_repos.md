# How to find ArcoLinux Directories

How to find ArcoLinux Repositories arcolinux_repo:
sudo pacman -Syl arcolinux_repo

How to List nemesis_repo:
sudo pacman -Syl nemesis_repo

How to install a package:
sudo pacman -S edu-papirus-dark-tela-git

The ‘rip‘ alias gives you an overview of all the packages that were installed last.

You can login via TTY in ArcoLinux – No password required

Bare metal = CTRL + ALT + F3 till F6

VirtualBox = right CTRL + F3 till F6

The X Window System will use the virtual console 7 by default. So if you start X and then switch to one of the text-based virtual consoles, you can go back again to X by typing Alt-F2.

Then you need to update the pacman database with

sudo pacman -Syyu

Then you can install and remove packages with pacman.

With df  you can see that we gave you 10GB of cowspace or space to install applications.

We also show you how to stop and start lightdm.

sudo systemctl stop sddm.service

sudo systemcl start sddm.service

We hope this will give more room to ‘fix things’ on your hardware.


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.

