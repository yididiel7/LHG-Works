Secure Shell (SSH) protocol

SSH is a network protocol that enables users to share data traffic securely within an unprotected network. 
It provides this protection through an SSH server, linking it to the connection between the central server 
and the client. Any network service can be made secure by Secure Shell, and SSH can be set up on almost 
any operating system.

In the following short guide, we will look at SSH server installation and configuration on Arch Linux.

[Install and Configure SSH Server on Arch Linux](https://linuxhint.com/install_ssh_server_on_arch_linux/)

## Update the Arch Linux package repository

Fire up the command line interface and type in the following code to update the Arch Linux package repository:

$ sudo pacman -Syu



187  sudo systemctl status sshd
188  sudo systemctl start sshd
189  sudo systemctl status sshd
190  sudo systemctl enable sshd
191  sudo nano /etc/ssh/sshd_config

Update the Arch Linux package repository

Fire up the command line interface and type in the following code to update the Arch Linux package repository:

## Part 1: Installation

$ sudo pacman -Syu

OpenSSH (OpenBSD Secure Shell) is a set of computer programs providing encrypted communication sessions over 
a computer network using the Secure Shell (SSH) protocol. It was created as an open source alternative to the 
proprietary Secure Shell software suite offered by SSH Communications Security. 
OpenSSH is developed as part of the OpenBSD project, which is led by Theo de Raadt.

OpenSSH is occasionally confused with the similarly-named OpenSSL; however, the projects have different 
purposes and are developed by different teams, the similar name is drawn only from similar goals.

## Installation

Install the openssh package.
Client usage

To connect to a server, run:

$ ssh -p port user@server-address

If the server only allows public-key authentication, follow SSH keys.
Configuration

The client can be configured to store common options and hosts. 
All options can be declared globally or restricted to specific hosts. For example:

~/.ssh/config

# global options
User user

# host-specific options
Host myserver
    Hostname server-address
    Port     port

With such a configuration, the following commands are equivalent

$ ssh -p port user@server-address
$ ssh myserver

## See ssh_config(5) for more information.

Some options do not have command line switch equivalents, but you can specify configuration options on 
the command line with -o. For example -oKexAlgorithms=+diffie-hellman-group1-sha1. Server usage

sshd is the OpenSSH server daemon, configured with /etc/ssh/sshd_config and managed by sshd.service. Whenever changing the configuration, use sshd in test mode before restarting the service to ensure it will be able to start cleanly. Valid configurations produce no output.

## sshd -t

Configuration

To allow access only for some users, add this line:

AllowUsers    user1 user2

To allow access only for some groups:

AllowGroups   group1 group2

To add a nice welcome message (e.g. from the /etc/issue file), configure the Banner option:

Banner /etc/issue

Public and private host keys are automatically generated in /etc/ssh by the sshdgenkeys service and 
regenerated if missing even if HostKeyAlgorithms option in sshd_config allows only some. 
Four key pairs are provided based on the algorithms dsa, rsa, ecdsa and ed25519. 
To have sshd use a particular key, specify the following option:

HostKey /etc/ssh/ssh_host_rsa_key

If the server is to be exposed to the WAN, it is recommended to change the default port from 22 to a random 
higher one like this:

Port 39901