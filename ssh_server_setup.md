# Arch Linux SSH Server Setup, Customization and Optimization

[Arch Linux SSH Server Setup](https://tinyurl.com/yto2q2dr).

## How to Install and Use Steam on Arch Linux
[Steam on Arch Linux](https://tinyurl.com/ytpuwoon).

>In this article, I will show you how to install, 
>customize and optimize SSH server on Arch Linux. Let’s get started.

## Installing SSH Server on Arch Linux

>The name of the program that provides SSH server on Arch Linux is called OpenSSH Server. 
>It is available in the official package repository of Arch Linux.

>Before you install OpenSSH server, update the package repository cache of 
>Arch Linux with the following command:

` $ sudo pacman -Sy `

The pacman package repository cache should be updated.

Now run the following command to install OpenSSH server:

` $ sudo pacman -S openssh `

Now press y and then press <Enter> to continue.

## OpenSSH server should be installed.

Starting SSH sever

>When you install OpenSSH server on Arch Linux, it won’t start automatically by default.
>You will have to start it manually.

You can check whether OpenSSH server is running with the following command:

$ sudo systemctl status sshd

>As you can see in the marked section of the screenshot below, 
>OpenSSH server is inactive, which means it’s not running.

You can start OpenSSH server with the following command:

` $ sudo systemctl start sshd `

You can check whether the OpenSSH server is running with the following command:

` $ sudo systemctl status sshd ` 

>As you can see in the marked section of the screen below, 
>the OpenSSH server is active, which means it is running.

>Also pay attention to the marked section of the screenshot below, 
>the OpenSSH server listens on all the available network interfaces 
>configured with IPv4 and IPv6 on the system on port 22 by default. 
>If you want, you can change that later.

## Stopping the SSH Server

You can run the following command to stop the OpenSSH server:

` $ sudo systemctl stop sshd `

>The OpenSSH server should be stopped.
>Starting SSH Server on System Boot:

The OpenSSH service is not added to the system startup by default on Arch Linux. 
You can manually add it to the system startup with the following command:

` $ sudo systemctl enable sshd `

As you can see, the OpenSSH service is added to the system startup.

Removing SSH Server from the System Startup

If you don’t want your OpenSSH server to start when your computer boots, 
you can remove OpenSSH service from system startup with the following command:

` $ sudo systemctl disable sshd `

It should be removed from the system startup.

## Connecting to the SSH Server

Now that you have the OpenSSH server setup, it’s time to connect to it.

Before you can connect to the OpenSSH server, you must know the hostname or IP address 
of the computer where OpenSSH server is installed.

You may run the following command to find out what IP address the OpenSSH server was configured with:

` $ ip a `

As you can see from the marked section of the screenshot below, 
the IP address of my OpenSSH server is 192.168.199.132

If you have IPv6 configured, you should also see the IPv6 
(fe80::2403:45b7:de5d:cbd0 in my case) IP address as you can see in the marked section of the screenshot below.

Now to connect to the SSH server from another computer 
(must be in the same network or configured with an internet routable address), run the following command:

` $ ssh USERNAME@IP_ADDRESS `

NOTE: Here USERNAME is the name of the user that you want to connect to the OpenSSH server 
as and IP_ADDRESS is the IP of the OpenSSH server.

Type in yes and then press <Enter> to continue.

Now type in the password for your user USERNAME on the OpenSSH server and press <Enter>.

You should be connected.

Now you can run any command you want and configure your Arch Linux server remotely.

## Configuration Files of OpenSSH Server

The main configuration file of OpenSSH server is in /etc/ssh/sshd_config

You can enable and disable some options there to change how the OpenSSH server works. 
For more information on all the options that OpenSSH server supports, 
you may take a look into the OpenSSH server’s man page with the following command:

` $ man sshd_config `

I will talk about some of the common ones in this article.
Changing the Default Port

You can change the default port 22 into something else. 
It is good for the security purpose.

Let’s say you want to change the port to 888. 
First edit the sshd_config file with the following command:

` $ sudo nano /etc/ssh/sshd_config `

>You should see the following window. 
>Now uncomment the marked line and set Port 22 to Port 888.

The final configuration file should look like this.

Now save the file with <Ctrl> + x and then press y and then press <Enter>.

Now restart OpenSSH server with the following command:

` $ sudo systemctl restart sshd `

Now you can connect to the OpenSSH server with the following command:

` $ ssh -p 888 USERNAME@IP_ADDRESS `

Type in your password and press <Enter>.

You should be connected.

Securing SSH Server

You can secure your OpenSSH server by setting the following options in the sshd_config configuration file.

>X11Forwarding – Enabling X forwarding makes your system vulnerable to X11 related issues. 
>So it’s a good idea to set it to no.

>PermitRootLogin – You should not allow root users to login directly to the system. 
>You should always set it to no.

Port – change the default port 22 to something non-standard like 9812. It’s a good security practice.

That’s how you install, configure and optimize SSH server on Arch Linux. Thanks for reading this article.
