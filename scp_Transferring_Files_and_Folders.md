#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#----------------------------------------------------------------------------
# Created By  : Sr.Yididiel Hills
# Description: 
# Created Date: Sun 21 May 2023 01:21:46
# version ='1.0'
# ---------------------------------------------------------------------------

```
**To Sort Text Press SHIFT+V Select Text and Press SHIFT : 
to Enter Command Mode < > and type !sort.**
```
# Transferring Files and Folders with SCP
https://youtu.be/YzA2ToW3Lk0
## Example of Transferring A Files From within the directory.

┌[srhills☮minipcpn62]-(~/ArcoScripts)
└> scp pcuser-Logins.md tyarco@192.168.10.192:/home/tyarco/

pcuser-Logins.md  100% 1762   173.1KB/s   00:00

## Example of Transferring A Files From Local Host to Remote Host directory.

1. Host: inspiron3542

scp PkgInsMaually srhills@10.0.0.7:/home/srhills/

2. Host: thinkcentre

scp PkgInsMaually tyarco@192.168.10.192:/home/tyarco/

3. Host: Optiplex

scp PkgInsMaually tyhills@192.168.10.166:/home/tyhills/


## Example of Transferring A Floder To A Remote Client with all It's Content.

┌[srhills☮minipcpn62]-(~/ArcoScripts)
└> scp -r ~/ArcoScripts/ tyarco@192.168.10.192:/home/tyarco/

926  10/05/23 12:10:09  ls -l /dev/disk/by-id/
945  10/05/23 14:09:35  scp -r ~/ArcoScripts/ tyhills@192.168.10.166:/home/tyhills/
946  10/05/23 14:13:25  scp -r ~/ArcoScripts/ tyarco@192.168.10.192:/home/tyarco/
947  10/05/23 14:14:31  scp -r ~/ArcoScripts/ srhills@10.0.0.7:/home/srhills/
948  10/05/23 14:17:28  scp -r ~/ShiurLekach/ srhills@10.0.0.7:/home/srhills/
949  10/05/23 14:19:46  scp -r ~/ShiurLekach/ tyhills@192.168.10.166:/home/tyhills/
950  10/05/23 14:22:08  scp -r ~/ShiurLekach/ tyarco@192.168.10.192:/home/tyarco/

## SCP INREVERSE BACK FROM THE REMOTE CLIENT.

scp tyarco@192.168.10.192:pcuser-Logins.md .

┌[srhills☮minipcpn62]-(~)
└> scp tyarco@192.168.10.192:pcuser-Logins.md .

pcuser-Logins.md                                      100% 1762   154.2KB/s   00:00

┌[srhills☮minipcpn62]-(~)
└>

The Unix command scp (which stands for "secure copy protocol") is a simple tool for uploading or downloading files (or directories) to/from a remote machine. The transfer is done on top of SSH, which is how it maintains its familure options (like for specifying identities and credentials) and ensures a secure connection. It's really helpful to be able to move around files between any machine that supports SSH.

Even if you don't already know how to use the command, scp should be a bit more familiar to you thanks to its similarity to ssh. The biggest differences come with specifying file/directory paths. In this short article we'll be dealing with directories specifically.
Downloading a Directory

In this use-case, we want to use scp to download a directory from a remote server to our local machine. To achieve this, we'll use the -r flag, which tells scp to recursively copy all of the directory's contents to our machine.

Here is an example of using scp to download a directory:

$ scp -r user@ssh.example.com:/path/to/remote/source /path/to/local/destination

Pretty simple, right? The -r flag is the only difference between downloading a single file and downloading an entire directory. With -r specified, the directory tree is recursively traversed and each file encountered is downloaded.

One important thing to note is that scp does follow symbolic links within directories, so just be aware in case this matters for your purposes.
Uploading a Directory

The same exact concepts as downloading a directory apply here as well. You'll probably notice that the only difference is where we specify the source directory within the actual command.

Here is an example of using scp to upload a folder:

$ scp -r /path/to/local/source user@ssh.example.com:/path/to/remote/destination 

When the source path comes first, like in the example above, it is assumed to be referring to a directory on your local machine, which is then recursively transferred to the destination machine thanks to the -r flag, as before.
Conclusion

For more information on the scp command, I'd highly encourage you to check out the docs with man scp. Not only is this the fastest way to learn about the command, but it's a good habit to get in to for any Unix command.

Introduction

SCP stands for Secure Copy Protocol. It is a tool that can be used to transfer files from a local host to a remote host, from a remote host to a local host, or between two remote hosts. In this article, we'll examine how to use SCP to copy between local and remote hosts.

SCP is almost exclusively run from the command-line using the scp command. It uses the ssh (Secure Shell) to transfer data to and from remote hosts. As such, it has a set of options that specify the authentication parameters, hosts and port like SSH.

By default, the SCP protocol operates on port 22 unless overridden by a command-line option. All scp commands follow the form:

$ scp [OPTIONS] [SOURCE] [DESTINATION]

Let's look at how SCP allows us to transfer a file on our local computer to a remote one.
Transferring a Local File to a Remote Destination

Uploading a file from our local computer to a remote location is a common scenario for IT professionals. With scp, we can accomplish this with a command like:

$ scp path/to/local/file.ext user@remote-host:path/to/remote/file.ext

