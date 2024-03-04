###########################################
# Title: "PCCS-Archlinux Guide"
# Author: "Sr. Yididiel"
# Date: "Saturday, 30 April 2023"
###########################################

## Pacman Commands Cheat Sheet for Arch Linux:

It is highly advisable to be a root user or have Sudoer user privileges on your Arch Linux system to fully benefit from what the Pacman command has to offer.

## Updating and Upgrading Arch Linux:

If you only want to update the software database of your Arch Linux system, go with the following command.

$ sudo pacman -Syy

To update and upgrade your Arch Linux system, go with the following command:

$ sudo pacman -Syu

## Install Package(s) in Arch Linux:

If you have a specific package called an apache web server in mind that you wish to install, it is advisable to first search for the availability of the package. This step is useful because some Linux OS distributions identify common packages differently.

$ sudo pacman -S apache

## To install an identified package, adhere to the following command:

$ sudo pacman -Ss apache

Supposing you have a local package or one that you have downloaded from a website and wish to install it, you need to adhere to the following command.

$ sudo pacman -U /path/to/your/installable/package

For all repo-based packages re-installation (during emergencies), implement the following command.

$ sudo pacman -Qnq | pacman -S -

Remove Package(s) in Arch Linux

To remove or uninstall a specific Arch Linux installed package, adhere to the following command.

$ sudo pacman -R name_of_package

To remove or uninstall an Arch Linux package together with its dependencies not tied to other active packages, reference the following command syntax:

$ sudo pacman -Rs name_of_package

To uninstall a specific Arch Linux package, remove its global configuration, and avoid its orphaned dependencies, use the following command syntax.

 
$ sudo pacman -Rns name_of_package

## Query Package(s) in Arch Linux

You might wish to retrieve some information about an installed package. The command syntax to use is as follows:

$ pacman -Qi name_of_package

For the apache package we installed earlier, we can get the following info about it:

$ sudo pacman -Qi apache

We can also query about an installable package and its associated dependencies via the command syntax:

$ sudo pacman -Sii name_of_package

To list installed packages, execute the command:

pacman -Qen | expac --timefmt="%F %T" "[%l] $(printf '\033[1;34m')%n$(printf '\033[0m') (%v)" - | sort -k1

$ sudo pacman -Qn

## Arch Linux Pacman Cheat Sheet

Following are the list of commonly used commands for the Pacman package manager 
in Arch Linux.

Command 	Description
sudo pacman -Syy 	Update package list
sudo pacman -Syu 	Update and upgrade all
sudo pacman -S pkgname 	Install specific package
sudo pacman -Ss keyword 	Find available packages
sudo pacman -Qs keyword 	Find available local packages
sudo pacman -Ql pkgname 	List all files from a package
Sudo pacman -Rsc pkgname 	Uninstall a package
sudo pacman -Qii pkgname 	List information on package

With the Pacman command cheat sheet, you should be comfortable enough to take your Arch Linux OS experience to the next level.

