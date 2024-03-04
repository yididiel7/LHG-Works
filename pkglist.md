# Easily list and migrate Arch Linux packages to a different install

## PS remember to add angle brackets

Step 1: Make sure that you have yay installed
https://github.com/Jguer/yay

Step 2: Open a terminal and run following to command to get a list of all packages. Including AUR packages.
Command: "pacman -Qqe  pkglist.txt"

https://wiki.archlinux.org/title/Pacm...

Step 3: On a different machine or same after reinstall. 
Command: "yay -Y --sudoloop --save"

Step 4: Copy the pkglist.txt file you created earlier to your home folder
Step 5: Open a terminal and run (Make sure you in your home folder)

Command: "yay --noconfirm --sudoloop -S --needed -  pkglist.txt"

Step 6: Wait for software to finish installing and reboot

Archlinux Security Question!

*What is the output of: LC_ALL=C pacman -V|tail -n3|base32|head -1 ? *
