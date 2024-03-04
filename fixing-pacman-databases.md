# Fixing Pacman Databasess and Fixing Keys on ArcoLinux

## Pacman management

Sometimes we run out of disk space. This mostly happens on dual boot systems.

You can clean out the cache folder and gain a few GB.

$ sudo pacman -Scc

Pacman stores the databases locally in /var/lib/pacman/sync/.

The pacman databases will occasionally get corrupted. Removing the files in this folder and updating your system will create new databases.

sudo rm /var/lib/pacman/sync/*
update

Type in the terminal this command

pacman -Suv

You will get all the important places pacman is going to use.

Root      : /
Conf File : /etc/pacman.conf
DB Path   : /var/lib/pacman/
Cache Dirs: /var/cache/pacman/pkg/  
Hook Dirs : /usr/share/libalpm/hooks/  /etc/pacman.d/hooks/  
Lock File : /var/lib/pacman/db.lck
Log File  : /var/log/pacman.log
GPG Dir   : /etc/pacman.d/gnupg/


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
