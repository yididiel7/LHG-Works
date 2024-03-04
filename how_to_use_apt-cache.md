# How to use apt-cache search to find packages

What does APT do?

APT is a set of core tools found inside the Debian operating system. 
It provides utilities for the installation and removal of software 
packages and dependencies on a system.

    APT is a powerful tool that can be used to manage software packages on Debian-based systems.
    APT can be used to install, remove, upgrade, and downgrade software packages.
    APT can also be used to manage dependencies between packages.
    APT is a valuable tool for any system administrator who needs to manage software packages on a Debian-based system.

apt-get / high level package handling utility

apt-get is the command-line tool for handling packages and provides functions such as 
installing, removing, and updating packages on a system with a single operation. 
We’ll cover the following commands for apt-get:

    install and --reinstall
    remove
    purge or --purge
    upgrade
    update
    clean and autoclean

apt-cache / high level package query utlity

apt-cache provides an interface to perform read-only operations on the APT package cache. 
apt-cache does not change the state of the system, but allows the user to extract useful information from package metadata.

We’ll go over the following commands for apt-cache:

    pkgnames
    search show

dpkg / low level package manager for Debian

dpkg is a tool for installing, removing, and querying individual packages. 
We’ll investigate some common commands and go over some basic usage of dpkg in a couple of real-world examples.

    --list or -l
    --install
    --remove
    --purge
    --update
    --contents

 
apt-get high level package handling utility
Installing a Debian package:

 $ sudo apt-get install [package-name]

apt-get wants you to pass the [package-name] you wish to install, for example:

 $ sudo apt-get install vim

 
Removing a Debian package:

The following will remove a package without removing its configuration files:

 $ sudo apt-get remove [package-name]

To remove a package and its configuration files, use purge:

 $ sudo apt-get purge [package-name]

or alternatively, use the --purge flag on the remove command:

 $ sudo apt-get --purge remove [package-name]

 
Update package index files from sources.list:

 $ sudo apt-get update

When this command is run, all available packages are fetched and re-indexed from 
the locations specified in /etc/apt/sources.list and /etc/apt/sources.list.d/.

 
Upgrade all Debian system packages:

 $ sudo apt-get upgrade

This command installs all of the latest versions of each package installed on the 
system and is, generally, not recommended to be run on production systems.

 
Update / Reinstall a single package:

Once you’ve run apt-get update to update repository metadata, 
you can update an installed package by running apt-get install

 $ sudo apt-get install [package-name]

If you need to force reinstall a package, just pass the --reinstall flag

 $ sudo apt-get --reinstall install [package-name]

By passing the --reinstall flag, you will effectively force the package to be reinstalled 
even if it’s already installed and at the latest version. 
This will completely remove the package from the system* and reinstall it.

*Packages that depend on the [package-name] being reinstalled will not be removed from the system

 
APT cache files:

APTs cached files are located in:

    /var/cache/apt/archives/

 
Clear the APT cache:

 $ sudo apt-get clean

The clean command clears out the local repository of downloaded package files. 
It removes everything except the partials folder and lock file from /var/cache/apt/archives/.

Use apt-get clean to free up disk space when necessary, or as part of regularly scheduled maintenance.

 
Remove useless files from the APT cache:

 $ sudo apt-get autoclean

autoclean is another method used to clear out the local repository of downloaded package files, 
just like clean. The difference between clean and autoclean is that the latter only removes package 
files that can no longer be downloaded from their sources, and are very likely to be useless.

 
apt-cache high level package query utility
List all available packages:

 $ apt-cache pkgnames

This command will output a list of available package names for your system:

...
aspell-bg
389-ds-console-doc
libreoffice-l10n-ga
libindicate-doc
libreadline-dev
libpng12-dev

 
Searching for a specific Debian package:

 $ apt-cache search [package-name-pattern]

This is really useful in case you don’t know the exact [package-name], 
but rather a description of what that package does; for example “Network Security”:

 $ apt-cache search "Network Security"

This will return a list of packages containing the string “Network Security” in the package description. 
Using apt-cache will look in the name, description, and provides fields of the available packages by default.
