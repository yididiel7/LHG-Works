# Arch Linux How to Check Installed Packages

If you are running Arch Linux you have, at some point, probably wanted a way to check which packages are installed on your system. As you would expect, it is very easy to generate a list of packages.

## This command will list all installed packages:

pacman -Q

## This will generate a list of explicitly installed packages:

pacman -Qqe > my-list-of-packages.txt

List explicitly installed packages that aren’t already a dependency of other explicitly installed packages:

pacman -Qqe > my-list-of-packages.txt

## List of foreign packages. This includes things from AUR:

pacman -Qqem > my-foreign-package-list.txt

Here are some relevant switches:
-Q 	query package db
-e 	only show explicitly installed packages
-t 	exclude anything that is a dependency of an explicitly installed package
-n 	exclude foreign packages including AUR packages
-q 	quiet, show less information

## Install packages from a list that are not already installed and up-to-date:

pacman -S --needed - < my-list-of-packages.txt

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
