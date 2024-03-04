# How to Reset Forgotten Ubuntu Password in 2 Minutes

If you forgot your user password on Ubuntu, don’t worry. 
You can reset an Ubuntu password very easily. This guide explains an easy method for changing the root password on Ubuntu. 
The method should also be applicable to other Linux distributions.

## Step 1: Boot into recovery mode

Switch the computer on. Go to the grub menu. Generally, it appears automatically – if not, then hold down the shift key or press Esc key until the boot menu appears.

If you’re using Oracle VirtualBox or VMware, you have to hold down the shift key when the logo of Oracle or VMware appears.

In the grub menu, select the “Advanced Options for Ubuntu”:
Advanced boot options in Grub menu of Ubuntu
This is grub screen

In here, you’ll see the option to go to recovery mode:
Boot into recovery mode

It will bring you to a black screen with several lines of output being displayed in a flash. Wait for a few seconds here.

## Step 2: Drop to root shell prompt

Now you’ll be presented with different options for recovery mode. Here you need to choose “Root – Drop to root shell prompt“.  Just press the enter key to select this option. Like in the picture below:
Root shell prompt allows you to reset password in Ubuntu

You’ll see that when you select the root shell prompt option, an option to enter commands appears at the bottom. This is your root shell prompt and this is where you’ll use the commands to reset the password.

## Step 3: Remount the root with write access

You need to have write access to the root partition. By default, it has read-only access.

Use the command below to remount it with write access:

mount -rw -o remount /

## Step 4: Reset username or password

Here, you’ll be given root access. Use the following command to list all the users available:

ls /home

Based on this command, choose the “username” for which you want to reset or (say) hack the password. Now, use the following command to reset the password for the selected “username“:

passwd username

It prompts for a new password. Enter the new password twice.
📋
Do note that nothing is displayed on the screen when you start typing the password. This is perfectly normal and actually a security feature in Linux systems. Just blindly type the password and press enter.

Enter new UNIX password:
Retype new UNIX password:

Voilà! There you go. You have just successfully reset the password. Now exit the root shell prompt:

exit

When you exit, you’ll be back at the recovery mode menu. Select the normal boot option here.
Use recovery mode to boot normal after resetting password in Ubuntu

There will be a warning about graphics mode compatibility. Don’t worry. A complete reboot will fix any issues with this.

You should now be able to log in with the new password.

Possible Troubleshoot:

While entering the new password you might be prompted with Authentication token manipulation error like this:

passwd username Enter new UNIX password: Retype new UNIX password: passwd: Authentication token manipulation error passwd: password unchanged

The reason for this error is that the file system is mounted with read access only. Change the access and remount the file system in the following manner:

mount -rw -o remount /

Now try to reset the password again. It should work now.

As you can see, it is extremely easy to change Ubuntu password even if you’ve forgotten it. It will barely take a few minutes.
Alternate method to reset Ubuntu password

If for some reason you have difficulty dropping to the root shell and changing the password, you can try these steps.

## Step 1

Reboot your computer. Hold shift to bring up the grub screen (if it doesn’t appear automatically). Press E at the grub prompt to edit the grub screen.

## Step 2

Find the line starting with linux, change the ro to rw and append init=/bin/bash at the end of that line.
Editing grub to fix frozen boot issue with Ubuntu Linux
Change ro to rw and add init=/bin/bash at the end of this line

## Step 3

Press ctrl-x to save your changes and boot.

Now you are booting into the Linux kernel with read and write permissions, and instead of going to a graphical user interface, you’ll use the bash shell.

In other words, your system will boot up to a passwordless root shell.

## Step 4

Type in the passwd command with your username. If you don’t know the username, check with ls /home command (as mentioned in method 1).

Set your new password.

Once you’ve set the new password, exit the terminal. Just type reboot in the terminal or use the shutdown command.

shutdown -r now

Your password should be changed now.

If resetting Ubuntu passwords is this easy, isn’t this a security risk?

That’s a fair question. One of the main advantages of Linux over Windows is its security. But if “anyone” can reset the password, how come Ubuntu or other Linux distributions can be considered secure?

Let me explain a few things here. The main security risk is if someone hacks into your account from a remote location via the internet. That’s not happening here.

If anyone has physical access to your computer, the data in your computer is already at risk. Unless the entire disk is encrypted, anyone can “steal” your data using a live USB without even entering your installed operating system.

By default, Ubuntu doesn’t have a root password and the root account is locked. The user account you set up while installing Ubuntu is included as an admin with sudo rights. But that doesn’t mean that you are root.

This lack of root password is a deliberate feature The “advanced options for Ubuntu” in the boot menu allow you to perform some specific root-related tasks from the “root shell prompt”. This is why you’re able to reset the Ubuntu password through this method.

If you want to make your system more secure, you can either encrypt the disk (to save your data) or setup a password for root user in Ubuntu.

Bonus Tip: Handling the possible keyring issue after changing the password

There is a keyring feature in Ubuntu that is used for keeping passwords locked and safe.

When you reset the forgotten password, the keyring remains unlocked and you may see an error message like this.

Enter Password To Unlock Your Login Keyring Ubuntu

Open the Passwords and Keys application and here, delete the Login passwords.
