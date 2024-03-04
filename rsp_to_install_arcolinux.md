# The following recommended system programs are missing:
	doas
	To allow members of the wheel group to run commands as other users,
create the file /etc/doas.conf with the following content:

	permit :wheel

Refer to doas(1) and doas.conf(5) for more information.

An important notice from README.md:

	The persist feature is disabled by default [....] This feature
	is new and potentially dangerous, in the original doas, a
	kernel API is used to set and clear timeouts. This API is
	openbsd specific and no similar API is available on other
	operating systems.

	As a workaround, the persist feature is implemented using
	timestamp files similar to sudo.

	
	pacman: doas
	fruid_print
	pacman: N/A
	hciconfig
	pacman: bluez-utils-compat (frugalware: bluez-utils)
	ipmitool
	pacman: ipmitool
	ipmi-sensors
	pacman: freeipmi
	runlevel
	pacman: systemd

 ## Installation of Each Package

$ sudo pacman -S doas

┌[srhills☮minipcpn62]-(~)
└> sudo pacman -S doas
resolving dependencies...
looking for conflicting packages...

Package (1)     New Version  Net Change  Download Size

extra/opendoas  6.8.2-1        0.05 MiB       0.02 MiB

Total Download Size:   0.02 MiB
Total Installed Size:  0.05 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 opendoas-6.8.2-1-x86_64
                                                                                   
```
To allow members of the wheel group to run commands as other users,
create the file /etc/doas.conf with the following content:

	permit :wheel

Refer to doas(1) and doas.conf(5) for more information.

An important notice from README.md:

	The persist feature is disabled by default [....] This feature
	is new and potentially dangerous, in the original doas, a
	kernel API is used to set and clear timeouts. This API is
	openbsd specific and no similar API is available on other
	operating systems.

	As a workaround, the persist feature is implemented using
	timestamp files similar to sudo.
```
