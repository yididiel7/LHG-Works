# Installing pip3 and python3 on Arch Linux
sudo pacman -S python2-pip                #Python 2

sudo pacman -S python-pip                #Python 3

sudo pacman -S python-pip
sudo pacman -S python3
sudo pacman -S pyshortners
pip3 install pyshorteners
pip3 install pyshorteners --break-system-packages

Getting Started with PIP on ArchLinux



PIP is a large suite of tools that are used to automate the installation and management of python packages and modules. The name pip is an acronym for PIP Install Packages. It is essentially a package manager for non-standard python packages, those not included in the standard python library.

Every developer who’s ever worked python will tell you that the community packages are a must. Having PIP at your disposal when working with python saves you a lot of time scouring for updates on the web.

In this post, you’ll learn all about setting up PIP on ArchLinux.
Install PIP on ArchLinux

Enter the following command to download PIP with pacman:
$ sudo pacman -S python2-pip                #Python 2

$ sudo pacman -S python-pip                #Python 3

Getting started with PIP

Take a minute and read the PIP help page, which lists PIP commands and their functions. Type in the following to get details on PIP commands:
$ pip help


Let’s discuss some of these commands:

To install a package, you’d use the following command syntax:
$ pip install packageName

For example, to download the pprintpp package, you’d type in:
$ pip install pprintpp


The command to uninstall a package is quite similar:
$ pip uninstall packageName

To uninstall pprintpp:
$ pip uninstall pprintpp


You can also lookup a package’s details with the following command:
$ pip search packageName

Wrapping up

That’s all we have for you today. In this short guide, you’ve learned how to install PIP on ArchLinux. The CLI interface is pretty straightforward, and you’ll get used to it in just a matter of time.

The community packages are undoubtedly a great asset for any python developer. PyPI features an ever-growing list of cool new modules for you to make your work a lot easier. PIP is going to come in real handy if you want to avail of these packages.