[Pacman Commands Cheat Sheet for Arch Linux](https://tinyurl.com/2qr6ysfb).

Like other package managers, pacman can synchronize package lists with the software repositories to allow the user to download and install packages with a simple command by solving all required dependencies.
Install packages with pacman

## Getting Started With Pacman Commands in Arch-based Linux Distributions

[find new packages, install and upgrade new packages, and clean your system](https://itsfoss.com/pacman-command/).

You can install a single package or multiple packages using pacman command in this fashion:

pacman -S _package_name1_ _package_name2_ ...

Sudo Pacman S

## Installing a package

The -S stands for synchronization. It means that pacman first synchronizes

The pacman database categorises the installed packages in two groups according to the reason why they were installed:

    explicitly-installed: the packages that were installed by a generic pacman -S or -U command
    dependencies: the packages that were implicitly installed because required by another package that was explicitly installed. 

Remove an installed package

To remove a single package, leaving all of its dependencies installed:

pacman -R package_name_

Sudo Pacman R
Removing a package

To remove a package and its dependencies which are not required by any other installed package:

pacman -Rs _package_name_

To remove dependencies that are no longer needed. For example, the package which needed the dependencies was removed.

pacman -Qdtq | pacman -Rs -

Upgrading packages

Pacman provides an easy way to update Arch Linux. You can update all installed packages with just one command. This could take a while depending on how up-to-date the system is.

The following command synchronizes the repository databases and updates the system’s packages, excluding “local” packages that are not in the configured repositories:

pacman -Syu

    S stands for sync
    y is for refresh (local cache)
    u is for system update

Basically it is saying that sync to central repository (master package database), refresh the local copy of the master package database and then perform the system update (by updating all packages that have a newer version available).
Sudo Pacman Syu
System update

Attention!

If you are an Arch Linux user before upgrading, it is advised to visit the Arch Linux home page to check the latest news for out-of-the-ordinary updates. If manual intervention is needed an appropriate news post will be made. Alternatively you can subscribe to the RSS feed or the arch-announce mailing list.

Be also mindful to look over the appropriate forum before upgrading fundamental software (such as the kernel, xorg, systemd, or glibc), for any reported problems.

Partial upgrades are unsupported at a rolling release distribution such as Arch and Manjaro. That means when new library versions are pushed to the repositories, all the packages in the repositories need to be rebuilt against the libraries. For example, if two packages depend on the same library, upgrading only one package, might break the other package which depends on an older version of the library.
Use pacman to search for packages

Pacman queries the local package database with the -Q flag, the sync database with the -S flag and the files database with the -F flag.

Pacman can search for packages in the database, both in packages’ names and descriptions:

pacman -Ss _string1_ _string2_ ...

Sudo Pacman Ss
Searching for a package

To search for already installed packages:

pacman -Qs _string1_ _string2_ ...

To search for package file names in remote packages:

pacman -F _string1_ _string2_ ...

To view the dependency tree of a package:

pactree _package_naenter code hereme_

Cleaning the package cache

Pacman stores its downloaded packages in /var/cache/pacman/pkg/ and does not remove the old or uninstalled versions automatically. This has some advantages:

    It allows to downgrade a package without the need to retrieve the previous version through other sources.
    A package that has been uninstalled can easily be reinstalled directly from the cache folder.

However, it is necessary to clean up the cache periodically to prevent the folder to grow in size.

The paccache(8) script, provided within the pacman-contrib package, deletes all cached versions of installed and uninstalled packages, except for the most recent 3, by default:

``` $ paccache -r ```

Sudo Paccache R
Clear cache

To remove all the cached packages that are not currently installed, and the unused sync database, execute:

pacman -Sc

To remove all files from the cache, use the clean switch twice, this is the most aggressive approach and will leave nothing in the cache folder:

pacman -Scc

Installing local or third-party packages

Install a ‘local’ package that is not from a remote repository:

pacman -U _/path/to/package/package_name-version.pkg.tar.xz_

Install a ‘remote’ package, not contained in an official repository:

pacman -U http://www.example.com/repo/example.pkg.tar.xz

Bonus: Troubleshooting common errors with pacman

Here are some common errors you may encounter while managing packages with pacman.
Failed to commit transaction (conflicting files)

If you see the following error:

error: could not prepare transaction
error: failed to commit transaction (conflicting files)
package: /path/to/file exists in filesystem
Errors occurred, no packages were upgraded.

This is happening because pacman has detected a file conflict and will not overwrite files for you.

A safe way to solve this is to first check if another package owns the file (pacman -Qo /path/to/file). If the file is owned by another package, file a bug report. If the file is not owned by another package, rename the file which ‘exists in filesystem’ and re-issue the update command. If all goes well, the file may then be removed.

Instead of manually renaming and later removing all the files that belong to the package in question, you may explicitly run pacman -S –overwrite glob package to force pacman to overwrite files that match glob.
Failed to commit transaction (invalid or corrupted package)

Look for .part files (partially downloaded packages) in /var/cache/pacman/pkg/ and remove them. It is often caused by usage of a custom XferCommand in pacman.conf.
Failed to init transaction (unable to lock database)

When pacman is about to alter the package database, for example installing a package, it creates a lock file at /var/lib/pacman/db.lck. This prevents another instance of pacman from trying to alter the package database at the same time.

If pacman is interrupted while changing the database, this stale lock file can remain. If you are certain that no instances of pacman are running then delete the lock file.

Check if a process is holding the lock file:

lsof /var/lib/pacman/db.lck

If the above command doesn’t return anything, you can remove the lock file:

rm /var/lib/pacman/db.lck

If you find the PID of the process holding the lock file with lsof command output, kill it first and then remove the lock file.

I hope you like my humble effort in explaining the basic pacman commands. Please leave your comments below and don’t forget to subscribe on our social media. Stay safe!

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
