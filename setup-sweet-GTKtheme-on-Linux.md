# Set up Sweet GTK theme on Linux


STEPS
=====

## Download Full Icon Theme: Candy icons

Step 1: 
Move the terminal into the ~/Downloads with the CD command.

$ cd ~/Download

Step 2: 
Extract the Aqua Dark TarXZ archive file using the tar command.

$ tar -xvf candy-icons.tar.xz

Step 3: Install Aqua Dark.

Single-user

To set up Aqua Dark for a single user, create a .icons folder, then move the files into it.

mkdir -p ~/.icons
mv candy-icons ~/.icons/  

System-wide

For a system-wide Aqua Dark setup, place the icon files in /usr/share/icons/.

sudo mv ~/Downloads/candy-icons/ /usr/share/icons/

## Enabling Sweet

Sweet is set up on your Linux PC, but you won’t be able to use it unless you enable it.

Open up “Settings,” then, search for “Appearance,” or “themes” and change the theme to “Sweet.” Be sure to also change your default icon set to “candy-icons.”

```
Warning: This icon theme has no cache file.
You can create this by runing:

gtk-update-icon-cache /home/srhills/.icons/candy-icons/
```
## Sweet - New Flavor -

GTK3/4 Themes

Download new style themes at: 

xfce-look.org | https://www.xfce-look.org/browse/

Homepage | https://github.com/EliverLara/Sweet

Source | https://github.com/EliverLara/Sweet