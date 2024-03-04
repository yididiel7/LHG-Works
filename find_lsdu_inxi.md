# Find Linux System Details Using inxi

inxi will require some additional programs to operate properly. They will be installed along with inxi 
However in case if they are not installed automatically, you need to find and install them.

## To list all required programs, run:

$ inxi --recommends


## Host minipcpn62: 
    - Find System Details Using inxi. 


```
┌[srhills☮minipcpn62]-(~)
└> inxi --recommends
```
inxi will now begin checking for the programs it needs to operate.

Check inxi --help or the man page (man inxi) to see what options are
available.
------------------------------------------------------------------------------
Test: core tools:

Perl version:  5.036001
Current shell: Zsh 5.9
Default shell: zsh
sh links to: /usr/bin/bash
Package manager: pacman
------------------------------------------------------------------------------
Test: required system directories:

/proc: ........................................................... Present
/sys: ............................................................ Present

All required system directories are present
------------------------------------------------------------------------------
Test: recommended system programs:

Note: IPMI sensors are generally only found on servers. To access that data,
you only need one of the ipmi items.

blockdev: --admin -p/-P (filesystem blocksize).................... Present
bt-adapter: -E bluetooth data (if no hciconfig)................... Present
dig: -i wlan IP................................................... Present
dmidecode: -M if no sys machine data; -m.......................... Present
doas: -Dx hddtemp-user; -o file-user (alt for sudo)............... Missing
fdisk: -D partition scheme (fallback)............................. Present
file: -o unmounted file system (if no lsblk)...................... Present
fruid_print: -M machine data, Elbrus only......................... Missing
hciconfig: -E bluetooth data (deprecated, good report)............ Missing
hddtemp: -Dx show hdd temp, if no drivetemp module................ Present
ifconfig: -i ip LAN (deprecated).................................. Present
ip: -i ip LAN..................................................... Present
ipmitool: -s IPMI sensors (servers)............................... Missing
ipmi-sensors: -s IPMI sensors (servers)........................... Missing
lsblk: -L LUKS/bcache; -o unmounted file system (best option)..... Present
lsusb: -A usb audio; -J (optional); -N usb networking............. Present
lvs: -L LVM data.................................................. Present
mdadm: -Ra advanced mdraid data................................... Present
modinfo: Ax; -Nx module version................................... Present
runlevel: -I fallback to Perl..................................... Missing
sensors: -s sensors output (optional, /sys supplies most)......... Present
smartctl: -Da advanced data....................................... Present
strings: -I sysvinit version...................................... Present
sudo: -Dx hddtemp-user; -o file-user (try doas!).................. Present
tree: --debugger 20,21 /sys tree.................................. Present
upower: -sx attached device battery info.......................... Present
uptime: -I uptime................................................. Present

The following recommended system programs are missing:
doas
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
------------------------------------------------------------------------------
Test: recommended display information programs:

glxinfo: -G (X) glx info.......................................... Present
wmctrl: -S active window manager (fallback)....................... Present
xdpyinfo: -G (X) Screen resolution, dpi; -Ga Screen size.......... Present
xprop: -S (X) desktop data........................................ Present
xdriinfo: -G (X) DRI driver (if missing, fallback to Xorg log).... Present
xrandr: -G (X) monitors(s) resolution; -Ga monitor data........... Present

All recommended display information programs are present
------------------------------------------------------------------------------
Test: recommended downloader programs (You only need one of these):

Perl HTTP::Tiny is the default downloader tool if IO::Socket::SSL is present.
See --help --alt 40-44 options for how to override default downloader(s) in
case of issues.

If dig is installed, it is the default for WAN IP data. Strongly recommended.
Dig is fast and accurate.

curl: -i (if no dig); -w,-W; -U................................... Present
dig: -i wlan IP................................................... Present
wget: -i (if no dig); -w,-W; -U................................... Present

All recommended downloader programs are present
------------------------------------------------------------------------------
Test: recommended kernel modules:

