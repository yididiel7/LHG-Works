---
# How to Execute a Shell Script When a USB Device Is Plugged
# Mon 03 Jul 2023 21:34:43
---

1. [How to Execute a Shell Script](https://tinyurl.com/2c3fvzp2).

2. [Search Results for USB](https://tinyurl.com/2bcpkbp2).

3. [Linux Scripting Series](https://tinyurl.com/2byjxtyd).


1. Overview

udev is Linux’s device manager, which responds to device events, including the creation or removal of device files in the /dev directory. udev rules allow great flexibility and customization when managing devices. For example, they can run custom scripts when we add or remove devices.

In this tutorial, we’ll see how to write udev rules to run a script when any USB device is plugged in or when a specific one is plugged in. We’ll also look at the limitations of this approach and how to work around them.
2. Identify the Device

Each udev rule contains one or more key-value pairs, as specified in the rules documentation. If all of the keys match their device properties values, udev will apply the rule.

The keys documentation contains a list of key names that we can use, but the problem is that we need to know which values to match. In general, a match to the unique identifier of the vendor and the product is sufficient to target a specific USB device. We can get this data through lsusb:

$ lsusb
[...]
Bus 002 Device 004: ID 0480:a00d Toshiba America Inc STOR.E BASICS 500GB
[...]

The ID in the previous output is 0480:a00d. It consists of two hexadecimal numbers separated by a colon. The first is the vendor ID 0480, and the second is the product ID a00d. So the udev rule we’re going to write will contain the following two pairs:

ATTRS{idVendor}=="0480", ATTRS{idProduct}=="a00d"

However, there are hundreds of other possible keys. udevadm has an option to print all key-value pairs that match a given device. Yet, we need to know the name of the device file to query. When in doubt, hwinfo will come in handy:

$ hwinfo --usb
[...]
03: SCSI 300.0: 10600 Disk
[...]
  Hardware Class: disk
  Model: "TOSHIBA External USB 3.0"
  Vendor: usb 0x0480 "TOSHIBA"
  Device: usb 0xa00d "External USB 3.0"
[...]
  Device File: /dev/sdc (/dev/sg2)
[...]

For the meaning of different device files for the same hardware, in this case, /dev/sdc and /dev/sg2, we can consult the naming conventions. The next step is to ask udevadm for all the key-value pairs for /dev/sdc:

$ udevadm info -a -n /dev/sdc
[...]
looking at parent device '/devices/pci0000:00/0000:00:14.0/usb2':
    KERNELS=="usb2"
    SUBSYSTEMS=="usb"
[...]
    ATTRS{idProduct}=="a00d"
    ATTRS{idVendor}=="0480"
[...]
    ATTRS{manufacturer}=="TOSHIBA"
[...]
    ATTRS{product}=="External USB 3.0"
[...]

We’ve only reported a few keys because the full output is verbose. In this case, it contains 322 different keys that have very specific or more general uses. For example, the key-value pair SUBSYSTEMS==”usb”, when used without more specific pairs, causes the rule to be invoked for all USB devices.
3. Limitations of udev Rules

We’re almost ready to write our first udev rule. First, however, we need to keep in mind the following four points from the official udev documentation:

    The RUN key specifies a program to run after all rules for the event have been processed
    This can only be used for very short-running foreground tasks
    Running programs that access the network or mount/unmount filesystems isn’t allowed within udev rules
    Starting daemons or other long-running processes isn’t allowed

Fortunately, it’s possible to get around these restrictions with a service unit, as we’ll see later.
4. Short-Running Tasks

First, we’ll see how to call a Bash script every time we plug in a USB device. Then we’ll refine the udev rule so that it only refers to a specific device.
4.1. A Sample Debugging Script

The following Bash script is mainly for debugging purposes. We need the $1, $2, and $3 variables to understand how udev passes parameters to this script. In addition, the output of printenv allows us to see what environment variables are available. Of these, we’ll print the vendor and model IDs.

We can’t know in advance how many times udev will call our script. For the same device, on the same machine, with the same udev rule, it’s possible that udev will apply such a rule only once or several times in a very short time interval of less than one second. To prevent this behavior, we’ve added a timestamp control to ensure that our script will run only once in a three-second time frame.

In a real usage context, our script is a starting point. What we’re interested in doing should be inserted in place of the “Do other stuff” comment:

```
#!/usr/bin/env bash
# Debugging test script called by udev

# File paths, to be customized as we need
logFile="/home/francesco/LogUdevExample.txt"
dateFile="/home/francesco/.LogUdevExample.date"

# Ensure only one instance is running at a time
# Info: https://www.baeldung.com/linux/bash-ensure-instance-running#2-using-lsof
instances=`lsof -t "$0" | wc -l`
if (( $instances > 1 )); then exit 1; fi

# Prevent multiple executions inside a 3-sec time frame
if [ ! -f $dateFile ]; then
    echo "lastExecution=0" > $dateFile
fi
. $dateFile # reads the $lastExecution var from file
timeframe=$(( $(date +%s) - $lastExecution )) # seconds from last execution
if (( $timeframe <= 3 )); then exit 1; fi
echo "lastExecution=$(date +%s)" > $dateFile

# Debugging info
echo -e "---\n"                             >> $logFile
date                                        >> $logFile
echo "USB Device '$1' plugged in..."        >> $logFile
echo "Current symlinks (in /dev dir): "$2   >> $logFile
echo "Name of the device node: "$3          >> $logFile
echo "Vendor ID: "$ID_VENDOR_ID             >> $logFile
echo "Model ID: "$ID_MODEL_ID               >> $logFile
echo "Environment \$PATH var: " $PATH       >> $logFile
echo -e "---\n"                             >> $logFile
echo "Full list of environment variables:"  >> $logFile
printenv                                    >> $logFile
echo -e "---\n"                             >> $logFile

# Do other stuff...
exit 0
```
To reference this script within a udev rule, we must use the full path, which in this case is /home/francesco/test.sh.
4.2. A udev Rule for All USB Devices

A rules file can contain one or more rules, and its name is very important. According to a udevadm quick reference, file names must be similar to xx-descriptive-name.rules, where xx is a two-digit number equal to or greater than 90 for rules that should run last. Now let’s create our udev rule and put it in /etc/udev/rules.d/99-usb-stick.rules:

SUBSYSTEMS=="usb", ACTION=="add", RUN+="/home/francesco/test.sh '$env{ID_SERIAL}' '$links' '$devnode'"

After saving the file, let’s reload the udev rules:

# udevadm control --reload-rules && udevadm trigger

Then let’s plug in a USB device, such as a mouse. Almost immediately, the LogUdevExample.txt file is ready for inspection. For brevity, we report only the beginning of the list of environment variables:

---

Thu Apr  6 08:37:55 CEST 2023
USB Device 'Microsoft_Microsoft_R__Compact_Optical_Mouse' plugged in...
Current symlinks (in /dev dir): 
Name of the device node: /dev/bus/usb/001/017
Vendor ID: 045e
Model ID: 00a4
Environment $PATH var:  /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
---

Full list of environment variables:
TAGS=:seat:
ID_MODEL=Microsoft_R__Compact_Optical_Mouse
ID_REVISION=0001
[...]

The previous example shows that symlinks aren’t always available. Let’s try another device, such as a USB flash drive:

[...]
Thu Apr  6 10:07:02 CEST 2023
USB Device 'Kingston_DataTraveler_2.0_50E549513589EE91E94835BD-0:0' plugged in...
Current symlinks (in /dev dir): disk/by-label/Linux\x20Mint\x2020.3\x20Cinnamon\x2064-bit disk/by-id/usb-Kingston_DataTraveler_2.0_50E549513589EE91E94835BD-0:0 disk/by-path/pci-0000:00:14.0-usb-0:1:1.0-scsi-0:0:0:0 disk/by-uuid/2022-01-04-15-01-47-00
Name of the device node: /dev/sdd
Vendor ID: 0930
Model ID: 6545
Environment $PATH var:  /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
---

Full list of environment variables:
.ID_FS_TYPE_NEW=iso9660
.MM_USBIFNUM=00
ID_FS_USAGE=filesystem
[...]

At this point, we might ask what the sample parameters we passed to test.sh are. The official udev documentation lists all available parameters, including $env{…}, $links, and $devnode.

As for the device property values that can be passed through $env{…}, we need to know the properties that udev recognizes. Let’s open a terminal with the following command and plug in a USB device. A list of properties will automatically appear:

$ sudo udevadm monitor --udev --subsystem-match=usb --property

For example, when a mouse is plugged in, it outputs a very verbose log that includes the ID_SERIAL property, which we pass to test.sh.
4.3. More Specific udev Rules

We may want our udev rule to apply only to storage devices, called block devices, in the Linux world. In this case, let’s update the rule as follows. To avoid confusion, let’s note that SUBSYSTEM doesn’t have the final S in one case and does in the other:

SUBSYSTEM=="block", SUBSYSTEMS=="usb", ACTION=="add", RUN+="/home/francesco/test.sh '$env{ID_SERIAL}' '$links' '$devnode'"

Then, let’s remember to reload the udev rules:

# udevadm control --reload-rules && udevadm trigger

We can verify that from now on, our test.sh script is only executed when a hard drive or USB stick is inserted while inserting a mouse or a webcam has no effect.

Finally, we can target our rule to a specific device. In this case, we use vendor and model IDs:

ATTR{idVendor}=="0480", ATTR{idProduct}=="a00d", ACTION=="add", RUN+="/home/francesco/test.sh '$env{ID_SERIAL}' '$links' '$devnode'"

After reloading the udev rules, we can verify that test.sh will only run when the specified device is plugged in.
5. Long-Running Tasks

Let’s say we have mybackup.sh, a ready-made long-running backup script that needs to open a terminal. So, let’s see how to allow udev to run it.

The steps below are for Linux Mint 21. Other distributions may require slight modifications. We’ll also need to change the full paths to match our user home.
5.1. Systemd Service

Let’s create a systemd user folder in $HOME/.config/systemd/user. Then, let’s place the mybackup.service file with the following content in that folder:

[Unit]
Description=Service called when the HD with idVendor=0480 and idProduct=a00d is plugged in

[Service]
Type=simple
ExecStart=/usr/bin/gnome-terminal -- sudo /[...]/mybackup.sh

[Install]
WantedBy=default.target

Instead of /[…]/mybackup.sh, we have to specify the full path to our script. Also, we only need sudo if mybackup.sh really needs root privileges. In that case, the script will ask for the password every time it starts.

Then let’s update systemd‘s configuration for the current user:

$ systemctl --user daemon-reload
$ systemctl --user enable mybackup.service

Using the following command, let’s test that our service unit is working properly:

$ systemctl --user start mybackup

At this point, the terminal will open with our script running.
5.2. Calling the Unit Service From test.sh

We don’t need to change the previous udev rule that applies to a specific device. Instead, we just need to add a command to test.sh, below the last comment:

# Do other stuff...
sudo -u francesco XDG_RUNTIME_DIR=/run/user/$(id -u francesco) systemctl --user start mybackup.service
exit 0

XDG_RUNTIME_DIR is a requirement for starting gnome-terminal from systemd, so we’ve added it. From now on, all we have to do is plug in the hard drive to start our backup script:

rsync-based backup launched from udev via systemd serviceIn this example, we have a rsync-based backup. If something goes wrong, we can manually run test.sh to debug it.
6. Conclusion

In this article, we’ve seen how to automatically run a script when we plug in a USB device. Although it may seem simple, there are actually many issues to consider. Step by step, we have seen how to deal with them.

As a final recommendation, it’s very important to thoroughly test the scripts we want to run automatically. We must consider all unwanted eventualities, including multiple executions, empty script parameters, empty directories, etc.

In the case of disks, let’s keep in mind that our scripts are likely to run before the filesystem mounts are ready.
