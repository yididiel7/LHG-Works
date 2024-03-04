Installing and Setting Up Git


Installing on Linux

Many Linux distributions come with git preinstalled. You can check this by running git --version in the terminal and seeing if a version number is printed. If git is not installed, you can usually install git from your package manager. This will probably involve one of

    apt-get install git
    pacman -S git
    yum install git

If you don't have a package manager, then you probably have the ability to figure out how to install git on your own.

Basic Setup (all platforms)

Every git commit has the author and the author's email address attached. You need to tell git who you are and what your email address is so that it can automatically tag your commits with them. To do so, enter the following into a terminal:

git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL ADDRESS"
git config --global color.ui true
