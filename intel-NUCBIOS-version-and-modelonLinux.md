# Finding Intel NUC BIOS version and model on Linux


```
$ sudo dmidecode --type bios
```

### The procedure under Linux OS is as follows:

Open the terminal window application on Linux.
For remote Intel NUC use the ssh command.
Type sudo dmidecode command to find Intel NUC BIOS version.
You can also use *sudo dmidecode -s bios-version*

### To obtain info on Linux.

```
$ sudo dmidecode -s bios-version 
```
Let us see all examples and commands in details for Intel NUC 7 business kit.

Linux find Intel NUC BIOS version command

### Find out BIOS version, run:

```
$ sudo dmidecode | less
```

How to check Intel NUC BIOS firmware version in Linux

In this example display version using the -s option:

### Display BIOS Frimware Version

```
sudo dmidecode -s bios-version
```

### Find Intel NUC BIOS date in Linux

```
sudo dmidecode -s bios-release-date
```

### Finding Intel NUC model name on Linux

```
$ sudo dmidecode -s system-product-name
```

It is also possible to show Intel NUC bios version using following command:

```
$ sudo dmidecode --type bios
```

More about dmidecode

The dmidecode is a command-line tool for viewing a computer’s DMI or SMBIOS table contents in a human-readable format. This table contains a description of the system’s hardware components, as well as other useful pieces of information such as serial numbers and BIOS revision. Thanks to this table, you can retrieve this information without having to probe for the actual hardware. The DMI table doesn’t only describe what the system is currently made of, it also can report the possible evolution such as the fastest supported CPU or the maximal amount of memory supported. SMBIOS stands for System Management BIOS. DMI stands for Desktop Management Interface. Both standards are tightly related and developed by the DMTF (Desktop Management Task Force).

### DMI TYPES

Table 1: The SMBIOS specification defines the following DMI types Type	

Information

0 	BIOS
1 	System
2 	Baseboard
3 	Chassis
4 	Processor
5 	Memory Controller
6 	Memory Module
7 	Cache
8 	Port Connector
9 	System Slots
10	On Board Devices
11	OEM Strings
12	System Configuration Options
13	BIOS Language
14	Group Associations
15	System Event Log
16	Physical Memory Array
17	Memory Device
18	32-bit Memory Error
19	Memory Array Mapped Address
20	Memory Device Mapped Address
21	Built-in Pointing Device
22	Portable Battery
23	System Reset
24	Hardware Security
25	System Power Controls
26	Voltage Probe
27	Cooling Device
28	Temperature Probe
29	Electrical Current Probe
30	Out-of-band Remote Access
31	Boot Integrity Services
32	System Boot
33	64-bit Memory Error
34	Management Device
35	Management Device Component
36	Management Device Threshold Data
37	Memory Channel
38	IPMI Device
39	Power Supply
40	Additional Information
41	Onboard Devices Extended Information
42	Management Controller Host Interface

Conclusion

BIOS update usually fix bugs and may support newer features or hardware. For example, update bios may help with overheating GPU issues or support a new CPU and more. Hence, it is recommended that you check BIOS version and update it. You can grab the latest version of Intel NUC BIOS by visiting Intel page download section. Make sure you read the following man pages using the man 

command or help command:

```
$ man dmidecode
$ dmidecode --help
```


### Getting hard disk model and number under Linux

Try command as follows for /dev/sda (SATA). You need to pass -i or -I option which request identification info directly from the drive, which is displayed in a new expanded format:
# hdparm -I /dev/sda
# hdparm -I /dev/sda | grep Serial

OR for IDE /dev/hda
# hdparm -i /dev/hda

### sdparm command

The sdparm command can be used to access SCSI modes pages; read VPD pages; send simple SCSI commands. It can provide all information:

```
$ sudo sdparm -a /dev/sda
$ sudo sdparm --vendor sea /dev/sda
```

[Linux: Find out serial / model number and vendor information for SATA and IDE hard disk](https://tinyurl.com/yl4pp5be).

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
