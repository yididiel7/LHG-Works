# How to Install and Remove Packages in Arch Linux

[Arch Linux Package Managers](https://tinyurl.com/22k7wbhh)

Want to install packages on Arch Linux but don't know how? A lot of people face this problem when they first migrate from Debian-based distributions to Arch Linux. It's easy to manage packages on an Arch-based system, however.

Pacman is the default package manager that comes pre-installed on every Arch-based distribution. 
But still, there's a need for other package managers like yay as Pacman doesn't support installing packages from the Arch User Repository.

Let's see how you can add and remove packages on Arch Linux, from the official repositories and the AUR.

## Package Managers in Arch Linux

Although Arch Linux comes with Pacman as the default package manager, it's possible to install other package managers. Unlike Pacman, these package managers allow you to add new packages from the official Arch repository as well as the AUR (Arch User Repository).

While other package managers have been used over the years, examples such as yaourt and aurman are no longer maintained. Consequently, Pacman and yay are safer and more reliable package managers for Arch Linux.

AUR is a community-organized repository that provides users with a platform to share packages developed by them. If you are a developer, you can add packages to the AUR, and other users can install them on their systems.

1. Pacman

Every Arch system comes with Pacman as its default package manager. The most notable feature of Pacman is that it regularly syncs your system's packages with the master server, and in turn, keeps your system up to date.

2. yay

As yaourt and aurman have been discontinued, you can use yay to add packages from the AUR instead. The main aim of yay was to minimize user input and to provide a Pacman-like interface.

You won't be able to install yay using Pacman, though, as the latter does not support adding packages directly from the Arch User Repository. Therefore, you will have to install yay manually using its Git repository. Here's how to install it on your system:

    First, download git so you can clone the repository:

     
    pacman -S --needed git base-devel
     

    Then, clone the yay repository to your local storage using the git clone command:

     
    git clone https://aur.archlinux.org/yay.git
     

    Change the permissions for the downloaded folder with chmod:

     
    chmod 777 /yay
     

    Navigate to the directory where you cloned the repository with cd:

     
    cd yay-git
     

    Finally, use the makepkg command to build the yay-git package. Make sure you do not run the command as the root user, otherwise, it will raise an error:

     
    makepkg -si
     

Updating and Upgrading Packages on Arch Linux

If you have just installed Arch Linux, before you can add more packages, you'll have to sync your system with the master servers by updating your local package list.

Then, you can easily upgrade all your packages to the latest version by downloading the files from official servers.
Update Packages Using Pacman

To update your package list using Pacman, use the -Sy flag:

 
sudo pacman -Sy
 

After synchronizing your system's package list with the master servers, you need to upgrade the packages. Use the -Syu flag to do the same. This command can take some time depending on the package list and your network connectivity.

 
sudo pacman -Syu
 

You can save the effort of typing both of these commands by combining them using the -Syyu flag. Pacman will start downloading the latest packages automatically after updating the package list.

 
sudo pacman -Syyu
 

Update Packages on Arch Linux Using yay

To update and upgrade packages using yay, just use the -Syu flag:

 
sudo yay -Syu
 

Adding Packages on Arch Linux

Adding packages on Arch Linux is easy once you know which commands to execute. All you have to do is type the package manager commands in the terminal.
Install Packages on Arch Linux With Pacman

Pacman uses the TAR file extension to package applications. It works seamlessly with the Arch Linux system architecture. To add a package using Pacman, use the -S flag:

 
sudo pacman -S packagename
 

For example, to install CMatrix, run:

 
sudo pacman -S cmatrix
 

uninstalling packages using pacman

To install multiple packages at once, type in the package names separated by single spaces:

 
sudo pacman -S cmatrix vlc python
 

You can also get information about packages after installing them. The output provides details about the name, version, architecture, and license of the package. To do this, replace -S with -Qi in the default pacman command:

 
pacman -Qi cmatrix
 

How to Install Packages With yay

The syntax of yay is pretty similar to that of Pacman. To install a package using the yay package manager, just use the -S flag with the default command:

 
yay -S packagename
 

Removing Packages in Arch Linux

Arch Linux gives you the control to remove packages once you don't need them, and that's one of the many reasons why you should install Arch Linux. You can remove almost any package from your system if you have the authorization, of course.
Remove Packages With Pacman

Removing a package on Arch Linux is easy as well. All you have to do is use the -R flag:

 
sudo pacman -R cmatrix
 

If the package is not present in your system, you will receive an error stating "error: target not found: packagename".
Remove Packages on Arch Linux With yay

To remove packages using yay, add the -R flag to the default yay command. You can also use the -Rns flag to remove all unnecessary dependencies from your system.

 
yay -R cmatrix
yay -Rns cmatrix
 

If you want to remove the packages your system doesn't need, use the -Yc flag:

 
yay -Yc
 

Managing Packages on Arch Linux Is Easy

There are multiple ways to add and remove packages on an Arch-based Linux distribution. You can use package managers such as Pacman and yay. While some package managers allow the download of packages from the Arch User Repository, others like Pacman do not support the AUR.

If you are not a fan of package managers, you can always download the packages you want manually. Several websites are available on the internet that provide TAR, RPM, and DEB packages to Linux users.
