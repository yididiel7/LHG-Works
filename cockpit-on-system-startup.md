# How to Install Cockpit Web Console on Debian 11 Bullseye

1. [Install Cockpit Console on Debian 11 Bullseye](https://tinyurl.com/2oebnpt4)
2. [Install Cockpit on Debian 11](https://tinyurl.com/2z8eppdr)
3. [How To Set Up a Firewall with UFW on Debian11](https://tinyurl.com/2nslepg3)

Cockpit is a free remote server manager that is lightweight and easy to use for GNU/Linux servers. Cockpit is a web-based graphical interface for servers intended for people new to Linux to the experts such as sysadmins. Cockpit makes Linux discoverable, allowing anyone using the software to perform tasks such as start containers, administer storage, configure networks, and inspect logs.


[Pre-Install Configuration for Cockpit]

By default, Cockpit is in the default repository. However, like most packages in the Debian stable, it soon becomes quite far behind in updates. The tutorial will install Cockpit from the Debian Bullseye Backports repository, which is often more updated than stable without getting into the testing/unstable areas.

The tutorial will also use APT Pinning, so you do not forget to get updates using the standard apt update command and not interfere with existing stable Debian 11 packages by default.

First, open the preferences file as follows:

sudo nano /etc/apt/preferences

Next, copy and paste the following.

Package: *
Pin: release a=bullseye
Pin-Priority: 500

Package: cockpit
Pin: release a=bullseye-backports
Pin-Priority: 1000

Package: *
Pin: release a=bullseye-backports
Pin-Priority: 100

Advertisement

Save the file CTRL+O, then exit CTRL+X.

Summary of what you added.

    Backports for package cockpit is always used by default.
    All packages will use Debian 11 Stable by default.
    Backup will be backports if anything unavailable in stable.

Now, you will need to add either the backports to your /etc/apt/sources.list if not already present

Import Debian 11 “Bullseye” Backports:

echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free" | sudo tee -a /etc/apt/sources.list

Advertisement

Update your repositories to reflect the new additions.

sudo apt update

At the current time, Cockpit on Debian 11 stable repository is at version 239.

Backports currently has version 256.
Install Cockpit

Now that you have set up a newer source to install Cockpit on your Debian 11 system, execute the following command in your terminal.

sudo apt install cockpit

[How to Install Cockpit on Debian 11 Bullseye](https://tinyurl.com/2z8eppdr)

Once installed, by default, the service is not active, so you will need to do a few systemctl commands as follows.

To start Cockpit:

sudo systemctl start cockpit.socket

To enable Cockpit on system startup:

sudo systemctl enable cockpit.socket

Next, verify the status of Cockpit to make sure it is running correctly on your system:

sudo systemctl status cockpit.socket

5. How to access Cockpit Web Interface

Open any web browser of a system that can access the IP address of the Debian 10 or 11 Server where you have installed the Cockpit web console. In URL box type-

https://192.168.100.101:9090/

You will get a warning of HTTPS error, here click on the Advanced button and then Procced/Continue unsafe link.

6. Login

Use the username and password of the user available on your Debian server to access the Web console Dashboard.

7. Install Container to use Docker images on CockPit

Error: package cockpit docker has no installation candidate if you try to install it using APT.

Now, those who are interested in running containers on Debian 11 or 10 but using the Cockpit web interface can install Podman because Docker is not available for it. However, don’t worry Podman is exactly the same and also its command line works like Docker CE. Hence, use the given command:

sudo apt install cockpit-podman

 
8. Create Podman Cockpit Containers:  Error: Unable to search for images.

Now, to create containers using Podman on Cockpit, click on the option given for the same on the left side menu. After that, click on the Start button (given in notification).

To pull any Docker Image from its library to create Containers, click on the “Get Images” button. There Enter the name of the image you want to pull. For example – ubuntu.

However, in our case the Podman was unable to pull images, it is because the library path for Docker images has not been declared in the Debian Podman configuration file. Hence, go to your server command terminal or directly access it from the Cockpit to edit the configuration file.

sudo nano /etc/containers/registries.conf

Scroll to the end of the file and copy-paste the following lines:

[registries.search]
registries = ['docker.io', 'registry.fedoraproject.org', 'quay.io', 'registry.access.redhat.com', 'registry.centos.org']

Save the file by pressing CTRL+O and then hit the Enter key. To exit the same use Ctrl+X.

Restart Podman:

sudo systemctl restart podman

Now, go to Cockpit Podman, hit the Get Image

Get Docker Image Debian 11 Cockpit

Search for docker Images Podman Container debian Start Container

In this way, we can install Cockpit on Debian 11 or 10 using the command line to manage the Server’s Applications, Services, Software Updates, and more remotely.

 
9. How to update Cockpit

Well, running the regular update and upgrade command of Debian using the APT package manager will automatically fetch and install, if there are any latest packages available for this Web-based system management platform.

sudo apt update && sudo apt upgrade

 
10. How to Uninstall or Remove Cockpit

If you don’t require the Cockpit Admin management platform, then we can completely remove it using the command line, here it is :

sudo apt autoremove cockpit

# History Commands

1197  13.2.2023 05:37  sudo nano /etc/network/interfaces
 1198  13.2.2023 05:38  sudo systemctl reboot
 1199  13.2.2023 05:39  sudo apt update
 1200  13.2.2023 05:40  sudo apt upgrade
 1201  13.2.2023 05:43  sudo apt -t bullseye-backports install cockpit
 1202  13.2.2023 05:47  sudo nano /etc/apt/preferences
 1203  13.2.2023 05:48  sudo nano /etc/apt/sources.list
 1204  13.2.2023 05:52  sudo apt -t bullseye-backports install cockpit
 1205  13.2.2023 05:53  sudo nano /etc/apt/sources.list
 1206  13.2.2023 05:53  sudo apt -t bullseye-backports install cockpit
 1207  13.2.2023 05:54  sudo tee -a /etc/apt/sources.list
 1208  13.2.2023 05:55  sudo apt update
 1209  13.2.2023 05:56  apt-cache policy cockpit
 1210  13.2.2023 05:57  sudo systemctl start cockpit.socket
 1211  13.2.2023 05:58  sudo systemctl enable cockpit.socket
 1212  13.2.2023 05:58  sudo systemctl status cockpit.socket
 1213  13.2.2023 05:58  sudo ufw allow 9090
 1214  13.2.2023 05:59  ip a
 1215* 13.2.2023 06:09  sudo apt update
 1216  13.2.2023 06:22  which ssh
 1217  13.2.2023 06:25  c
 1218  13.2.2023 06:26  sudo aptitude install ufw
 1219  13.2.2023 06:27  sudo nano /etc/default/ufw
 1220  13.2.2023 06:29  sudo ufw default deny incoming
 1221  13.2.2023 06:30  sudo ufw default allow outgoing
 1222  13.2.2023 06:31  sudo ufw allow ssh
 1223  13.2.2023 06:31  sudo ufw allow 22
 1224  13.2.2023 06:31  sudo ufw enable
 1225  13.2.2023 06:32  sudo ufw status verbose
 1226  13.2.2023 06:51  python3 1.py


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
