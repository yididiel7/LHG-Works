# Arch change hostname command

/etc/X11/xorg.conf.d

┌[srhills☮minipcpn62]-(/etc/X11/xorg.conf.d)
└> ll
Permissions Size User Date Modified Name
.rw-r--r--   232 root 14 May 07:12  00-keyboard.conf
.rw-r--r--    74 root 26 May 13:55  20-intel.conf
.rw-r--r--   130 root 22 May 09:19  30-touchpad.conf
.rw-r--r--   217 root 22 May 09:19  99-killX.conf


The procedure to change the computer name on Arch Linux:

    Type the following command to edit the /etc/hostname using nano or vi text editor:

sudo nano /etc/hostname

Delete the old name and setup new name.
Next Edit the /etc/hosts file:
sudo nano /etc/hosts

Replace any occurrence of the existing computer name with your new one. Here is my sample /etc/hosts:

127.0.0.1	localhost localhost.localdomain
::1         localhost localhost.localdomain
192.168.2.100 arch-vpn-box

Reboot the Arch Linux system to changes take effect:
sudo reboot

man 1 hostnamectl
man 5 hostname

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
