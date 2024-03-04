# Check Open Ports in UFW

After making changes to any firewall, you should verify your changes to ensure they’re correct and active.

    To check whether UFW is running:

    sudo ufw status 

To check whether UFW is running with additional information such as logging and profile status:

sudo ufw status verbose

To find the rule number for UFW rules:

sudo ufw status numbered

Then you can remove the rule:

sudo ufw delete 1

## Close a Port in UFW

After you uninstall software you should close any ports you no longer need open on your system. You can accomplish this using the service name or port number.

    To close a port in UFW using the service name:

    sudo ufw deny pop3

## To close a port in UFW using the port number:

sudo ufw deny 995

Open a Port in UFW

There are multiple ways to open a port in UFW. Below we cover how to open ports using the port number, service name, and custom IP/port combination.

    Log into SSH as root.
    Check if the application port is defined as a service (e.g. OpenVPN, PostgreSQL, IRC):

    cat /etc/services | grep service-name

Or

cat /etc/services | grep port

To navigate the full list, use Page Up, Page Down, and arrow keys after using the less command:

less /etc/services 

If the service is listed, you can open the port using the service name (TCP/UDP protocol optional):

sudo ufw allow servicename 


sudo ufw allow servicename/tcp

If there is no service listed for the port, you can open the port by specifying the port and protocol (TCP/UDP):

sudo ufw allow 10000


sudo ufw allow 1352/udp

If you need to allow all connections from a specific system or network IP address:

sudo ufw allow from 1.2.3.4

## To allow all connections from a specific IP subnet:

sudo ufw allow from 1.2.3.0/24

To allow connections on a specific port from an IP address:

sudo ufw allow from 1.2.3.4 to any port 22

After you open a port in UFW, ensure UFW is enabled:

sudo ufw enable


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