GPU modules are only needed if applicable. NVMe drives do not need drivetemp
but other types do.

To load a module: modprobe <module-name> - To permanently load add to
/etc/modules or /etc/modules-load.d/modules.conf (check your system paths for
exact file/directory names).

amdgpu: -s, -G AMD GPU sensor data (newer GPUs)................... Missing
drivetemp: -Dx drive temperature (kernel >= 5.6).................. Missing
nouveau: -s, -G Nvidia GPU sensor data (if using free driver)..... Missing
radeon: -s, -G AMD GPU sensor data (older GPUs)................... Missing

The following recommended kernel modules are missing:
amdgpu
drivetemp
nouveau
radeon
------------------------------------------------------------------------------
Test: recommended Perl modules (Optional):

None of these are strictly required, but if you have them all, you can
eliminate some recommended non Perl programs from the install.

HTTP::Tiny and IO::Socket::SSL must both be present to use as a downloader
option. For json export Cpanel::JSON::XS is preferred over JSON::XS, but
JSON::PP is in core modules. To run --debug 20-22 File::Copy, File::Find, and
File::Spec::Functions must be present (most distros have these in Core
Modules).

File::Copy: --debug 20-22 - required for debugger................. Present
File::Find: --debug 20-22 - required for debugger................. Present
File::Spec::Functions: --debug 20-22 - required for debugger...... Present
HTTP::Tiny: -U; -w,-W; -i (if dig not installed).................. Present
IO::Socket::SSL: -U; -w,-W; -i (if dig not installed)............. Present
Time::HiRes: -C cpu sleep (not required); --debug timers.......... Present
JSON::PP: -G wayland, --output json (in CoreModules, slower)...... Present
Cpanel::JSON::XS: -G wayland, --output json (faster).............. Missing
JSON::XS: -G wayland, --output json (legacy)...................... Missing
XML::Dumper: --output xml - Crude and raw......................... Missing
Net::FTP: --debug 21,22........................................... Present

The following recommended Perl modules are missing:
Cpanel::JSON::XS
 pacman: perl-cpanel-json-xs
JSON::XS
 pacman: perl-json-xs
XML::Dumper
 pacman: perl-xml-dumper
------------------------------------------------------------------------------
Test: recommended directories:

/dev: -l,-u,-o,-p,-P,-D disk partition data....................... Present
/dev/disk/by-id: -D serial numbers................................ Present
/dev/disk/by-label: -l,-o,-p,-P partition labels.................. Present
/dev/disk/by-path: -D extra data.................................. Present
/dev/disk/by-uuid: -u,-o,-p,-P partition uuid..................... Present
/sys/class/dmi/id: -M system, motherboard, bios................... Present
/sys/class/hwmon: -s sensor data (fallback if no lm-sensors)...... Present

All recommended directories are present
------------------------------------------------------------------------------
Test: recommended files:

Note that not all of these are used by every system, so if one is missing it's
usually not a big deal.

/etc/lsb-release: -S distro version data (older version).......... Present
/etc/os-release: -S distro version data (newer version)........... Present
/proc/asound/cards: -A sound card data............................ Present
/proc/asound/version: -A ALSA data................................ Present
/proc/cpuinfo: -C cpu data........................................ Present
/proc/mdstat: -R mdraid data (if you use dm-raid)................. Present
/proc/meminfo: -I,-tm, -m memory data............................. Present
/proc/modules: -G module data (sometimes)......................... Present
/proc/mounts: -P,-p partition advanced data....................... Present
/proc/scsi/scsi: -D Advanced hard disk data (used rarely)......... Present
/var/log/Xorg.0.log: -G graphics driver load status............... Present

All recommended files are present
------------------------------------------------------------------------------
Ok, all done with the checks. Have a nice day.

┌[srhills☮minipcpn62]-(~)
└>
------------------------------------------------------------------------------

## PC optiplex: Find System Details Using inxi.

inxi will require some additional programs to operate properly. They will be installed along with inxi 
However in case if they are not installed automatically, you need to find and install them.

