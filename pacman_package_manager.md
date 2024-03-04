# What Is the Pacman Package Manager?

Pacman is a package manager utility for Arch Linux and its derivatives. It is written in C and combines a simple binary package format with an easy-to-use build system. The goal of pacman is to make it possible to easily manage packages, whether they are from the official repositories or the user’s builds.

The pacman package manager works according to the client-server model with respect to the master servers, which allows the user to download/install packages with a simple command, complete with all required dependencies. It also helps you synchronize packages with the master servers and update your packages.
Using the Pacman package manager

Pacman comes with a lot of functionalities. However, in this module, we will learn how to :

    Search for packages with pacman
    List installed packages with pacman
    Install packages with pacman
    Updating and Upgrading with pacman
    Removing packages with pacman

1. Searching For Packages With Pacman

You can search for packages using pacman with :
$ pacman -Ss <package-name>

This shall return all the packages which contain the given string provided in the brackets. This returns all packages with a matching string in the package name or description.
$ pacman -Ss fire

This would return many results like firefox, ufw, openfire, etc, which have the word “fire” anywhere in their name or description. You can also use pacsearch like :
$ pacsearch -n ^fire
2. Listing All Installed Packages With Pacman

You can list all the packages installed on your system along with their versions by typing :
$ pacman -Q

You can also view additional information about a package by using the following:
$ pacman -Qi <package-name>

For example, to view the details of the package “firefox,” you can type in the following:

`$ pacman -Qi firefox`

Name            : firefox
Version         : 86.0.1-1
Description     : Standalone web browser from mozilla.org
Architecture    : x86_64
URL             : https://www.mozilla.org/firefox/
Licenses        : MPL  GPL  LGPL
Groups          : None
Provides        : None
Depends On      : gtk3  libxt  mime-types  dbus-glib  ffmpeg  nss  ttf-font  libpulse
Optional Deps   : networkmanager: Location detection via available WiFi networks [installed]
                  libnotify: Notification integration [installed]
                  pulseaudio: Audio support [installed]
                  speech-dispatcher: Text-to-Speech
                  hunspell-en_US: Spell checking, American English
Required By     : dracnmap  eyewitness  findsploit  firefox-security-toolkit  sn1per
Optional For    : None
Conflicts With  : None
Replaces        : None
Installed Size  : 217.90 MiB
Packager        : Jan Alexander Steffens (heftig) <heftig@archlinux.org>
Build Date      : Thu 11 Mar 2021 04:15:06 PM IST
Install Date    : Tue 16 Mar 2021 01:49:16 AM IST
Install Reason  : Explicitly installed
Install Script  : No
Validated By    : Signature

As a bonus, you can also list all the orphaned dependencies which you have installed on your system with :
$ pacman -Qdt
3. Installing Packages With Pacman

Once you have located the package you want to install, you can install it with :
$ sudo pacman -S <package-name>

Sometimes some packages might already be installed. In that case, this command shall reinstall them. You can, however, skip these packages with the following:
$ sudo pacman -S <package-name> --needed

You can also build packages from the source using pacman with the help of the following syntax :
$ sudo pacman -U <package-file>
4. Updating And Upgrading With Pacman

You can update your system with the following:
$  sudo pacman -Syy

This is the Arch equivalent of apt update on Debian.

To upgrade your system, type in the following:
$ sudo pacman -Syu

This is the Arch equivalent of apt upgrade on Debian
5. Removing Packages With Pacman

You can remove a package with the following:
$ sudo pacman -R <package-name>

To remove a package with all its dependencies :
$ sudo pacman -Rcns <package-name>
Conclusion

The Pacman package manager is a remarkably flexible and potent tool for handling packages on Arch Linux and its derivatives. It has a wide range of capabilities that make it easier to find, download, install, update, upgrade, and remove packages from your system. You will better understand and control your Linux environment if you can master these functionalities. The Pacman package manager continues to be a dependable and effective tool for ensuring your system is up-to-date and optimized in a constantly changing technical environment. Whether you are an experienced user of Arch Linux or are just starting, Pacman is a crucial tool in your toolbox that will unquestionably improve your overall experience.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
