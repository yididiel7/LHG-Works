# GTK3/4 Themes
GTK Themes and Add-ons has 25 active Supporters

# Full Icon Themes
Artwork (Icons, Cursors, Wallpapers) has 22 active Supporters ⌄

Sweet - New Flavor -

GTK3/4 Themes

[Sweet - New Flavor](https://www.gnome-look.org/p/1253385/)

## Homepage

https://github.com/EliverLara/Sweet

Source i

https://github.com/EliverLara/Sweet


[Candy icons](https://www.gnome-look.org/p/1305251/).

Candy icons

Full Icon Themes

## Homepage

https://github.com/EliverLara/candy-icons

Source i

https://github.com/EliverLara/candy-icons

How to install the Sweet GTK theme
[Sweet GTK theme](https://www.addictivetips.com/ubuntu-linux-tips/install-sweet-gtk-theme/).

Set up Sweet GTK theme on Linux

As mentioned before: you must install Sweet via GitHub. Going this way is the easiest, as Git can quickly download all the files to any computer in an instant, rather than dealing with extracting Zip archives, or TarGZ files.  To download the Sweet theme, open up a terminal window, and run the git clone command.

git clone https://github.com/EliverLara/Sweet.git

The clone command tells Git to download the Sweet GTK theme to your home folder and place everything in the Sweet folder. You can enter this theme folder by using the CD command.

cd Sweet

Inside the “Sweet” directory, all the important GTK theme files are here. To get a closer look at the data, run the ls command.

ls

When you can verify all of the GTK files match what is shown on the theme’s GitHub page, it’s safe to install Sweet to your Linux system. Follow the steps below to set it up correctly.
Install Sweet for a single user

Setting up the Sweet GTK theme so only one user account can access it is a good idea if you do not share a PC with anyone. To do it, you must first create the .themes folder. To make this new folder, open up a terminal window and use the mkdir command.

mkdir -p ~/.themes

After creating the new folder, move the Sweet GTK theme files into it and finish the installation.

cd ~/

mv Sweet ~/.themes

Install Sweet system-wide

Want more than one user to access and use the Sweet GTK theme? You’ll need to install it system-wide! To do it, move to your home directory with the CD command. Then, using sudo, place the theme into /usr/share/themes/.

cd ~/

sudo mv Sweet /usr/share/themes/

Sweet icon theme

The Sweet GTK theme looks great on its own, but it isn’t complete without a matching icon theme. The icon set that goes the best with this theme is known as Aqua Dark.

To get the Aqua Dark icon theme working, download it via this link. Then, follow the steps to get it set up on your Linux PC.

Step 1: Move the terminal into the ~/Downloads with the CD command.

cd ~/Downloads

Step 2: Extract the Aqua Dark TarXZ archive file using the tar command.

tar -xvf Aqua-Dark.tar.xz

Step 3: Install Aqua Dark.

Single-user

To set up Aqua Dark for a single user, create a .icons folder, then move the files into it.

mkdir -p ~/.icons
mv Aqua-Dark ~/.icons/

System-wide

For a system-wide Aqua Dark setup, place the icon files in /usr/share/icons/.

sudo mv ~/Downloads/Aqua-Dark/ /usr/share/icons/

Enabling Sweet

Sweet is set up on your Linux PC, but you won’t be able to use it unless you enable it.

Open up “Settings,” then, search for “Appearance,” or “themes” and change the theme to “Sweet.” Be sure to also change your default icon set to “Aqua Dark.”

Not sure how to set Sweet as the default GTK theme on Linux? We can help! Check out one of the tutorials in the list below!

Note: Sweet is a GTK-based theme, so it will not work on desktop environments like KDE Plasma 5, LXQt, or other non-GTK environments.

# How to install the Candy icon theme in Linux

[Candy icon theme in Linux](https://www.addictivetips.com/ubuntu-linux-tips/install-candy-icon-theme-in-linux/).

Candy is an elegant, gradient style theme for the Linux desktop. It is colorful, and unique, and is unlike any other icon theme on the Linux platform. If you’re looking for a great new set of icons for your desktop and are sick of the popular themes, take a chance and install this theme with the instructions below!

Download the Candy icon theme

To get your hands on the Candy icon theme, you must download it from the Gnome-look Linux theme website. Using this link here, go to the official Candy Gnome-look.org page.

Once you’ve made it to the Gnome-look.org page for Candy, find the “Files” button and click on it with the mouse to go to the download section. Then, download the item in the list with the name of “candy-icons.tar.xz.”

In addition to getting the Candy icon theme on Gnome-look.org, it is also possible to download the source code from the project’s GitHub page. However, we do not recommend going this route to install Candy unless you are an advanced Linux user and know how Git works.
Extracting the Candy icon theme

Now that the Candy icon theme is downloaded to your Linux PC in the form of a TarXZ archive, you must go through the process of extracting the contents of the archive. To do this, open up a terminal window by pressing Ctrl + Alt + T or Ctrl + Shift + T on the keyboard. Then, when the terminal window is open,  use the tar command to extract the Candy theme archive fully.

tar xvf ~/Downloads/candy-icons.tar.xz

When the extraction process is complete, a folder with the name of “candy-icons” will appear in your “Downloads” directory. To view the contents of this folder, run the following ls command.

ls candy-icons

Install Candy icon theme

The Candy icon theme is fully extracted in the “Downloads” directory. Now it is time to install the icon theme to your Linux computer. To do this, open up a terminal window and use the CD command to move the terminal to the “Downloads” directory.

cd ~/Downloads

Now that the terminal window is in the “Downloads” directory on your Linux PC follow the installation instructions outlined below to get the Candy icon theme working correctly.
Set up for single-user

Setting up the Candy icon theme for a “single-user” means that only the user that the theme is set up on will have access to the icon theme. If you do not plan to give access to the Candy icon theme to any other user on your Linux PC, go this route for installing it.

To start the installation of the Candy icon theme as a single user, create the new “.icons” folder in your home directory with the mkdir command.

mkdir -p ~/.icons

After creating the new “.icons” directory, use the CD command and move the command-line session into the “Downloads” folder, where the extracted Candy icon files are located.

cd ~/Downloads

Once inside of the “Downloads” directory, use the mv command to place the Candy icons into the “.icons” folder you created earlier.

mv candy-icons ~/.icons

When the command is complete, you can run the ls command to view the “.icons” directory to confirm the files are there.

ls ~/.icons | grep candy-icons

Set up system-wide

Setting up the Candy icon theme system-wide on Linux means that every user has access to the icons, not just one user. To start the installation, use the CD command to move the terminal window into the “Downloads” directory.

cd ~/Downloads

Inside of the “Downloads” directory, use the sudo -s command to transition the terminal window into root mode. Do not use the su command, as it will take you out of the “Download” folder.

sudo -s

Once the terminal window has root access, use the mv command to place the Candy icon files into the “/usr/share/icons/.” directory.

mv candy-icons /usr/share/icons/

After the mv command finishes placing the Candy icon files into the system icon directory, use ls to verify that all the files are there.

ls | grep candy-icons
Activate Candy icon theme on Linux

The Candy icon theme is installed on your Linux computer. However, it is not in use on the desktop. To use the Candy icon theme on your desktop, you must change the default system icons.

To change the default icons on the Linux desktop, open up “System Settings.” Then, with “System Settings” open, look for the “Appearance” or “Icons” option, and click on it to set Candy as the default icon theme on your Linux PC.

Having trouble setting up the Candy icon theme on your Linux PC? Take a look at the list below to learn how to set icon themes on all major Linux desktop environments.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