## To list all required programs, run:

$ inxi --recommends

```
┌[tyhills☮optiplex]-(~)
└> inxi --recommends
```
inxi will now begin checking for the programs it needs to operate.

Check inxi --help or the man page (man inxi) to see what options are available.
--------------------------------------------------------------------------------------------------
Test: core tools:

Perl version:  5.036001
Current shell: Zsh 5.9
Default shell: zsh
sh links to: /usr/bin/bash
Package manager: pacman
--------------------------------------------------------------------------------------------------
Test: required system directories:

/proc: ............................................................................... Present
/sys: ................................................................................ Present

All required system directories are present
--------------------------------------------------------------------------------------------------
Test: recommended system programs:

Note: IPMI sensors are generally only found on servers. To access that data, you only need one of
the ipmi items.

blockdev: --admin -p/-P (filesystem blocksize)........................................ Present
bt-adapter: -E bluetooth data (if no hciconfig)....................................... Present
dig: -i wlan IP....................................................................... Present
dmidecode: -M if no sys machine data; -m.............................................. Present
doas: -Dx hddtemp-user; -o file-user (alt for sudo)................................... Missing
fdisk: -D partition scheme (fallback)................................................. Present
file: -o unmounted file system (if no lsblk).......................................... Present
fruid_print: -M machine data, Elbrus only............................................. Missing
hciconfig: -E bluetooth data (deprecated, good report)................................ Missing
hddtemp: -Dx show hdd temp, if no drivetemp module.................................... Present
ifconfig: -i ip LAN (deprecated)...................................................... Present
ip: -i ip LAN......................................................................... Present
ipmitool: -s IPMI sensors (servers)................................................... Missing
ipmi-sensors: -s IPMI sensors (servers)............................................... Missing
lsblk: -L LUKS/bcache; -o unmounted file system (best option)......................... Present
lsusb: -A usb audio; -J (optional); -N usb networking................................. Present
lvs: -L LVM data...................................................................... Present
mdadm: -Ra advanced mdraid data....................................................... Present
modinfo: Ax; -Nx module version....................................................... Present
runlevel: -I fallback to Perl......................................................... Missing
sensors: -s sensors output (optional, /sys supplies most)............................. Present
smartctl: -Da advanced data........................................................... Present
strings: -I sysvinit version.......................................................... Present
sudo: -Dx hddtemp-user; -o file-user (try doas!)...................................... Present
tree: --debugger 20,21 /sys tree...................................................... Present
upower: -sx attached device battery info.............................................. Present
uptime: -I uptime..................................................................... Present

The following recommended system programs are missing:
doas
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
--------------------------------------------------------------------------------------------------
Test: recommended display information programs:

glxinfo: -G (X) glx info.............................................................. Present
wmctrl: -S active window manager (fallback)........................................... Present
xdpyinfo: -G (X) Screen resolution, dpi; -Ga Screen size.............................. Present
xprop: -S (X) desktop data............................................................ Present
xdriinfo: -G (X) DRI driver (if missing, fallback to Xorg log)........................ Present
xrandr: -G (X) monitors(s) resolution; -Ga monitor data............................... Present

All recommended display information programs are present
--------------------------------------------------------------------------------------------------
Test: recommended downloader programs (You only need one of these):

Perl HTTP::Tiny is the default downloader tool if IO::Socket::SSL is present. See --help --alt
40-44 options for how to override default downloader(s) in case of issues.

If dig is installed, it is the default for WAN IP data. Strongly recommended. Dig is fast and
accurate.

curl: -i (if no dig); -w,-W; -U....................................................... Present
dig: -i wlan IP....................................................................... Present
wget: -i (if no dig); -w,-W; -U....................................................... Present

All recommended downloader programs are present
--------------------------------------------------------------------------------------------------
Test: recommended kernel modules:

GPU modules are only needed if applicable. NVMe drives do not need drivetemp but other types do.

