# Installing Python on Arch Linux Using Pacman

The pacman package manager will help facilitate 
the installation of Python on Arch Linux distribution.

$ sudo pacman -Sy python-pip

As per the above screen capture, three packages will be 
scheduled for installation, namely python, python-pip, and libnsl.

Once installed, confirm the installed Python version:

$ python -V

Installing Python on Arch Linux from Source

First, update the Arch Linux system and then install system dependencies.

$ sudo pacman -Syu
$ sudo pacman -Sy base-devel wget

Next, download the latest Python source release using the following wget 
command and install it as shown.

$ wget https://www.python.org/ftp/python/3.10.7/Python-3.10.7.tar.xz

$ tar -xf Python-3.10.7.tar.xz
$ cd Python-3.10.7
$ ./configure
$ make 
$ sudo make install
$ python3 -V

Installing Python Modules in Arch Linux Using PIP

With both Python and Python-PIP installed, you 
should be able to easily install Python modules 
via PIP (Python Package Manager) as demonstrated below:

$ python3 -m pip install module_name