This command will copy the local file file.ext to the specified path (after the colon) on the remote-host.

    The user supplied in the command is the username. The username has to belong to a user of the remote machine.
    The remote-host supplied is the domain name or the IP address of the remote machine we are trying to connect to.
    We then specify where we want to copy the file to on the remote machine after the colon (:).

After running this command, a prompt will display for the password corresponding to the remote host's user account:

$ user@remote-host's password:

Once the password is entered, the file will be copied.

This user account must have access to the remote path specified in the command. If you can't use your credentials to log in remotely with ssh, then those credentials will not work when using scp.

Now that we know how to transfer a remote file to our local machine, let's discuss the reverse scenario - transferring a file from a remote host to the local host.
Transferring a Remote File to a Local Destination

In a very similar fashion, we can copy a file from a remote computer to our local machine:

$ scp user@remote-host:path/to/remote/file.ext path/to/local/file.ext

This works essentially in the same way, except that the remote user, host, and path are now specified before the local path.

A prompt will still be displayed for the password belonging to the remote host's user account. But, when complete, you should have a new file in the folder you specified.

Let's have a look at transferring a file between two remote hosts.
Transferring a Remote File to a Remote Destination

Finally, the following command format is used to transfer a file between two remote hosts:

$ scp user1@remote-host1:path/to/remote/file.ext user2@remote-host2:path/to/remote/file.ext

Notice that in this case, two remote users must be specified. Each has to have access to their respective remote server. A password prompt will be presented to accept login credentials for each user.

From all these variations of file copying we see that the scp command is flexible on what can be the source or destination path. This versatility makes it very useful for scripts.

We may transfer files between our local and remote machines to test and update the server or application configurations. We may transfer files between our main remote host and a backup server with scp. The simplicity and flexibility of SCP has made it popular with system administrators.

Use SCP to securely transfer files between two Unix computers

In Unix, you can use SCP (the scp command) to securely copy files and directories between remote hosts without starting an FTP session or logging into the remote systems explicitly. The scp command uses SSH to transfer data, so it requires a password or passphrase for authentication. Unlike rcp or FTP, scp encrypts both the file and any passwords exchanged so that anyone snooping on the network cannot view them.
Note:
Two-factor authentication using Two-Step Login (Duo) is required for access to the login nodes on IU research supercomputers, and for SCP and SFTP file transfers to those systems. SSH public key authentication remains an option for researchers who submit the "SSH public key authentication to HPS systems" agreement  (log into HPC everywhere using your IU username and passphrase), in which you agree to set a passphrase on your private key when you generate your key pair. If you have questions about how two-factor authentication may impact your workflows, contact the UITS Research Applications and Deep Learning team . For help, see Get started with Two-Step Login (Duo) at IU and Help for Two-Step Login (Duo).
Syntax

The syntax for the scp command is:

scp [options] username1@source_host:directory1/filename1 username2@destination_host:directory2/filename2

The location of the source file is specified by username1@source_host:directory1/filename1, which includes the:

    Name of the account on the host computer (username1)
    Hostname of the computer on which the source file resides (source_host)
    Name of the directory containing the source file (directory1)
    Filename of the source file (filename1)

The location to which the source file will be copied is specified by username2@destination_host:directory2/filename2, which includes the:

    Name of the account on the destination computer (username2)
    Hostname of the computer to which the source file will be copied (destination_host)
    Name of the directory to which the source file will be copied (directory2)
    Filename of the copy (filename2)

Note:
Make sure to include a space between the source and destination paths. Also, be careful when copying files that share the same name on both hosts; you may accidentally overwrite data you intended to keep.

For more about scp, consult its manual page. At the Unix prompt, enter:

man scp

At Indiana University, for personal or departmental Linux or Unix systems support, see Get help for Linux or Unix at IU.
Examples

For the following examples, assume your username is dvader, and you are logged into your account on the computer empire.gov:

    To copy a file called rebels.txt from your home directory on empire.gov to a directory called revenge in your account on the computer deathstar.com, enter:

    scp ~/rebels.txt dvader@deathstar.com:~/revenge

    You'll be prompted for your password on the destination system (deathstar.com). The command won't work unless you enter the correct password.
    To copy a directory (and all the files it contains), use scp with the -r option. This tells scp to recursively copy the source directory and its contents.

    To copy the entire revenge directory from your deathstar.com account to your empire.gov account, enter:

    scp -r dvader@deathstar.com:~/revenge ~/revenge

    You'll be prompted for your password on the source system (deathstar.com). The command won't work unless you enter the correct password.
    To copy multiple files within a directory, you can use wildcards (for example, * or ?). However, to use wildcards for copying multiple source files from a remote system, you need to place quotes (" ") around the path to the source files. This is necessary because the Unix shell, not the scp command, expands unquoted wildcards.

    Therefore, to copy all the .txt files from the revenge directory on your deathstar.com account to your revenge directory on empire.gov, enter:

    scp dvader@deathstar.com:"revenge/*.txt" ~/revenge/

    You'll be prompted for your password on the source system (deathstar.com). The command won't work unless you enter the correct password.

For the following example, assume you (dvader) are logged into another computer (that is, some other computer that's not empire.gov or deathstar.com). To copy luke.txt from your home directory on empire.gov to your revenge directory on deathstar.com, enter:

scp dvader@empire.gov:~/luke.txt dvader@deathstar.com:~/revenge

You'll be prompted to enter two passwords: one for the source system (empire.gov) and one for the destination system (deathstar.com). The command won't work unless you correctly enter both passwords.
