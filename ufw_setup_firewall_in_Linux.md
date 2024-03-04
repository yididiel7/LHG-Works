# How to set up a firewall in Linux?

## UFW status check

Check that the firewall is switched on, use this command:

`$ sudo ufw status `

The result will show whether your firewall is active or not.

## Switching on UFW

If you get a Status: inactive message when running the ufw status command, 
it means that the firewall is not yet enabled on the system. 
You will need to run a command to enable it.

By default, when UFW is enabled, it blocks external access to all ports on the server. 
In practice, this means that if you connect to a server via SSH and enable ufw before 
allowing access on the SSH port, you will be disconnected.

## To enable UFW on your system, run the command:

`$ sudo ufw enable `

You will see a result similar to this.

To see what is currently blocked or allowed, you can use the verbose parameter 
when running ufw status as shown below:

`$ sudo ufw status verbose `

Output

Switching off the UFW

If for some reason you need to disable the firewall, you can do so with the following command:
sudo ufw disable
Copy

Be careful, this command will completely disable the firewall service on your system!
Blocking an IP address from being addressed

To block all network connections originating from a specific IP address, 
run the following command, replacing the allocated IP address with the IP address you wish to block:

sudo ufw deny from 91.198.174.190


4-ufw

    In this example, "from 91.198.174.190" indicates the source IP address "91.198.174.190".

sudo ufw status


If you run this command, you will see that the specified IP address is on the banned list:

5-ufw

    All connections, incoming and outgoing, are blocked for the specified IP address.

Block the subnet

If you need to block the entire subnet, you can use the subnet address as the "from" parameter in the ufw deny command. This will block all IP addresses in the example subnet 91.198.174.0/24:

sudo ufw deny from 198.174.0/24


6-ufw

    Block the subnet

Blocking incoming connections to the network interface

To block incoming connections from a specific IP address to a specific network interface, run the following command, replacing the IP address with the IP address you want to block:

sudo ufw deny in on eth0 from 91.198.174.192


7-ufw

    The "in" parameter tells the firewall to apply the rule only to incoming connections, and the "on eth0" parameter tells it that the rule applies only to the eth0 interface. This can be useful if you have a system with multiple network interfaces (including virtual interfaces) and you need to block external access to some of those interfaces, but not all.

Allow IP address conversions

To allow all network connections originating from a specific IP address, run the following command, replacing the allocated IP address with the IP address you wish to allow access to:

sudo ufw allow from 198.174.192


8-ufw

    If you now run "sudo ufw status", you will see output similar to this, with ALLOW next to the IP address you have just added.

sudo ufw status


9-ufw

    You can also allow connections from an entire subnet by specifying the appropriate subnet mask for the host, e.g. 91.198.174.0/24.

Allow incoming connections to the network interface

To allow incoming connections from a specific IP address to a specific network interface, run the following command, replacing the IP address with the one you want to allow:

sudo ufw allow in on eth0 from 91.198.174.22


10-ufw

    The "in" parameter tells the firewall to apply the rule only to incoming connections and the "on eth0" parameter specifies that the rule applies only to the "eth0" interface.

sudo ufw status


If you run the command, you will see a result similar to this:

11-ufw

    Result of "sudo ufw status"


There are several programs you can use to configure and run a firewall in Linux. 
But I will show you only two programs which I believe are the most worthy.

UFW – it is probably the most user-friendly firewall available in Linux. 
If you are a complete newbie or you just want to use your Linux without going to deep into its settings, 
use UFW.
iptables - which is a more advanced but probably a proper way to configure the Linux Firewall. 
If you really want to learn Linux and you aim to become a Linux expert, you need to learn iptables.

UFW - the uncomplicated firewall

As I said above, UFW is the most simple and the most user-friendly way to get firewall running in Linux. 
It can be used with a graphical front end as well as from the command line only. In the first case, 
you need to install the program GUFW from your software manager. In the latter case, install only UFW, 
that is without G and thus without GUI.
GUFW

So, let’s start with the graphical interface. Simply install GUFW, open it, and enable.

## To activate the UFW firewall, run:

sudo ufw enable

## Next, check its status:

sudo ufw status verbose

By default, it has the same rules to deny incoming and allow outgoing.

If you need to open some ports, you just need to run one command. For example, to open ssh port, run:

sudo ufw allow ssh

If you check the status again:

You will see the ssh port 22 is open.

You can read more about settings of UFW in its man page, simply run man ufw.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