To load a module: modprobe <module-name> - To permanently load add to /etc/modules or
/etc/modules-load.d/modules.conf (check your system paths for exact file/directory names).

amdgpu: -s, -G AMD GPU sensor data (newer GPUs)....................................... Missing
drivetemp: -Dx drive temperature (kernel >= 5.6)...................................... Missing
nouveau: -s, -G Nvidia GPU sensor data (if using free driver)......................... Missing
radeon: -s, -G AMD GPU sensor data (older GPUs)....................................... Missing

The following recommended kernel modules are missing:
amdgpu
drivetemp
nouveau
radeon
--------------------------------------------------------------------------------------------------
Test: recommended Perl modules (Optional):

None of these are strictly required, but if you have them all, you can eliminate some recommended
non Perl programs from the install.

HTTP::Tiny and IO::Socket::SSL must both be present to use as a downloader option. For json export
Cpanel::JSON::XS is preferred over JSON::XS, but JSON::PP is in core modules. To run --debug 20-22
File::Copy, File::Find, and File::Spec::Functions must be present (most distros have these in Core
Modules).

File::Copy: --debug 20-22 - required for debugger..................................... Present
File::Find: --debug 20-22 - required for debugger..................................... Present
File::Spec::Functions: --debug 20-22 - required for debugger.......................... Present
HTTP::Tiny: -U; -w,-W; -i (if dig not installed)...................................... Present
IO::Socket::SSL: -U; -w,-W; -i (if dig not installed)................................. Missing
Time::HiRes: -C cpu sleep (not required); --debug timers.............................. Present
JSON::PP: -G wayland, --output json (in CoreModules, slower).......................... Present
Cpanel::JSON::XS: -G wayland, --output json (faster).................................. Missing
JSON::XS: -G wayland, --output json (legacy).......................................... Missing
XML::Dumper: --output xml - Crude and raw............................................. Missing
Net::FTP: --debug 21,22............................................................... Present

The following recommended Perl modules are missing:
IO::Socket::SSL
 pacman: perl-io-socket-ssl
Cpanel::JSON::XS
 pacman: perl-cpanel-json-xs
JSON::XS
 pacman: perl-json-xs
XML::Dumper
 pacman: perl-xml-dumper
--------------------------------------------------------------------------------------------------
Test: recommended directories:

/dev: -l,-u,-o,-p,-P,-D disk partition data........................................... Present
/dev/disk/by-id: -D serial numbers.................................................... Present
/dev/disk/by-label: -l,-o,-p,-P partition labels...................................... Present
/dev/disk/by-path: -D extra data...................................................... Present
/dev/disk/by-uuid: -u,-o,-p,-P partition uuid......................................... Present
/sys/class/dmi/id: -M system, motherboard, bios....................................... Present
/sys/class/hwmon: -s sensor data (fallback if no lm-sensors).......................... Present

All recommended directories are present
--------------------------------------------------------------------------------------------------
Test: recommended files:

Note that not all of these are used by every system, so if one is missing it's usually not a big
deal.

/etc/lsb-release: -S distro version data (older version).............................. Present
/etc/os-release: -S distro version data (newer version)............................... Present
/proc/asound/cards: -A sound card data................................................ Present
/proc/asound/version: -A ALSA data.................................................... Present
/proc/cpuinfo: -C cpu data............................................................ Present
/proc/mdstat: -R mdraid data (if you use dm-raid)..................................... Missing
/proc/meminfo: -I,-tm, -m memory data................................................. Present
/proc/modules: -G module data (sometimes)............................................. Present
/proc/mounts: -P,-p partition advanced data........................................... Present
/proc/scsi/scsi: -D Advanced hard disk data (used rarely)............................. Present
/var/log/Xorg.0.log: -G graphics driver load status................................... Present

The following recommended files are missing:
/proc/mdstat
--------------------------------------------------------------------------------------------------
Ok, all done with the checks. Have a nice day.

┌[tyhills☮optiplex]-(~)
└>
