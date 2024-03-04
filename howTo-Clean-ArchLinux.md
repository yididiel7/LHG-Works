# How to clean Arch Linux

1. [How to clean Arch Linux](http://tinyurl.com/2ojc29tb).
2. [VIDEO How To Clean Arch Linux](https://youtu.be/3OoMvyHYWDY).

"""
NOTE that I would like to warn you that you may damage your system if you do a mistake during these procedures. So, please back up all your files before doing anything to your system.
"""

## Steps to Clean Arch Linux

1. Clean package cache

Pacman, a package manager of Arch Linux, stores all downloaded packages in /var/cache/pacman/pkg/ and it does not remove the old or uninstalled versions automatically. You might think this is a mistake, but this is done deliberately. This allows downgrading a package without the need to retrieve the previous version through the Arch Linux Archive. Or if you uninstall a program, you can easily reinstall it without a new download. If you have a slow internet connection, this may be useful. For example, you can simply install a package from this directory using the command below.

sudo pacman -U /var/cache/pacman/pkg/packagename

Showing the size of downloaded packages in my Arch Linux

So, you need to clean it from time to time. There are two ways you can do that: manually and automatically.
Cleaning the cache manually

You can clean the cache manually. For example, I usually move these files to my old hard drive that I use only to store data. This way I can always access these files but they do not take valuable space on my system.

However, if you do not have extra space to store these packages, you can remove them without a backup. One option is to remove cached packages that are not currently installed:

sudo pacman -Sc

The other option is to remove all the package from the cache, including those that are installed:

sudo pacman -Scc

Delete the PKG cache to save space

And if you happen to need some of these packages after you removed them, you can go to Arch Package Archive and download them manually. This is not an optimal solution if you need to download many packages because downloading them manually will take quite some time, but it is still possible.
Cleaning the cache Automatically

Another way to clean the /var/cache/pacman/pkg/ directory is to use a script that automatically deletes all cached versions of installed and uninstalled packages, except for the most recent 3 versions. The script is called paccache. You can install it with the pacman-contrib package.

sudo pacman -S pacman-contrib

For available, options check the help menu of paccache.

paccache -h

For example, you can run it in the dry mode to see how many packages will be removed using the -d option. Then, you can run a real clean by using the -r option.
Running paccache
Running paccache

Run paccache monthly

A very useful way to use this script is to have it run automatically once a month using the systemd timer. Basically, you need to create the file paccache.timer in /etc/systemd/system/, which will trigger /usr/lib/systemd/system/paccache.service.

So, you create a paccache.timer file with nano:

sudo nano /etc/systemd/system/paccache.timer

Then, to run this script monthly, paste the following content into this file:

"""
[Unit]
Description=Clean-up old pacman pkg

[Timer]
OnCalendar=monthly
Persistent=true

[Install]
WantedBy=multi-user.target
"""
After that, start the systemd service:

sudo systemctl enable paccache.timer
sudo systemctl start paccache.timer

Finally, you can check the service status.

sudo systemctl status paccache.timer

The paccache status in systemd is active

So, you should see the message that it is active. Now, paccache will run every month and clean the cache of your old and uninstalled packages.

Run paccache after pacman

Alternatively to this timer, you can also run paccache every time after you run pacman. So, you need to create a Hook for that. Just create a file /usr/share/libalpm/hooks/paccache.hook.

sudo nano /usr/share/libalpm/hooks/paccache.hook

After that, add this content on the file.

[Trigger]
Operation = Upgrade
Operation = Install
Operation = Remove
Type = Package
Target = *

[Action]
Description = Cleaning pacman cache with paccache …
When = PostTransaction
Exec = /usr/bin/paccache -r

Now, if I remove a package using pacman, paccache will also be executed.

Now paccache will run after pacman

Did not you know this way to clean up Arch Linux?

2. Remove unused packages (orphans)

When you install and remove packages in Arch Linux, some unused orphans packages may remain on your system. To find them you need to run this command:

sudo pacman -Qtdq

Showing the orphan packages
Showing the orphan packages

As you can see, by executing the above command, you will be able to know which packages are orphans. To remove them, you need to modify the command with the remove action:

sudo pacman -Rns $(pacman -Qtdq)

Removing the orphan packages
Removing the orphan packages

Now, you know how to clean Arch Linux system files by removing the pkg cache and removing the orphan packages. However, there are still more things to do in your home folder.

3. Clean the cache in your /home directory

In this step, I will show you how to clean Arch Linux by removing the cache files in your /home/user folder.

As we use our system, the cache will fill up and take up a lot of space. So, the first thing you probably would want to do is to clean cache in your user directory. If you want to check the size of your cache folder, you can do it with this command:

sudo du -sh ~/.cache/

Show the cache folder size in the home directory
Show the cache folder size in the home directory

To clean it, you need to remove all files inside it:

rm -rf ~/.cache/*

And that is it.

4. Remove old config files

The configuration files of different programs are stored in ~/.config/. You can enter it from your file manager and check if there any config files left from the programs you uninstalled. Just select those folders and delete them. But before you remove any file, I would also remind you that it is better to have a backup of all your files before you remove anything.
The .config folder is where the configuration files are
The configuration files in ~/.config

Some old files may also be lying in ~/.local/share/. Check it too and delete some files and folders if necessary.

5. Remove duplicates, empty files, empty directories and broken symlinks

You can do even more cleaning by removing duplicated and empty files and directories. To keep some order in your system, I also recommend removing broken symlinks, e.i. links that lead to non-existing filer or folders. They do not take much space, but they clutter your system. To remove such things, you can use the program rmlint.

Install it:

sudo pacman -S rmlint

If you check all its options with --help, you will see there are pretty many. I recommend to explore them.
rmlint has many options
rmlint has many options

However, using this application is quite simple, you can run it by specifying the directory you want to check for duplicated files. For example:

rmlint /home/alu

Using rmlint on the home folder
Using rmlint on the home folder

This program will list everything it finds and creates a shell script to remove this lint. The script can be found in the home folder. Open it using a text editor, scroll down and check what files it will remove.
rmlint generates a script file
rmlint generates a script file

You can remove some of these files manually, or if you agree with suggested remove action you can go back to the terminal and execute this script. Again, make sure you have a backup of all files before you run this script. This action will be irreversible.

sh -c rmlint.sh

Removing duplicates file using rmlint
Removing duplicates file using rmlint

Now, your system is cleaner. But it is not the end, there are still a few things you can do to clean it even further.

6. Find the largest files and directories

You can check what the largest files in your system are and maybe you do not need them. To accomplish this task, you can use some command line tools or graphical programs. For the command line tool, I use ncdu.

To install it, run this command:

sudo pacman -S ncdu

Search for the largest directories and then go inside those directories and find the largest files and remove them if you do not need them.
Using ncdu to find the largest folder on the system
Using ncdu to find the largest folder on the system

If you prefer a graphical program you can use filelight for Plasma 5. It shows a graphical summary for all hard-drives and you can go inside and check the directories, then go inside the largest directories and so on until.
Using filelight
Using filelight

If you are using Gnome, you ca install baobab. There are some other tools listed in Arch Wiki. Pick whatever you like.
Others disk usage display tools
Others disk usage display tools

7. Disk cleaning programs

There are also some disk cleaning programs that can do many of the tasked listed above automatically. Nevertheless, since you use Arch Linux, I do not recommend using these programs. It is not always obvious what exactly will be done and you do not have full control of your system. Besides, you can very easily delete some configuration files you did not want to delete.

But I still would like to share with you this option as some user may still prefer all-in-one package for system cleaning.
Disk cleaning tools available on Arch Linux
Disk cleaning tools available on Arch Linux

Among all automatic cleaning programs in Arch Linux, Bleachbit is probably the most popular. It has a nice graphical interface and it can do most of the things I have shown above. For example, you can clean your system cache. Just select it, and click on the clean button.
How to clean Arch Linux using Bleachbit
How to clean Arch Linux using Bleachbit

In the end, you will see something like this.
Cleaning the cache using Bleachbit
Cleaning the cache using Bleachbit

Which means your system cache has been cleaned.

Check out the other options of Bleachbit. I believe most of them are self-explanatory.
Update

Thanks to the comments on YouTube and below this post, I can improve this post by extending this list. Below, you will find a few more things you can do to clean your Arch Linux system.

8. Clean Systemd journal

Systemd stores its logs in /var/log/journal/ and these logs can be very useful as I described in my post on 10 Things to do first after installing Arch Linux. However, these log files can take up to 10% of your system size by default. There are two solution to limit this size.

    You can clean these log files manually when you run out of space. You can keep only the latest logs by size limit (e.g. keep only 50Mb of the latest logs):

sudo journalctl --vacuum-size=50M

Or by time limit (e.g. last 4 weeks):

sudo journalctl --vacuum-time=4weeks

    You can also set such limit as permanent and never worry about cleaning the logs. Just edit the file /etc/systemd/journald.conf by uncommenting SystemMaxUse= and setting the size limit:

SystemMaxUse=50M

This is what I choose to do and that is why I missed this point when I originally wrote this article. I simply never experienced large journalctl files.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
