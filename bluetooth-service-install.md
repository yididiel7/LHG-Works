# Installation and Early Preparation

*Note resources

1. [Bluetoothctl: Management of Bluetooth Devices in Linux](http://tinyurl.com/22rnw4uq).
2. [Bluman – GTK+ Bluetooth Manager](http://tinyurl.com/2589zo79).

## Archcraft linux:

> $ sudo pacman -S bluez bluez-utils        

## Debian and Ubuntu:

> $ sudo apt install bluez*

## Fedora:

> $  sudo dnf install bluez bluez-tools

Now, enable the bluetooth.service using following systemd‘s command

> $ sudo systemctl enable bluetooth.service

The above is to enable the Bluetooth service in the background. But it requires restarting your system. If you do not want to restart, execute the following command as well:

> $ sudo systemctl start bluetooth.service

Note: Make sure that kernel module btusb is loaded into the system. Kernel modules are equivalent to drivers in Windows OS. If it is not loaded, load it using

~$ modprobe btusb

Now, I will be describing how to connect to a Bluetooth device using my smartphone as an example in the following steps.
Step 1: Get into Bluetoothctl’s Interactive Mode

Like nmtui, bluetoothctl’s interactive mode is easier to work with during the first-time connection. And like nmcli, the non-interactive mode is good for scripting.

To get into interactive mode, use

~$ bluetoothctl

Output may look like this:

Agent registered
[CHG] Controller F8:89:D6:C8:2E:54 Pairable: yes
[bluetooth]# 

Notice, how the prompt is changing from ~$ to [bluetooth]#. Now, you can execute any command like help after the # symbol. Use help to find all existing commands and their one-liner explanations.

[bluetooth]# help

After following all the steps, you can quit using

[bluetooth]# quit

Step 2: Turn on Bluetooth in Linux

To turn on the Bluetooth, use power on command:

[bluetooth]# power on

In my system, I get the following output:

[CHG] Controller F8:89:D2:C8:2E:54 Class: 0x006c010c
Changing power on succeeded

Similarly, to turn it off, you can use the power off command.
Step 3: Scan for Available Bluetooth Devices

First list available devices using

[bluetooth]# devices

Output:

[bluetooth]# devices
Device 40:45:DA:B8:AB:BB 34SUPER
Device 04:C8:07:12:D0:2D LG Q3

If you cannot find your device in the output, use the following command:

[bluetooth]# Scan on

Output on my system:

As you turn on your Bluetooth device (in the above example, my new smartphone), bluetoothctl will list it in the output. After you have found your device, copy its address for future use.

If you want your Linux computer to be discoverable by other devices, use the command given below. But for my tutorial, it is not necessary.

[bluetooth]# discoverable on

Step 4: Connect to Your Bluetooth Device

We can do it in two ways:
1. Pair and then Connect.
2. Trust and then Connect. I find it simpler, less confusing and it works for me with all kinds of devices. Hence, I will be describing this in detail.
1. Pair and Connect

Turn on the pairing in your Bluetooth device (ex – smartphone). Then, Turn on the pairing in your Linux computer using

[bluetooth]# pair 90:78:B2:C7:8F:A8

Now connect using

[bluetooth]# connect 90:78:B2:C7:8F:A8

Now, you might get a prompt to accept the connection. Just say yes.
2. Trust and Connect

First, you need to trust your device using the following :

[bluetooth]# trust 90:78:B2:C7:8F:A8

Output:

[CHG] Device 90:78:B2:C7:8F:A8 Trusted: yes
Changing 90:78:B2:C7:8F:A8 trust succeeded

Now, bluetoothctl saves your device’s address on your computer. In the future, you will not be needing to trust the device anymore. This saving is preserved even over system-restart. Now, you can connect with the device using:

[bluetooth]# connect 90:78:B2:C7:8F:A8

Now, you might get a prompt to accept the connection. Just say yes. It might even ask you to match passkey/pin. For my smartphone, the output is

Request confirmation
[agent] Confirm passkey 989960 (yes/no): yes
[CHG] Device 90:78:B2:C7:8F:A8 Paired: yes
Connection successful

Scripting using bluetoothctl in non-interactive mode

Learn here about what is a shell script and how to create one.

We can execute the above-mentioned commands in non-interactive mode as well by prepending bluetoothctl with them. For example, power on command becomes

~$ bluetoothctl power on

So, if you want to connect to your Bluetooth device using a single command, use the following:

~$ bluetoothctl power on && bluetoothctl connect 90:78:B2:C7:8F:A8

Note: As stated above, don’t forget to trust your device 90:78:B2:C7:8F:A8 before executing the above command – We need to do this only once in our lifetime.

Fun Point 😃:

Scripting is one of the things I love about Linux – You can merge one command with another and boost your productivity.

This can be seen with my current usage of the above command with the nmcli command to share my smartphone’s internet with the computer. It is reasonably fast – it can play Youtube videos at 720p. at the same time, Bluetooth consumes much less energy than Wi-Fi.

~$ bluetoothctl power on && bluetoothctl connect 90:78:B2:C7:8F:A8 && nmcli connection up id 'Mi A3 Network'

Other Bluetoothctl Commands

When we used the devices command, we got a list of devices. If you want to remove your device from the list due to privacy reasons, use the following in interactive mode:

[bluetooth]# remove 90:78:B2:C7:8F:A8

And if you no longer want your device to be trusted any more use:

[bluetooth]# untrust 90:78:B2:C7:8F:A8

To disconnect, there are many methods:
1. Toggle the Bluetooth switch on your Bluetooth device and/or computer.
2. Use bluetoothctl power off command from your terminal.
3. Or, use the standard method bluetoothctl disconnect 90:78:B2:C7:8F:A8
Conclusion

There are many more options to explore in bluetoothctl, just read them in bluetoothctl help. Now you can use Bluetooth for sharing files/internet/audio.

Occasionally, you might face a few bugs. Sometimes, restarting the computer might fix them. And if the problem still persists, put them in the comment section below. I have a few solutions and putting them here will make the article lengthy.

That’s all. And also do not forget to notify me any mistakes committed by me in this article if any.



 ________________________________________ 
/ Politics -- the gentle art of getting  \
| votes from the poor and campaign funds |
| from the rich by promising to protect  |
| each from the other.                   |
|                                        |
\ -- Oscar Ameringer                     /
 ---------------------------------------- 
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
