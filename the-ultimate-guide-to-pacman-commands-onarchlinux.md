# THE ULTIMATE GUIDE TO PACMAN COMMANDS ON ARCH LINUX

Pacman is the default package manager on Arch-based distros. 
Here's how you can use it to manage packages on your system like a pro.

Package managers are the backbone of a Linux system. It's only because of them you can install and enjoy the latest software on your desktop. Pacman, a portmanteau of the words "package" and "manager," is the default package manager on Arch-based systems.

Although Pacman is fairly easy to learn as compared to its counterparts, users coming from other distro families find it frustrating to adapt to the short, one-character arguments of Pacman. So let's take a look at Pacman, its various options, and how you can use it to manage packages on Arch Linux like a pro.
Pacman Commands Guide

Like other Linux commands, Pacman follows a basic command syntax with some predefined flags and arguments:

sudo pacman -options pkgname
 
...where -options are the flags you use to invoke different functions and pkgname is the name of the package(s) that you want to operate upon.
Upgrade Packages Using Pacman

When you install Linux, the first thing you should do is update installed packages. The following Pacman command will synchronize installed packages with the repositories and upgrade them if updates are available:

sudo pacman -Syu
 
To upgrade only a particular package, specify the package name as the argument with the -S flag:

sudo pacman -S pkgname
 
Conversely, you can also prevent the upgrade of a package in Arch Linux. This will require you to edit the pacman.conf file located in the /etc directory, though.
Installing a New Package

To add new programs to your system, you'll need to install packages from the official Arch repositories. The -S flag assists you by providing an easy way to download and install packages. The basic syntax of the command is:

sudo pacman -S pkgname
 
For example, to install the root package:
 
sudo pacman -S root
 
Output:
installing packages using pacman

Specify a space-separated list of packages to install multiple packages with a single command:

sudo pacman -S pkgname1 pkgname2 pkgname3
 
Like Ubuntu, Arch Linux also has several repositories from where you can get your packages. If a package with the same name is available on multiple repositories, choose which one you want by specifying the name of the repository.
 
sudo pacman -S repo/pkgname
 
To install a package from the "community" repository:
 
sudo pacman -S community/pkgname
 
For those who want to keep a backup of certain packages for later use, you can download a package without installing it using the -Sw flag:
 
sudo pacman -Sw pkgname
 
You can also download and install a package directly using the package source URL. To do that, use the -U flag and specify the link to the archive:

sudo pacman -U https://example.com/pkgname.pkg.tar.zst
 
Installing a Local Package Using an Archive

At times when you don't find a package in the Arch repositories, you can download its tarball/archive from the internet and install it manually using Pacman. The -U flag lets you locally install a package using a downloaded archive:
 
sudo pacman -U /path/to/archive/pkgname.pkg.tar.zst
 
Usually, Pacman keeps track of the packages installed using the pacman -S pkgname command and regularly checks if an update is available for them or not. But if you install a package using a downloaded tarball, you'll have to manually check for updates for the package.

Therefore, it is recommended that you download packages from the official repositories. Only if the package is unavailable in the official repositories should you download and install a package locally using its archive.

If you want to downgrade a package by installing it from the package cache, use the following command format:
 
sudo pacman -U file://path/to/archive/pkgname.pkg.tar.zst
 
Search for a Package to Install

Pacman allows you to search for packages in the local database, sync database, and file database using the -Q, -S, and -F flags, respectively.

When you don't know the exact name of a package, you can search for it in the sync database using the -Ss flag.
 
sudo pacman -Ss query
 
For example:
search for packages on arch linux

To search for a package already installed on your system, use the -Qs flag:
 
sudo pacman -Qs query
 
If you want to learn more about a package before actually installing it, use the -Si flag with the command:
 
sudo pacman -Si pkgname
 
To list orphaned packages, i.e., installed dependencies not required by any package on the system:
 
sudo pacman -Qdt
 
You can combine the above command with the pacman -Rns command to free up some space on your system as follows:

sudo pacman -Rns $(pacman -Qdt)
 
Uninstalling a Package

When you want to remove a package installed using Pacman, use the -R option.

sudo pacman -R pkgname
 
Output:
uninstalling packages using pacman

The above command will only remove the specified package and will keep its dependencies intact. To remove the dependencies along with the package, append the -s flag to the command:

sudo pacman -Rs pkgname
 
If the package you want to remove acts as a dependency of another package, you can remove both packages using the additional -c flag:

sudo pacman -Rsc pkgname
 
Usually, Pacman keeps the configuration files associated with a package and creates a backup of those files when you remove the package. To override this default behavior and remove packages without backing up config files, use the -n flag with the remove command:
 
sudo pacman -Rns pkgname
 
Free Up Some Space by Cleaning the Package Cache

When you install a package using Pacman, it doesn't remove the downloaded files. Instead, it stores them in the package cache until they're removed by the user. This can lead to low storage issues as these cache files can accumulate and take up a huge chunk of your system storage.

To fix this, regularly cleaning the package cache is important.
 
paccache -r
 
You can choose to only keep the cache files of currently installed packages and remove the rest using the following command:
 
pacman -Sc
 
Pacman vs. APT vs. DNF: A Comparison

Compared to other package managers such as APT or DNF, Pacman can be complicated for new users given the complex, unintuitive flags used in the commands. But that's also the beauty of Pacman; you can get things done quickly without typing multiple lines of commands in the terminal.

Let's compare the commands to update and upgrade packages using APT and Pacman. If you're running a Debian-based distro, you'll have to execute two commands to achieve this goal:

sudo apt update
sudo apt upgrade
 
You can also concatenate the above two commands using the && operator, but it still falls short when compared to its Pacman counterpart:
 
sudo pacman -Syu
 
Overall, APT and DNF commands are self-explanatory and are easy to understand for Linux newcomers, whereas Pacman commands are concise and get more done in a few keystrokes.
Stepping Up! Exploring the Arch User Repository

As you might know, Pacman can only get packages from the official Arch repositories. But a huge share of packages resides on the community-maintained Arch User Repository (AUR). To install packages from the AUR, you need an AUR helper like yay.

The AUR is a repository created and maintained by the users, for the users. Anyone can add their packages to the AUR in the form of PKGBUILDs provided they have enough knowledge of the AUR in the first place.


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
