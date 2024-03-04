# How to Add User to Sudoers / Give sudo Privileges in Linux

Last updated on November 11th, 2023 by Sr. Yididiel

sudo is a very useful linux utility that can grant root privileges to the non-root users for a limited period of time (before asking for your password again).

Not all users can run sudo by default, only the users who are in the sudo group, or have their username in the sudoers files can execture sudo command. If you are not in sudoers file, this message will pop up:
sudo incident will be reported

In this tutorial, I am going to show you how you can grant sudo privileges to a specific user in your system by adding them to the sudoers file, lets get started. Before you proceed with the tutorial, make sure that the user you are logged in as is the root user, or an user that already has root (sudo) privileges.

Also, replace ‘username‘ with the name of your own user (the one that you want to grant sudo privileges to) when executing the commands.
Adding User to the sudo Group

sudo is a group that already has an entry in the sudoers file. Meaning any user belonging to the sudo group can perform root actions as well, this is an easy way to grant yourself sudo rights in Linux.

In a terminal window, type:

usermodadd -aG sudo username

This will add user to the sudo group, allowing them to execute commands with sudo privileges .

If the command outputs “usermod: group 'sudo' does not exist“, you will need to create one.

In a teminal, type in:

groupadd sudo

After that, try running the usermodadd -a -G sudo username command again.

You can verify if you were sucessfully added to to the sudo group by using the command:

groups username

Adding User to the sudors File

If you don’t want to add your user to the sudo group, you can directly add an entry for your user in the sudoers file to grant superuser (sudo/root) permissions.

You should not edit the sudoers file (/etc/sudoers) directly. Any errors in this file can lead to a broken system. Instead, you can use the visudo command.

By default, visudo opens the sudoers file in the default Vi editor. Now Vi is not bad but is a tad bit complicated to use.

Instead of Vi, we can also edit the file in Vim (Vi Improved), Nano or any other text editor of our choice.

To do so open a terminal and type:

EDITOR=nano visudo

(Tip: you can replace ‘nano’ with another cli text editor of your choice.)

This will open the sudoers file in nano, which is relatively easy to use than Vi or Vim. Once the file opens, paste this in a new line:

username ALL=(ALL) ALL

Editing the sudoers file

Note: Replace username with the user’s name that you want to grant sudo privileges to.
Troubleshooting

Here are solutions to some common errors & other issues that you can face when following this tutorial.
Error: user is not in the sudoers file.

Check if the user is infact in sudoers file/sudo group by trying to run a command as that user.

For example, type:

sudo w

If it says user is not in the sudoers file, even after you have added them to sudo group and verified it, open a terminal and type:

EDITOR=nano visudo

Now uncomment this line(remove # from front):

# %sudo ALL=(ALL) ALL

Save the file and your user should have sudo rights.

If you are currently logged in as that user in any session or tty, log out and log back in again. This is needed for the changes to take effect. To check which users are logged in, use the command: users.
Adding Password to a User

To use sudo, a user is required to have a password (unless NOPASSWD is set in sudoers). If you user does not has a password set, you can easily set one using the passwd command. Make sure that you are logged in as root (or a user with sudo privileges), then use the command:

passwd username

Replace username with your user and press enter. Next, enter and confirm your new password and you are good to go.
Executing sudo commands without password

It is not recommended to disable password for sudo. It is same as having a root account logged in, which completely defeats the purpose of sudo.

However, if you absolutely need to get password-less sudo working, open the sudoes file and change the line:

%sudo ALL=(ALL) ALL

to

%sudo ALL=(ALL) NOPASSWD: ALL

You do this for a specif user as well by replace ALL at the end of their entry in sudoers with NOPASSWD: ALL. (e.g.username ALL=(ALL) NOPASSWD: ALL)

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
