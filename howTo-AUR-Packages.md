# How to install AUR packages (manually + helpers)

[AUR packages (manually + helpers)](http://tinyurl.com/267s9ss6).
[How to install AUR Packages](https://youtu.be/CMA1l4bGxog).

The Arch Linux repositories are one of the most complete in all of Linux. If a program is not available in the official Arch Linux repository, it should be available in the Arch User Repository or AUR. So, this post will teach you how to install AUR packages both manually and with some helping program.
INTRODUCTION

So, if a package is available for Linux, it is unlikely you will not find it in the AUR. Many Arch users say that the AUR is one of the main reasons they use Arch Linux. If you use Arch Linux or you are about to move to Arch Linux, you will have to use the AUR sooner or later. However, installing packages from the AUR seems to be complicated if you have never done it before. But I will try to present the process in the easiest way possible.

In the first part of this post, I will show you how to install AUR packages manually. Then, in the second part, you will learn how to use some AUR helpers that simplify and automate the installation process. There are several helpers available. In the video above, I showed how to install and use Yaourt, and aurman. But both these programs are discontinued now. So, in this post, I will show you how to install and use yay, yet another yogurt. The video tutorial showing yay is at the end of this post.

Before we start I would like to warn you that all AUR packages are user-produced content, so use them at your own risk.
Prerequisites

To install AUR packages, you need to have some building programs on your system to compile a program. You will also need the git program to download the source code of the AUR packages. To install all the required packages, run the following command:

sudo pacman -S --needed base-devel git

In addition, I also recommend enabling parallel compiling on your system to improve the compiling speed. To do that, open the file /etc/makepkg.conf.

sudo nano /etc/makepkg.conf

It is a very large file but if you press the combination CTRL + W, you can search for a term MAKEFLAGS.
Search for the term MAKEFLAGS
Search for the term MAKEFLAGS

So, most likely you will have a value of -j2, which means to use 2 threads of the processor. But if your processor has more than two threads, you can replace -j2 with -j$(nproc). The variable $(nproc)will define a number of available threads in your processor automatically.
Improving the compilation time by enabling parallel compiling
Improving the compilation time by enabling parallel compiling

Then, press CTRL+O to save the changes and CTRL+X to exit.

After that, you should be able to install AUR packages without problems.
Manual Installation

To install a program from AUR manually, you need to perform a few steps. Basically, you have to do the following:

    Find the package in the AUR.
    Clone the repository.
    Check the PKGBUILD file.
    Compile and install the program.

1. Find the package in the AUR

On Arch Linux website, you need to go to the AUR section. and search for the package you are about to install. For example, I will search for Spotify. Spotify is not in the official repository of Arch Linux because it is proprietary software.
Search for spotify on the AUR page
Search for spotify on the AUR page

Then, you will see all the information about the program on the next screen. To install an AUR package, you will need to copy the link in Git Clone URL.
Spotify details on the AUR page
Spotify details on the AUR page
2. Clone the repository

After doing that, it is necessary to clone the repository using git. However, I recommend creating a dedicated folder for this type of programs. For example, I created the Programs folder where I compile all the non-official program. Next, enter this folder and clone the repository of the program you selected earlier (Spotify in my case)”

git clone htps://aur.archlinux.org/spotify.git

Downloading the spotify files using git
Downloading the spotify files using git
3. Check the PKGBUILD file.

After the cloning is finished, a new folder containing the program code will be created. In this case, it is called spotify. Enter it and list its contents with the command ls. In that folder, you should see the PKGBUILD file.
Access to the downloaded folder
Access to the downloaded folder

You can open it with nano, explore its content and edit it if necessary. You can learn about PKGBUILD format at the Arch Linux Wiki.
PKGBUILD page on the Arch wiki
PKGBUILD page on the Arch wiki
4. Compile and install the program.

After that, you can start compiling it by running this command in the program directory:

makepkg -si

Install a AUR package manually
Install a AUR package manually

Depending on the package, it can take quite some time. Next, you have to type your password to install the program.
No errors on the installation
No errors on the installation

Now, the program is installed and you can open the program from the main menu.

This way you can install any program from the AUR. As you can see, the process is quite simple, it all comes down to cloning the repository, accessing the folder, verifying the PKGBUILD file and finally, starting the installation.
Install AUR Packages using a helper

There are several AUR helpers available. You can see the full list at this page of Arch Linux Wiki. The installation procedure for these helpers is the same as manual installation from the AUR shown above. I will show how to install yay. It is recommended by the developer of aurman, which I used before, and it is also a recommended helper on Manjaro website. I also liked it after I tested it.

To start installing it, find the git URL of yay in the AUR webpage and clone the repository:

git clone https://aur.archlinux.org/yay.git

Now, enter the downloaded folder, build and install the program.

makepkg -si

Now, yay is available for use. For example, to search for a program in the AUR, use this command:

yay package_name

If you already know that package name, you can install it right away with the -S option:

yay -S package_name

You can also use yay to search both the AUR and official repositories with -Ss option.

yay -Ss package_name

Finally, to upgrade all the packages, use this command.

yay -Sua

As you can see from these commands yay uses the same syntax as in pacman. You can discover all available options of yay with the man command:

man yay

I hope you will enjoy using yay.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
