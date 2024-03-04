# How to Download AUR Packages

Since the Arch User Repository and the official repository aren't the same, the utilities for downloading packages from both the repositories are different. For the official repository, you can use pacman. But for the AUR, you have two choices.

Either you can manually clone and build the package or you can automate the process using an AUR Helper.
Manually Downloading a Package From the AUR

To download a package from the AUR, you'll have to install some necessary utilities on your system. Type the following command in the terminal to install the packages:

 
sudo pacman -S base-devel git
 

Start by heading over to aur.archlinux.org and searching for the package you want to download. Go to the package web page and copy the Git Clone URL.

 Then, launch the terminal and type the following command:

 
git clone cloneurl
 

Navigate to the downloaded folder using the cd command and run makepkg as follows:

 
cd pkgname/
makepkg -si
 
For example, let's download the Brave browser from the AUR:

git clone https://aur.archlinux.org/brave.git
cd brave/
makepkg -si
 

You don't have to run pacman to install the generated package archive. The makepkg command will automatically invoke pacman, which will then install the package along with the necessary dependencies.
Download Packages Using an AUR Helper

An AUR Helper simply automates the process of downloading PKGBUILDs from the AUR, generating the archive, and installing the package using pacman.

One such AUR Helper is yay, which is easy to download and use. Run the following commands one by one to install yay on your system:

 
git clone https://aur.archlinux.org/yay-git.git 
cd yay-git
makepkg -si
 

The basic syntax of yay is very similar to that of pacman:

 
yay -S packagename
 

To download Brave from the AUR using yay:

 
yay -S brave
 

That's how easy it was to install AUR packages using yay.
How to Submit Packages to the AUR

One of the primary concerns of developers is submitting packages to the AUR. The first thing you could do is read the package submission guidelines on the official website. Note that this guide already assumes you know how to create a package for the AUR.

To get started, you need to host your package on a platform like GitHub or GitLab. Then, clone the repository to your system and navigate to that directory using the command line.

The next step is to create a PKGBUILD that you'll add to the AUR. To do that, replicate the default package build prototype available at /usr/share/pacman:

cp /usr/share/pacman/PKGBUILD.proto PKGBUILD

Open the package build file using any text editor of your choice. Then, inside the PKGBUILD, specify the necessary information such as the package name, repository URL (GitHub or GitLab), necessary dependencies, etc.

 Here's a full table covering the important variables in brief detail:

Variable
    

Usage

pkgname
    

The name of the package

pkgver
    

The current version of the package

pkgdesc
    

A brief description of the package

arch
    

The required architecture of the target system

url
    

The URL of the Git repository to access the package

license
    

The software license you want to use

depends
    

Dependencies required by the package

conflicts
    

Packages that conflict with your package

provides
    

The package your AUR repository provides

source
    

Source of the files required to build the package

Note that you also need to fill in the maintainer details specified at the beginning of the file. Additionally, edit the build, check, package, and prepare methods at the end of the file to suit your needs.

When you're done, build the package using the PKGBUILD you just created.

 
makepkg -si
 

If all goes well, generate the SRCINFO file by typing:

makepkg --printsrcinfo > .SRCINFO
 

Move the PKGBUILD and .SRCINFO to a separate directory.

To submit your package build, create and clone an empty AUR repository using the following command syntax:

 
git clone ssh://aur@aur.archlinux.org/packagename.git
 

...where packagename is the name of your package.

Copy the package build and SRCINFO file to the newly created repository folder using the cp command. Finally, all you need to do is commit, add, and push the changes to the remote AUR repository using Git.

[Create Packages For The Arch User Repository(AUR)](https://youtu.be/iUz28vbWgVw)

 Is the Arch User Repository Safe?

The AUR is one of the most prominent methods of package distribution on Arch Linux, and the community is striving to take it to the next level. Thanks to all the users who participate in the maintenance of the AUR, this community-driven repository now hosts thousands of user-developed software packed with exciting features.

To sum it up, there's no actual harm in downloading software from the Arch User Repository, but only if you check the package builds and the INSTALL files prior to installation. Failing to do so might not have any serious complications every time, since the Trusted Users do a great job steering harmful packages away from the whole database. But it's always better to be safe than sorry.

If you're new to Arch Linux, consider learning how to download and install packages from the official repository first, and then, when you're comfortable with the process, proceed with the AUR.



Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
