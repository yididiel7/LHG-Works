# You could write a script that loops through all the packages and reinstalls them.

# Just save a list of the packages you've currently installed to a text file with

# The following commands should work on any Unix-like system.

List by folder :

ls $(echo $PATH | tr ':' ' ')

List all commands by name

ls $(echo $PATH | tr ':' ' ') | grep -v '/' | grep . | sort

Alternatively, you can get a convenient list of commands coupled with quick descriptions 
(as long as the command has a man page, which most do):

apropos -s 1 ''

-s 1 returns only "section 1" manpages which are entries for executable programs.

'' is a search for anything. (If you use an asterisk, on my system, bash throws 
	in a search for all the files and folders in your current working directory.)

Then you just grep it like you want.

apropos -s 1 '' | grep xdg




You could write a script that loops through all the packages and reinstalls them.

Just save a list of the packages you've currently installed to a text file with

pacman -Qq > packages.txt

and create the script:

nano reinstall.sh

#!/bin/bash
for package in $(cat packages.txt)
do
    pacman -S $package --overwrite "*" --noconfirm
done

after that you can run it with

sudo sh reinstall.sh

Note: you might have to type chmod a+x reinstall.sh to make the script executable first

