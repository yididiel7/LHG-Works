# To Create a Convenient List 
# Commands to run:

$ apropos -s 1 '' > convenient_list_of_commands.pl

$ cp convenient_list_of_commands.pl ~/ArcoScripts

apropos -s 1 ''

-s 1 returns only "section 1" manpages which are entries for executable programs.

'' is a search for anything. (If you use an asterisk, on my system, bash throws 
	in a search for all the files and folders in your current working directory.)

Then you just grep it like you want.

apropos -s 1 '' | grep xdg

```
# Results:

7z (1)               - A file archiver with highest compression ratio
7za (1)              - A file archiver with highest compression ratio
7zr (1)              - A file archiver with highest compression ratio
as (1)               - the portable GNU assembler.
alacritty (1)        - A fast, cross-platform, OpenGL terminal emulator
djvu (1)             - DjVu and DjVuLibre.
enchant-2 (1)        - a spellchecker
fluidsynth (1)       - a SoundFont synthesizer
GET (1p)             - Simple command line user agent
grsync (1)           - GTK+ frontend for rsync
grsync-batch (1)     - Grsync batch session runner
HEAD (1p)            - Simple command line user agent
hardinfo (1)         - System profiler and benchmark for Linux systems.
irssi (1)            - a modular IRC client for UNIX
neofetch (1)         - A fast, highly customizable system info script
plank (1)            - Stupidly simple.
sshfs (1)            - filesystem client based on SSH
wget (1)             - The non-interactive network downloader.
glslc (1)            - A command-line GLSL/HLSL to SPIR-V compiler with Clang-compatible arguments.
a52dec (1)           - decode ATSC A/52 audio streams
aa-enabled (1)       - test whether AppArmor is enabled
aa-exec (1)          - confine a program with the specified AppArmor profile
aa-features-abi (1)  - Extract, validate and manipulate AppArmor feature abis
aafire (1)           - aalib example programs
ab (1)               - Apache HTTP server benchmarking tool
aclocal (1)          - manual page for aclocal 1.16.5
aclocal-1.16 (1)     - manual page for aclocal 1.16.5
aconnect (1)         - ALSA sequencer connection manager
acountry (1)         - print the country where an IPv4 address or host is located
addftinfo (1)        - add information to troff font files for use with groff
addr2line (1)        - convert addresses or symbol+offset into file names and line numbers
addr2name (1)        - perform DNS lookups from scripts
adig (1)             - print information collected from Domain Name System (DNS) servers
afmtodit (1)         - create font files for use with groff -Tps and -Tpdf
ag (1)               - The Silver Searcher. Like ack, but faster.
agentxtrap (1)       - send an AgentX NotifyPDU to an AgentX master agent
ahost (1)            - print the A or AAAA record associated with a hostname or IP address
alacritty-msg (1)    - Send messages to Alacritty
alsa-info.sh (1)     - command-line utility to gather information about the ALSA subsystem
alsabat (1)          - command-line sound tester for ALSA sound card driver
alsactl (1)          - advanced controls for ALSA soundcard driver
alsaloop (1)         - command-line PCM loopback
alsamixer (1)        - soundcard mixer for ALSA soundcard driver, with ncurses interface
alsatplg (1)         - ALSA Topology Compiler
alsaucm (1)          - ALSA Use Case Manager
amidi (1)            - read from and write to ALSA RawMIDI ports
amixer (1)           - command-line mixer for ALSA soundcard driver
animate (1)          - animates an image or image sequence on any X server.
ansiweather (1)      - weather in terminal, with ANSI colors and Unicode symbols
any2djvu (1)         - Convert .ps/.ps.gz/.pdf to .djvu
aplay (1)            - command-line sound recorder and player for ALSA soundcard driver
aplaymidi (1)        - play Standard MIDI Files
appstream-builder (1) - Build AppStream metadata
appstream-compose (1) - Generate AppStream metadata
appstream-util (1)   - Manipulate AppStream, AppData and MetaInfo metadata
appstreamcli (1)     - Handle AppStream metadata formats and query AppStream data
appstreamcli-compose (1) - Compose AppStream metadata catalog from directory trees
apropos (1)          - search the manual page names and descriptions
apxs (1)             - APache eXtenSion tool
ar (1)               - create, modify, and extract from archives
arandr (1)           - visual front end for XRandR 1.2
arecord (1)          - command-line sound recorder and player for ALSA soundcard driver
arecordmidi (1)      - record Standard MIDI Files
arpaname (1)         - translate IP addresses to the corresponding ARPA names
asciinema (1)        - terminal session recorder
aseqdump (1)         - show the events received at an ALSA sequencer port
aseqnet (1)          - ALSA sequencer connectors over network
asn1Coding (1)       - ASN.1 DER encoder
asn1Decoding (1)     - ASN.1 DER decoder
asn1parse (1ssl)     - OpenSSL application commands
asn1Parser (1)       - ASN.1 syntax tree generator for libtasn1
attr (1)             - extended attributes on XFS filesystem objects
autoconf (1)         - Generate configuration scripts
autoheader (1)       - Create a template header for configure
autom4te (1)         - Generate files and scripts thanks to M4
automake (1)         - manual page for automake 1.16.5
automake-1.16 (1)    - manual page for automake 1.16.5
autopoint (1)        - copies standard gettext infrastructure
autorandr (1)        - automatically select a display configuration based on connected devices
autoreconf (1)       - Update generated configuration files
autoscan (1)         - Generate a preliminary configure.ac
autoupdate (1)       - Update a configure.ac to a newer Autoconf
avahi-bookmarks (1)  - Web service showing mDNS/DNS-SD announced HTTP services using the Avahi daemon
avahi-browse (1)     - Browse for mDNS/DNS-SD services using the Avahi daemon
avahi-browse-domains (1) - Browse for mDNS/DNS-SD services using the Avahi daemon
avahi-discover (1)   - Browse for mDNS/DNS-SD services using the Avahi daemon
avahi-publish (1)    - Register an mDNS/DNS-SD service or host name or address mapping using the Avahi daemon
avahi-publish-address (1) - Register an mDNS/DNS-SD service or host name or address mapping using the Avahi daemon
avahi-publish-service (1) - Register an mDNS/DNS-SD service or host name or address mapping using the Avahi daemon
avahi-resolve (1)    - Resolve one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the Avahi daemon
avahi-resolve-address (1) - Resolve one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the Avahi daemon
avahi-resolve-host-name (1) - Resolve one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the Avahi daemon
avahi-set-host-name (1) - Change mDNS host name
awesome (1)          - awesome window manager
awesome-client (1)   - awesome window manager remote execution
axfer (1)            - command-line sound recorder and player for sound devices and nodes supported by Linux sound subsystem (Advanced Linux Sound Architecture, also known as ALSA).
axfer-list (1)       - dump lists of available sound devices and nodes to transfer audio data frame.
axfer-transfer (1)   - transferrer of audio data frame for sound devices and nodes.
b2sum (1)            - compute and check BLAKE2 message digest
urxvt-background (1) - manage terminal background
baobab (1)           - A graphical disk usage analyzer for the GNOME desktop
base32 (1)           - base32 encode/decode data and print to standard output
base64 (1)           - base64 encode/decode data and print to standard output
basename (1)         - strip directory and suffix from filenames
basenc (1)           - Encode/decode data and print to standard output
bash (1)             - GNU Bourne-Again SHell
bashbug (1)          - report a bug in bash
bat (1)              - a cat(1) clone with syntax highlighting and Git integration.
bc (1)               - An arbitrary precision calculator language
bdftopcf (1)         - convert X font from Bitmap Distribution Format to Portable Compiled Format
urxvt-bell-command (1) - execute a command when the bell rings
bison (1)            - GNU Project parser generator (yacc replacement)
urxvt-block-graphics-to-ascii (1) - map block graphics to ascii characters
blueman-adapters (1) - an utility to set adapter properties
blueman-applet (1)   - a tray applet for managing bluetooth
blueman-manager (1)  - bluetooth device manager
blueman-sendto (1)   - application for sending files to bluetooth devices
blueman-services (1) - Configure local bluetooth services
blueman-tray (1)     - a status icon application for blueman
bluetooth (1)        - enable/disable internal bluetooth device
bond2team (1)        - Converts bonding configuration to team
bootctl (1)          - Control EFI firmware boot settings and manage boot loader
borg (1)             - deduplicating and encrypting backup tool
borg-benchmark (1)   - benchmark command
borg-benchmark-crud (1) - Benchmark Create, Read, Update, Delete for archives.
borg-break-lock (1)  - Break the repository lock (e.g. in case it was left by a dead borg.
borg-change-passphrase (1) - Change repository key file passphrase
borg-check (1)       - Check repository consistency
borg-common (1)      - Common options of Borg commands
borg-compact (1)     - compact segment files in the repository
borg-compression (1) - Details regarding compression
borg-config (1)      - get, set, and delete values in a repository or cache config file
borg-create (1)      - Create new archive
borg-delete (1)      - Delete an existing repository or archives
borg-diff (1)        - Diff contents of two archives
borg-export-tar (1)  - Export archive contents as a tarball
borg-extract (1)     - Extract archive contents
borg-import-tar (1)  - Create a backup archive from a tarball
borg-info (1)        - Show archive details such as disk space used
borg-init (1)        - Initialize an empty repository
borg-key (1)         - Manage a keyfile or repokey of a repository
borg-key-change-passphrase (1) - Change repository key file passphrase
borg-key-export (1)  - Export the repository key for backup
borg-key-import (1)  - Import the repository key from backup
borg-key-migrate-to-repokey (1) - Migrate passphrase -> repokey
borg-list (1)        - List archive or repository contents
borg-mount (1)       - Mount archive or an entire repository as a FUSE filesystem
borg-patterns (1)    - Details regarding patterns
borg-placeholders (1) - Details regarding placeholders
borg-prune (1)       - Prune repository archives according to specified rules
borg-recreate (1)    - Re-create archives
borg-rename (1)      - Rename an existing archive
borg-serve (1)       - Start in server mode. This command is usually not used manually.
borg-umount (1)      - un-mount the FUSE filesystem
borg-upgrade (1)     - upgrade a repository from a previous version
borg-with-lock (1)   - run a user specified command with the repository lock held
borgfs (1)           - Mount archive or an entire repository as a FUSE filesystem
broadwayd (1)        - Broadway display server
brotli (1)           - brotli, unbrotli - compress or decompress files
bscalc (1)           - manual page for bscalc 2.8
bsdcat (1)           - expand files to standard output
bsdcpio (1)          - copy files to and from archives
bsdtar (1)           - manipulate tape archives
bshell (1)           - Browse for SSH/VNC servers on the local network
bssh (1)             - Browse for SSH/VNC servers on the local network
bt-adapter (1)       - a bluetooth adapter manager
bt-agent (1)         - a bluetooth agent
bt-device (1)        - a bluetooth device manager
bt-network (1)       - a bluetooth network manager
bt-obex (1)          - a bluetooth OBEX client/server
btattach (1)         - Attach serial devices to BlueZ stack
btmon (1)            - Bluetooth monitor
bundle (1)           - Ruby Dependency Management
bundle-add (1)       - Add gem to the Gemfile and run bundle install
bundle-binstubs (1)  - Install the binstubs of the listed gems
bundle-cache (1)     - Package your needed .gem files into your application
bundle-check (1)     - Verifies if dependencies are satisfied by installed gems
bundle-clean (1)     - Cleans up unused gems in your bundler directory
bundle-config (1)    - Set bundler configuration options
bundle-console (1)   - Deprecated way to open an IRB session with the bundle pre-loaded
bundle-doctor (1)    - Checks the bundle for common problems
bundle-exec (1)      - Execute a command in the context of the bundle
bundle-gem (1)       - Generate a project skeleton for creating a rubygem
bundle-help (1)      - Displays detailed help for each subcommand
bundle-info (1)      - Show information for the given gem in your bundle
bundle-init (1)      - Generates a Gemfile into the current working directory
bundle-inject (1)    - Add named gem(s) with version requirements to Gemfile
bundle-install (1)   - Install the dependencies specified in your Gemfile
bundle-list (1)      - List all the gems in the bundle
bundle-lock (1)      - Creates / Updates a lockfile without installing
bundle-open (1)      - Opens the source directory for a gem in your bundle
bundle-outdated (1)  - List installed gems with newer versions available
bundle-platform (1)  - Displays platform compatibility information
bundle-plugin (1)    - Manage Bundler plugins
bundle-pristine (1)  - Restores installed gems to their pristine condition
bundle-remove (1)    - Removes gems from the Gemfile
bundle-show (1)      - Shows all the gems in your bundle, or the path to a gem
bundle-update (1)    - Update your gems to the latest available versions
bundle-version (1)   - Prints Bundler version information
bundle-viz (1)       - Generates a visual dependency graph for your Gemfile
bunzip2 (1)          - a block-sorting file compressor, v1.0.8
busctl (1)           - Introspect the bus
bvnc (1)             - Browse for SSH/VNC servers on the local network
bwrap (1)            - container setup utility
bzcat (1)            - decompresses files to stdout
bzip2 (1)            - a block-sorting file compressor, v1.0.8
bzip2recover (1)     - recovers data from damaged bzip2 files
bzz (1)              - DjVu general purpose compression utility.
c++filt (1)          - demangle C++ and Java symbols
c44 (1)              - DjVuPhoto encode.
c_rehash (1ssl)      - Create symbolic links to files named by the hash values
ca (1ssl)            - OpenSSL application commands
CA.pl (1ssl)         - friendlier interface for OpenSSL certificate programs
caca-config (1)      - script to get information about the installed version of libcaca
cacademo (1)         - libcaca's demonstration applications
cacafire (1)         - libcaca's demonstration applications
cacaplay (1)         - play libcaca files
cacaserver (1)       - telnet server for libcaca
cacaview (1)         - ASCII image browser
cal (1)              - display a calendar
calc_tickadj (1)     - Calculates optimal value for tick given ntp drift file.
cancel (1)           - cancel jobs
capsh (1)            - capability shell wrapper
captoinfo (1m)       - convert a termcap description into a terminfo description
cat (1)              - concatenate files and print on the standard output
catfish (1)          - File searching tool which is configurable via the command line
cd-create-profile (1) - Color Manager Profile Creation Tool
cd-drive (1)         - show CD-ROM drive characteristics
cd-fix-profile (1)   - Color Manager Testing Tool
cd-info (1)          - shows Information about a CD or CD-image
cd-it8 (1)           - Color Manager Testing Tool
cd-paranoia (1)      - (unknown subject)
cd-read (1)          - reads Information from a CD or CD-image
cdparanoia (1)       - (unknown subject)
cdrskin (1)          - burns preformatted data to CD, DVD, and BD via libburn.
cdrwtool (1)         - perform various actions on a CD-R, CD-RW, and DVD-R
cec-compliance (1)   - An application to verify remote CEC devices
cec-ctl (1)          - An application to control cec devices
cec-follower (1)     - An application to emulate CEC followers
celluloid (1)        - A simple GTK+ frontend for mpv
certtool (1)         - GnuTLS certificate tool
certutil (1)         - Manage keys and certificate in both NSS databases and other NSS tokens
chacl (1)            - change the access control list of a file or directory
chafa (1)            - Character art facsimile generator
chage (1)            - change user password expiry information
chattr (1)           - change file attributes on a Linux file system
chcon (1)            - change file security context
check_hd (1)         - (unknown subject)
chem (1)             - groff preprocessor for producing chemical structure diagrams
chezdav (1)          - simple WebDAV server
chfn (1)             - change your finger information
chgrp (1)            - change group ownership
chmod (1)            - change file mode bits
choom (1)            - display and adjust OOM-killer score.
chown (1)            - change file owner and group
chroot (1)           - run command or interactive shell with special root directory
chrt (1)             - manipulate the real-time attributes of a process
chsh (1)             - change your login shell
chvt (1)             - change foreground virtual terminal
cifscreds (1)        - manage NTLM credentials in kernel keyring
ciphers (1ssl)       - OpenSSL application commands
cisco-decrypt (1)    - decrypts an obfuscated Cisco vpn client pre-shared key
cjb2 (1)             - Simple DjVuBitonal encoder.
cjpeg (1)            - compress an image file to a JPEG file
cjxl (1)             - compress images to JPEG XL
cksum (1)            - compute and verify file checksums
clear (1)            - clear the terminal screen
urxvt-clickthrough (1) - make window "transparent" with respect to input events
urxvt-clipboard-osc (1) - implement the clipboard operating system command sequence
cmp (1)              - compare two files byte by byte
cmp (1ssl)           - OpenSSL application commands
cms (1ssl)           - OpenSSL application commands
cmsutil (1)          - Performs basic cryptograpic operations, such as encryption and decryption, on Cryptographic Message Syntax (CMS) messages.
codepage (1)         - extract a codepage from an MSDOS codepage file
col (1)              - filter reverse line feeds from input
colcrt (1)           - filter nroff output for CRT previewing
colorit (1)          - a script for markuping the text input
colormgr (1)         - Color Manager Testing Tool
colrm (1)            - remove columns from a file
column (1)           - columnate lists
comm (1)             - compare two sorted files line by line
compare (1)          - mathematically and visually annotate the difference between an image and its reconstruction.
compile_et (1)       - error table compiler
composite (1)        - overlaps one image over another.
urxvt-confirm-paste (1) - ask for confirmation before pasting control characters
conjure (1)          - interprets and executes scripts written in the Magick Scripting Language (MSL).
conky (1)            - A system monitor for X originally based on the torsmo code, but more kickass. It just keeps on given'er. Yeah.
convert (1)          - convert between image formats as well as resize an image, blur, crop, despeckle, dither, draw on, flip, join, re-sample, and much more.
convert_hd (1)       - (unknown subject)
coredumpctl (1)      - Retrieve and process saved core dumps and metadata
corelist (1perl)     - a commandline frontend to Module::CoreList
cp (1)               - copy files and directories
cpaldjvu (1)         - DjVuDocument encoder for low-color images.
cpan (1perl)         - easily interact with CPAN from the command line
cpanm (1p)           - get, unpack build and install modules from CPAN
cpio (1)             - copy files to and from archives
cpp (1)              - The C Preprocessor
crl (1ssl)           - OpenSSL application commands
crl2pkcs7 (1ssl)     - OpenSSL application commands
crlutil (1)          - List, generate, modify, or delete CRLs within the NSS security database file(s) and list, create, modify or delete certificates entries in a particular CRL.
cronnext (1)         - time of next job cron will execute
crontab (1)          - maintains crontab files for individual users
csepdjvu (1)         - DjVu encoder for separated data files.
csplit (1)           - split a file into sections determined by context lines
ctags (1)            - Generate tag files for source code
cups (1)             - a standards-based, open source printing system
cups-config (1)      - get cups api, compiler, directory, and link information (deprecated).
cupstestppd (1)      - test conformance of ppd files (deprecated)
curl (1)             - transfer a URL
curl-config (1)      - Get information about a libcurl installation
cut (1)              - remove sections from each line of files
vlc (1)              - the VLC media player
cvt (1)              - calculate VESA CVT mode lines
cvtsudoers (1)       - convert between sudoers file formats
cwebp (1)            - compress an image file to a WebP file
cxl (1)              - Provides enumeration and provisioning commands for CXL platforms
cxl-create-region (1) - Assemble a CXL region by setting up attributes of its constituent CXL memdevs.
cxl-destroy-region (1) - destroy specified region(s).
cxl-disable-bus (1)  - Shutdown an entire tree of CXL devices
cxl-disable-memdev (1) - deactivate / hot-remove a given CXL memdev
cxl-disable-port (1) - disable / hot-remove a given CXL port and descendants
cxl-disable-region (1) - disable specified region(s).
cxl-enable-memdev (1) - activate / hot-add a given CXL memdev
cxl-enable-port (1)  - activate / hot-add a given CXL port
cxl-enable-region (1) - enable specified region(s).
cxl-free-dpa (1)     - release device-physical address space
cxl-list (1)         - List platform CXL objects, and their attributes, in json.
cxl-monitor (1)      - Monitor the CXL trace events
cxl-read-labels (1)  - read out the label area on a CXL memdev
cxl-reserve-dpa (1)  - allocate device-physical address space
cxl-set-partition (1) - set the partitioning between volatile and persistent capacity on a CXL memdev
cxl-write-labels (1) - write data to the label area on a memdev
cxl-zero-labels (1)  - zero out the label area on a set of memdevs
cxpm (1)             - Check an XPM (X PixMap) file, versions XPM 1, 2, or 3.
date (1)             - print or set the system date and time
daxctl (1)           - Provides enumeration and provisioning commands for the Linux kernel Device-DAX facility
daxctl-create-device (1) - Create a devdax device
daxctl-destroy-device (1) - Destroy a devdax device
daxctl-disable-device (1) - Disables a devdax device
daxctl-enable-device (1) - Enable a devdax device
daxctl-list (1)      - dump the platform Device-DAX regions, devices, and attributes in json.
daxctl-migrate-device-model (1) - Opt-in to the /sys/bus/dax device-model, allow for alternative Device-DAX instance drivers.
daxctl-offline-memory (1) - Offline the memory for a device that is in system-ram mode
daxctl-online-memory (1) - Online the memory for a device that is in system-ram mode
daxctl-reconfigure-device (1) - Reconfigure a dax device into a different mode
dbilogstrip (1p)     - filter to normalize DBI trace logs for diff'ing
dbiprof (1p)         - command-line client for DBI::ProfileData
dbiproxy (1p)        - A proxy server for the DBD::Proxy driver
dbmmanage (1)        - Manage user authentication files in DBM format
dbus-binding-tool (1) - C language dbus-glib bindings generation utility.
dbus-cleanup-sockets (1) - clean up leftover sockets in a directory
dbus-daemon (1)      - Message bus daemon
dbus-launch (1)      - Utility to start a message bus from a shell script
dbus-monitor (1)     - debug probe to print message bus messages
dbus-run-session (1) - start a process as a new D-Bus session
dbus-send (1)        - Send a message to a message bus
dbus-test-tool (1)   - D-Bus traffic generator and test tool
dbus-update-activation-environment (1) - update environment used for D-Bus session services
dbus-uuidgen (1)     - Utility to generate UUIDs
dc (1)               - an arbitrary precision calculator
dc1394_multiview (1) - display format0 camera video
dc1394_reset_bus (1) - resets the IEEE1394 bus
dc1394_vloopback (1) - send format0 video to V4L vloopback device
dcadec (1)           - decode DTS Coherent Acoustics audio streams
dconf (1)            - Simple tool for manipulating a dconf database
dconf-editor (1)     - Graphical editor for gsettings and dconf
dconf-service (1)    - D-Bus service for writes to the dconf database
dd (1)               - convert and copy a file
ddcutil (1)          - Query and change monitor settings
ddjvu (1)            - Command line DjVu decoder.
ddrescue (1)         - data recovery tool
ddrescuelog (1)      - tool for ddrescue mapfiles
deallocvt (1)        - deallocate unused virtual consoles
debugedit (1)        - debug source path manipulation tool
decode-dimms (1)     - decode the information found in memory module SPD EEPROMs
decode-vaio (1)      - decode the information found in the Sony Vaio laptop identification EEPROMs
delv (1)             - DNS lookup and validation utility
derb (1)             - disassemble a resource bundle
desktop-file-edit (1) - Installation and edition of desktop files
desktop-file-install (1) - Installation and edition of desktop files
desktop-file-validate (1) - Validate desktop entry files
dex (1)              - DesktopEntry Execution
df (1)               - report file system space usage
dgst (1ssl)          - OpenSSL application commands
dhcp_lease_time (1)  - Query remaining time of a lease on a the local dnsmasq DHCP server.
dhcp_release (1)     - Release a DHCP lease on a the local dnsmasq DHCP server.
dhcp_release6 (1)    - Release a DHCPv6 lease on a the local dnsmasq DHCP server.
dhparam (1ssl)       - OpenSSL application commands
splain (1perl)       - produce verbose warning diagnostics
dialog (1)           - display dialog boxes from shell scripts
dict (1)             - DICT Protocol Client
dict_lookup (1)      - DICT Protocol Client
dictfmt (1)          - formats a DICT protocol dictionary database
dictfmt_index2suffix (1) - Creates a .suffix file from a DICTD database .index file
dictfmt_index2word (1) - Creates a .word index file from a DICTD database .index file
dictl (1)            - wrapper script for dict that permits using utf-8 encoded dictionaries on a terminal that is not utf-8 aware.
dictunformat (1)     - create a raw database file from a .dict and .index file
dictzip (1)          - compress (or expand) files, allowing random access
diff (1)             - compare files line by line
diff3 (1)            - compare three files line by line
dig (1)              - DNS lookup utility
urxvt-digital-clock (1) - display a digital clock overlay
dir (1)              - list directory contents
dircolors (1)        - color setup for ls
dirmngr-client (1)   - Tool to access the Dirmngr services
dirname (1)          - strip last component from file name
display (1)          - displays an image or image sequence on any X server.
djpeg (1)            - decompress a JPEG file to an image file
djvm (1)             - Manipulate bundled multi-page DjVu documents.
djvmcvt (1)          - Convert multi-page DjVu documents.
djvudigital (1)      - creates DjVu files from PS or PDF files.
djvudump (1)         - Display internal structure of DjVu files.
djvuextract (1)      - Extract chunks from DjVu image files.
djvumake (1)         - Assemble DjVu image files.
djvups (1)           - Convert DjVu documents to PostScript.
djvused (1)          - Multi-purpose DjVu document editor.
djvuserve (1)        - Generate indirect DjVu documents on the fly.
djvutoxml (1)        - DjVuLibre XML Tools.
djvutxt (1)          - Extract the hidden text from DjVu documents.
djvuxml (1)          - DjVuLibre XML Tools.
djvuxmlparser (1)    - DjVuLibre XML Tools.
djxl (1)             - decompress JPEG XL images
dmenu (1)            - dynamic menu
dmesg (1)            - print or control the kernel ring buffer
dnsdomainname (1)    - show DNS domain name
dnssec-cds (1)       - change DS records for a child zone based on CDS/CDNSKEY
dnssec-dsfromkey (1) - DNSSEC DS RR generation tool
dnssec-importkey (1) - import DNSKEY records from external systems so they can be managed
dnssec-keyfromlabel (1) - DNSSEC key generation tool
dnssec-keygen (1)    - DNSSEC key generation tool
dnssec-revoke (1)    - set the REVOKED bit on a DNSSEC key
dnssec-settime (1)   - set the key timing metadata for a DNSSEC key
dnssec-signzone (1)  - DNSSEC zone signing tool
dnssec-verify (1)    - DNSSEC zone verification tool
dnssort (1)          - sort DNS hostnames
ldns-dpa (1)         - DNS Packet Analyzer. Analyze DNS packets in ip trace files
dpipe (1)            - bi-directional pipe command
drill (1)            - get (debug) information out of DNS(SEC)
driverless (1)       - PPD generator utility for driverless printing
dsa (1ssl)           - OpenSSL application commands
dsaparam (1ssl)      - OpenSSL application commands
dtsdec (1)           - decode DTS Coherent Acoustics audio streams
du (1)               - estimate file space usage
dubdv (1)            - insert audio into a digital video stream
dump.erofs (1)       - retrieve directory and file entries, show specific file or overall disk statistics information from an EROFS-formatted image.
dumpiso (1)          - dump IEEE 1394 isochronous channel packets
dumpkeys (1)         - dump keyboard translation tables
dvb-fe-tool (1)      - DVBv5 tool for frontend settings inspect/change
dvb-format-convert (1) - DVBv5 tool for file format conversions
dvbv5-scan (1)       - DVBv5 tool for frequency scanning
dvbv5-zap (1)        - DVBv5 tool for service tuning
dvconnect (1)        - receive or transmit raw DV using the video1394 device
dvcont (1)           - send control commands to DV cameras
dvipdf (1)           - Convert TeX DVI file to PDF using ghostscript and dvips
dwebp (1)            - decompress a WebP file to an image file
ec (1ssl)            - OpenSSL application commands
echo (1)             - display a line of text
ecparam (1ssl)       - OpenSSL application commands
ecryptfs-add-passphrase (1) - add an eCryptfs mount passphrase to the kernel keyring.
ecryptfs-find (1)    - use inode numbers to match encrypted/decrypted filenames
ecryptfs-generate-tpm-key (1) - generate an eCryptfs key for TPM hardware.
ecryptfs-insert-wrapped-passphrase-into-keyring (1) - unwrap a wrapped passphrase from file and insert into the kernel keyring.
ecryptfs-mount-private (1) - interactive eCryptfs private mount wrapper script.
ecryptfs-recover-private (1) - find and mount any encrypted private directories
ecryptfs-rewrap-passphrase (1) - unwrap an eCryptfs wrapped passphrase, rewrap it with a new passphrase, and write it back to file.
ecryptfs-rewrite-file (1) - force a file to be rewritten (reencrypted) in the lower filesystem
ecryptfs-setup-private (1) - setup an eCryptfs private directory.
ecryptfs-setup-swap (1) - ensure that any swap space is encrypted
ecryptfs-stat (1)    - Present statistics on encrypted eCryptfs file attributes
ecryptfs-umount-private (1) - eCryptfs private unmount wrapper script.
ecryptfs-unwrap-passphrase (1) - unwrap an eCryptfs mount passphrase from file.
ecryptfs-verify (1)  - validate an eCryptfs encrypted home or encrypted private configuration
ecryptfs-wrap-passphrase (1) - wrap an eCryptfs mount passphrase.
edid-decode (1)      - Decode EDID data in human-readable format
efisecdb (1)         - utility for managing UEFI signature lists
efivar (1)           - Tool to manipulate UEFI variables
eject (1)            - eject removable media
elfedit (1)          - update ELF header and program property of ELF files
enc (1ssl)           - OpenSSL application commands
enc2xs (1perl)       - - Perl Encode Module Generator
encguess (1perl)     - guess character encodings of files
enchant-lsmod-2 (1)  - list provider and dictionary information
encode_keychange (1) - produce the KeyChange string for SNMPv3
encodedv (1)         - encode a series of images to a digital video stream
engine (1ssl)        - OpenSSL application commands
env (1)              - run a program in a modified environment
envsubst (1)         - substitutes environment variables in shell format strings
eps2eps (1)          - Ghostscript PostScript "distiller"
eqn (1)              - format equations for troff or MathML
eqn2graph (1)        - convert an EQN equation into a cropped image
erofsfuse (1)        - FUSE file system client for erofs file system
errstr (1ssl)        - OpenSSL application commands
escputil (1)         - maintain Epson Stylus inkjet printers
urxvt-eval (1)       - evaluate arbitrary perl code using actions
evince (1)           - GNOME document viewer
evince-previewer (1) - show a printing preview of PostScript and PDF documents
evince-thumbnailer (1) - create png thumbnails from PostScript and PDF documents
exa (1)              - a modern replacement for ls
urxvt-example-refresh-hooks (1) - example of how to use refresh hooks
exiv2 (1)            - Image metadata manipulation tool
exo-open (1)         - Open URLs and launch preferred applications
expac (1)            - alpm data extraction utility
expand (1)           - convert tabs to spaces
expiry (1)           - check and enforce password expiration policy
expr (1)             - evaluate expressions
extlinux (1)         - install the SYSLINUX bootloader on an ext2/ext3/ext4/btrfs/xfs filesystem
extract_a52 (1)      - extract ATSC A/52 audio from a MPEG stream.
extract_dca (1)      - extract DTS Coherent Acoustics audio from a MPEG stream.
extract_dts (1)      - extract DTS Coherent Acoustics audio from a MPEG stream.
extract_mpeg2 (1)    - extract MPEG video streams from a multiplexed stream.
faac (1)             - open source MPEG-4 and MPEG-2 AAC encoder
faad (1)             - Process an Advanced Audio Codec stream
factor (1)           - factor numbers
fadvise (1)          - utility to use the posix_fadvise system call
faked (1)            - daemon that remembers fake ownership/permissions of files manipulated by fakeroot processes.
fakeroot (1)         - run a command in an environment faking root privileges for file manipulation
fallocate (1)        - preallocate or deallocate space to a file
false (1)            - do nothing, unsuccessfully
fatresize (1)        - Resize an FAT16/FAT32 volume non-destructively
fax2ps (1)           - convert a TIFF facsimile to compressed PostScript™
fax2tiff (1)         - create a TIFF Class F fax file from raw fax data
gnutls-cli (1)       - GnuTLS client
gnutls-cli-debug (1) - GnuTLS debug client
gnutls-serv (1)      - GnuTLS server
ntp-keygen (1)       - Create a NTP host key
ntp-wait (1)         - Wait for ntpd to stabilize the system clock
ntpd (1)             - NTP daemon program
ntpdc (1)            - vendor-specific NTPD control program
ntpq (1)             - standard NTP query program
ntptrace (1)         - Trace peers of an NTP server
ocsptool (1)         - GnuTLS OCSP tool
p11tool (1)          - GnuTLS PKCS #11 tool
psktool (1)          - GnuTLS PSK tool
sntp (1)             - standard Simple Network Time Protocol client program
tpmtool (1)          - GnuTLS TPM tool
update-leap (1)      - leap-seconds file manager/updater
fc-cache (1)         - build font information cache files
fc-cat (1)           - read font information cache files
fc-conflist (1)      - list the configuration files processed by Fontconfig
fc-list (1)          - list available fonts
fc-match (1)         - match available fonts
fc-pattern (1)       - parse and show pattern
fc-query (1)         - query font files
fc-scan (1)          - scan font files or directories
fc-validate (1)      - validate font files
fd (1)               - find entries in the filesystem
feh (1)              - image viewer and cataloguer
ffmpeg (1)           - ffmpeg video converter
ffmpeg-all (1)       - ffmpeg video converter
ffmpeg-bitstream-filters (1) - FFmpeg bitstream filters
ffmpeg-codecs (1)    - FFmpeg codecs
ffmpeg-devices (1)   - FFmpeg devices
ffmpeg-filters (1)   - FFmpeg filters
ffmpeg-formats (1)   - FFmpeg formats
ffmpeg-protocols (1) - FFmpeg protocols
ffmpeg-resampler (1) - FFmpeg Resampler
ffmpeg-scaler (1)    - FFmpeg video scaling and pixel format converter
ffmpeg-utils (1)     - FFmpeg utilities
ffmpegthumbnailer (1) - fast and lightweight video thumbnailer
ffplay (1)           - FFplay media player
ffplay-all (1)       - FFplay media player
ffprobe (1)          - ffprobe media prober
ffprobe-all (1)      - ffprobe media prober
fftw-wisdom (1)      - create wisdom (pre-optimized FFTs)
fftw-wisdom-to-conf (1) - generate FFTW wisdom (pre-planned transforms)
fftwf-wisdom (1)     - create wisdom (pre-optimized FFTs)
fftwl-wisdom (1)     - create wisdom (pre-optimized FFTs)
fftwq-wisdom (1)     - create wisdom (pre-optimized FFTs)
fgconsole (1)        - print the number of the active VT.
fido2-assert (1)     - get/verify a FIDO2 assertion
fido2-cred (1)       - make/verify a FIDO2 credential
fido2-token (1)      - find and manage a FIDO2 authenticator
file (1)             - determine file type
fincore (1)          - count pages of file contents in core
find (1)             - search for files in a directory hierarchy
find-debuginfo (1)   - finds debuginfo and processes it
fish (1)             - the friendly interactive shell
fish_indent (1)      - indenter and prettifier
fish_key_reader (1)  - explore what characters keyboard keys send
fix-qdf (1)          - repair PDF files in QDF form after editing
fixproc (1)          - Fixes a process by performing the specified action.
flac (1)             - Free Lossless Audio Codec
flatpak (1)          - Build, install and run applications and runtimes
flatpak-build (1)    - Build in a directory
flatpak-build-bundle (1) - Create a single-file bundle from a local repository
flatpak-build-commit-from (1) - Create new commits based on existing one (possibly from another repository)
flatpak-build-export (1) - Create a repository from a build directory
flatpak-build-finish (1) - Finalize a build directory
flatpak-build-import-bundle (1) - Import a file bundle into a local repository
flatpak-build-init (1) - Initialize a build directory
flatpak-build-sign (1) - Sign an application or runtime
flatpak-build-update-repo (1) - Create a repository from a build directory
flatpak-config (1)   - Manage configuration
flatpak-create-usb (1) - Copy apps and/or runtimes onto removable media.
flatpak-document-export (1) - Export a file to a sandboxed application
flatpak-document-info (1) - Show information about exported files
flatpak-document-unexport (1) - Stop exporting a file
flatpak-documents (1) - List exported files
flatpak-enter (1)    - Enter an application or runtime's sandbox
flatpak-history (1)  - Show history
flatpak-info (1)     - Show information about an installed application or runtime
flatpak-install (1)  - Install an application or runtime
flatpak-kill (1)     - Stop a running application
flatpak-list (1)     - List installed applications and/or runtimes
flatpak-make-current (1) - Make a specific version of an app current
flatpak-mask (1)     - Mask out updates and automatic installation
flatpak-override (1) - Override application requirements
flatpak-permission-remove (1) - Remove permissions
flatpak-permission-reset (1) - Reset permissions
flatpak-permission-set (1) - Set permissions
flatpak-permission-show (1) - Show permissions
flatpak-permissions (1) - List permissions
flatpak-pin (1)      - Pin runtimes to prevent automatic removal
flatpak-ps (1)       - Enumerate running instances
flatpak-remote-add (1) - Add a remote repository
flatpak-remote-delete (1) - Delete a remote repository
flatpak-remote-info (1) - Show information about an application or runtime in a remote
flatpak-remote-ls (1) - Show available runtimes and applications
flatpak-remote-modify (1) - Modify a remote repository
flatpak-remotes (1)  - List remote repositories
flatpak-repair (1)   - Repair a flatpak installation
flatpak-repo (1)     - Show information about a local repository
flatpak-run (1)      - Run an application or open a shell in a runtime
flatpak-search (1)   - Search for applications and runtimes
flatpak-spawn (1)    - Run commands in a sandbox
flatpak-uninstall (1) - Uninstall an application or runtime
flatpak-update (1)   - Update an application or runtime
flex (1)             - the fast lexical analyser generator
flock (1)            - manage locks from shell scripts
floppyd (1)          - floppy daemon for remote access to floppy drive
floppyd_installtest (1) - tests whether floppyd is installed and running
fmt (1)              - simple optimal text formatter
fold (1)             - wrap each input line to fit in specified width
font-manager (1)     - Simple font management for GTK+ desktop environments
foomatic-combo-xml (1) - <put a short description here>
foomatic-compiledb (1) - Compile the Foomatic printer/driver database
foomatic-configure (1) - the main configuration program of the foomatic printing system.
foomatic-perl-data (1) - generate Perl data structures from XML
foomatic-ppd-options (1) - show the PPD options
foomatic-ppdfile (1) - Generate a PPD file for a given printer/driver combo
foomatic-printjob (1) - manage printer jobs in a spooler-independent fashion
foomatic-rip (1)     - Universal print filter/RIP wrapper
free (1)             - Display amount of free and used memory in the system
fsck.erofs (1)       - tool to check the EROFS filesystem's integrity
lsb_release (1)      - manual page for FSG lsb_release v2.0
ftp (1)              - File Transfer Protocol client.
funzip (1)           - filter for extracting from a ZIP archive in a pipe
fuser (1)            - identify processes using files or sockets
fusermount (1)       - mount and unmount FUSE filesystems
fusermount3 (1)      - mount and unmount FUSE filesystems
fzf (1)              - a command-line fuzzy finder
fzf-tmux (1)         - open fzf in tmux split pane
g++ (1)              - GNU project C and C++ compiler
galculator (1)       - a GTK 2 / GTK 3 based scientific calculator
gamma4scanimage (1)  - create a gamma table for scanimage
gapplication (1)     - D-Bus application launcher
gawk (1)             - pattern scanning and processing language
gawkbug (1)          - report a bug in gawk
gcc (1)              - GNU project C and C++ compiler
gconftool-2 (1)      - GNOME configuration tool
gcov (1)             - coverage testing tool
gcov-dump (1)        - offline gcda and gcno profile dump tool
gcov-tool (1)        - offline gcda profile processing tool
gdbm_dump (1)        - dump a GDBM database to a file
gdbm_load (1)        - re-create a GDBM database from a dump file.
gdbmtool (1)         - examine and modify a GDBM database
gdbus (1)            - Tool for working with D-Bus objects
gdbus-codegen (1)    - D-Bus code and documentation generator
gdiffmk (1)          - mark differences between groff/nroff/troff files
gdk-pixbuf-csource (1) - C code generation utility for GdkPixbuf images
gdk-pixbuf-query-loaders (1) - GdkPixbuf loader registration utility
genbrk (1)           - Compiles ICU break iteration rules source files into binary data files
gencfu (1)           - Generates Unicode Confusable data files
gencnval (1)         - compile the converters aliases file
gendict (1)          - Compiles word list into ICU string trie dictionary
gendsa (1ssl)        - OpenSSL application commands
genpkey (1ssl)       - OpenSSL application commands
genrb (1)            - compile a resource bundle
genrsa (1ssl)        - OpenSSL application commands
getcifsacl (1)       - Userspace helper to display an ACL in a security descriptor for Common Internet File System (CIFS)
getent (1)           - get entries from Name Service Switch libraries
getfacl (1)          - get file access control lists
getfattr (1)         - get extended attributes of filesystem objects
gethostip (1)        - convert an IP address into various formats
getopt (1)           - parse command options (enhanced)
getsubids (1)        - get the subordinate id ranges for a user
getsysinfo (1)       - (unknown subject)
gettext (1)          - translate message
gettextize (1)       - install or upgrade gettext infrastructure
ghostscript (1)      - Ghostscript (PostScript and PDF language interpreter and previewer)
gif2rgb (1)          - convert images saved as GIF to 24-bit RGB triplets
gif2webp (1)         - Convert a GIF image to WebP
gifbg (1)            - generate a test-pattern GIF
gifbuild (1)         - dump GIF data in a textual format, or undump it to a GIF
gifclrmp (1)         - extract colormaps from GIF images
gifcolor (1)         - generate color test-pattern GIFs
gifecho (1)          - generate a GIF from ASCII text
giffix (1)           - attempt to fix up broken GIFs
gifhisto (1)         - make a color histogram from GIF colr frequencies
gifinto (1)          - save GIF on stdin to file if size over set threshold
giflib (1)           - GIFLIB utilities
giftext (1)          - dump GIF pixels and metadata as text
giftool (1)          - GIF transformation tool
gifwedge (1)         - create a GIF test pattern
gio (1)              - GIO commandline tool
gio-querymodules (1) - GIO module cache creation
git (1)              - the stupid content tracker
git-add (1)          - Add file contents to the index
git-am (1)           - Apply a series of patches from a mailbox
git-annotate (1)     - Annotate file lines with commit information
git-apply (1)        - Apply a patch to files and/or to the index
git-archimport (1)   - Import a GNU Arch repository into Git
git-archive (1)      - Create an archive of files from a named tree
git-bisect (1)       - Use binary search to find the commit that introduced a bug
git-blame (1)        - Show what revision and author last modified each line of a file
git-branch (1)       - List, create, or delete branches
git-bugreport (1)    - Collect information for user to file a bug report
git-bundle (1)       - Move objects and refs by archive
git-cat-file (1)     - Provide content or type and size information for repository objects
git-check-attr (1)   - Display gitattributes information
git-check-ignore (1) - Debug gitignore / exclude files
git-check-mailmap (1) - Show canonical names and email addresses of contacts
git-check-ref-format (1) - Ensures that a reference name is well formed
git-checkout (1)     - Switch branches or restore working tree files
git-checkout-index (1) - Copy files from the index to the working tree
git-cherry (1)       - Find commits yet to be applied to upstream
git-cherry-pick (1)  - Apply the changes introduced by some existing commits
git-citool (1)       - Graphical alternative to git-commit
git-clean (1)        - Remove untracked files from the working tree
git-clone (1)        - Clone a repository into a new directory
git-column (1)       - Display data in columns
git-commit (1)       - Record changes to the repository
git-commit-graph (1) - Write and verify Git commit-graph files
git-commit-tree (1)  - Create a new commit object
git-config (1)       - Get and set repository or global options
git-count-objects (1) - Count unpacked number of objects and their disk consumption
git-credential (1)   - Retrieve and store user credentials
git-credential-cache (1) - Helper to temporarily store passwords in memory
git-credential-cache--daemon (1) - Temporarily store user credentials in memory
git-credential-store (1) - Helper to store credentials on disk
git-cvsexportcommit (1) - Export a single commit to a CVS checkout
git-cvsimport (1)    - Salvage your data out of another SCM people love to hate
git-cvsserver (1)    - A CVS server emulator for Git
git-daemon (1)       - A really simple server for Git repositories
git-describe (1)     - Give an object a human readable name based on an available ref
git-diagnose (1)     - Generate a zip archive of diagnostic information
git-diff (1)         - Show changes between commits, commit and working tree, etc
git-diff-files (1)   - Compares files in the working tree and the index
git-diff-index (1)   - Compare a tree to the working tree or index
git-diff-tree (1)    - Compares the content and mode of blobs found via two tree objects
git-difftool (1)     - Show changes using common diff tools
git-fast-export (1)  - Git data exporter
git-fast-import (1)  - Backend for fast Git data importers
git-fetch (1)        - Download objects and refs from another repository
git-fetch-pack (1)   - Receive missing objects from another repository
git-filter-branch (1) - Rewrite branches
git-fmt-merge-msg (1) - Produce a merge commit message
git-for-each-ref (1) - Output information on each ref
git-for-each-repo (1) - Run a Git command on a list of repositories
git-format-patch (1) - Prepare patches for e-mail submission
git-fsck (1)         - Verifies the connectivity and validity of the objects in the database
git-fsck-objects (1) - Verifies the connectivity and validity of the objects in the database
git-fsmonitor--daemon (1) - A Built-in Filesystem Monitor
git-gc (1)           - Cleanup unnecessary files and optimize the local repository
git-get-tar-commit-id (1) - Extract commit ID from an archive created using git-archive
git-grep (1)         - Print lines matching a pattern
git-gui (1)          - A portable graphical interface to Git
git-hash-object (1)  - Compute object ID and optionally creates a blob from a file
git-help (1)         - Display help information about Git
git-hook (1)         - Run git hooks
git-http-backend (1) - Server side implementation of Git over HTTP
git-http-fetch (1)   - Download from a remote Git repository via HTTP
git-http-push (1)    - Push objects over HTTP/DAV to another repository
git-imap-send (1)    - Send a collection of patches from stdin to an IMAP folder
git-index-pack (1)   - Build pack index file for an existing packed archive
git-init (1)         - Create an empty Git repository or reinitialize an existing one
git-init-db (1)      - Creates an empty Git repository
git-instaweb (1)     - Instantly browse your working repository in gitweb
git-interpret-trailers (1) - Add or parse structured information in commit messages
git-log (1)          - Show commit logs
git-ls-files (1)     - Show information about files in the index and the working tree
git-ls-remote (1)    - List references in a remote repository
git-ls-tree (1)      - List the contents of a tree object
git-mailinfo (1)     - Extracts patch and authorship from a single e-mail message
git-mailsplit (1)    - Simple UNIX mbox splitter program
git-maintenance (1)  - Run tasks to optimize Git repository data
git-merge (1)        - Join two or more development histories together
git-merge-base (1)   - Find as good common ancestors as possible for a merge
git-merge-file (1)   - Run a three-way file merge
git-merge-index (1)  - Run a merge for files needing merging
git-merge-one-file (1) - The standard helper program to use with git-merge-index
git-merge-tree (1)   - Perform merge without touching index or working tree
git-mergetool (1)    - Run merge conflict resolution tools to resolve merge conflicts
git-mergetool--lib (1) - Common Git merge tool shell scriptlets
git-mktag (1)        - Creates a tag object with extra validation
git-mktree (1)       - Build a tree-object from ls-tree formatted text
git-multi-pack-index (1) - Write and verify multi-pack-indexes
git-mv (1)           - Move or rename a file, a directory, or a symlink
git-name-rev (1)     - Find symbolic names for given revs
git-notes (1)        - Add or inspect object notes
git-p4 (1)           - Import from and submit to Perforce repositories
git-pack-objects (1) - Create a packed archive of objects
git-pack-redundant (1) - Find redundant pack files
git-pack-refs (1)    - Pack heads and tags for efficient repository access
git-patch-id (1)     - Compute unique ID for a patch
git-prune (1)        - Prune all unreachable objects from the object database
git-prune-packed (1) - Remove extra objects that are already in pack files
git-pull (1)         - Fetch from and integrate with another repository or a local branch
git-push (1)         - Update remote refs along with associated objects
git-quiltimport (1)  - Applies a quilt patchset onto the current branch
git-range-diff (1)   - Compare two commit ranges (e.g. two versions of a branch)
git-read-tree (1)    - Reads tree information into the index
git-rebase (1)       - Reapply commits on top of another base tip
git-receive-pack (1) - Receive what is pushed into the repository
git-reflog (1)       - Manage reflog information
git-remote (1)       - Manage set of tracked repositories
git-remote-ext (1)   - Bridge smart transport to external command.
git-remote-fd (1)    - Reflect smart transport stream back to caller
git-repack (1)       - Pack unpacked objects in a repository
git-replace (1)      - Create, list, delete refs to replace objects
git-request-pull (1) - Generates a summary of pending changes
git-rerere (1)       - Reuse recorded resolution of conflicted merges
git-reset (1)        - Reset current HEAD to the specified state
git-restore (1)      - Restore working tree files
git-rev-list (1)     - Lists commit objects in reverse chronological order
git-rev-parse (1)    - Pick out and massage parameters
git-revert (1)       - Revert some existing commits
git-rm (1)           - Remove files from the working tree and from the index
git-send-email (1)   - Send a collection of patches as emails
git-send-pack (1)    - Push objects over Git protocol to another repository
git-sh-i18n (1)      - Git's i18n setup code for shell scripts
git-sh-i18n--envsubst (1) - Git's own envsubst(1) for i18n fallbacks
git-sh-setup (1)     - Common Git shell script setup code
git-shell (1)        - Restricted login shell for Git-only SSH access
git-shortlog (1)     - Summarize 'git log' output
git-show (1)         - Show various types of objects
git-show-branch (1)  - Show branches and their commits
git-show-index (1)   - Show packed archive index
git-show-ref (1)     - List references in a local repository
git-sparse-checkout (1) - Reduce your working tree to a subset of tracked files
git-stage (1)        - Add file contents to the staging area
git-stash (1)        - Stash the changes in a dirty working directory away
git-status (1)       - Show the working tree status
git-stripspace (1)   - Remove unnecessary whitespace
git-submodule (1)    - Initialize, update or inspect submodules
git-subtree (1)      - Merge subtrees together and split repository into subtrees
git-svn (1)          - Bidirectional operation between a Subversion repository and Git
git-switch (1)       - Switch branches
git-symbolic-ref (1) - Read, modify and delete symbolic refs
git-tag (1)          - Create, list, delete or verify a tag object signed with GPG
git-unpack-file (1)  - Creates a temporary file with a blob's contents
git-unpack-objects (1) - Unpack objects from a packed archive
git-update-index (1) - Register file contents in the working tree to the index
git-update-ref (1)   - Update the object name stored in a ref safely
git-update-server-info (1) - Update auxiliary info file to help dumb servers
git-upload-archive (1) - Send archive back to git-archive
git-upload-pack (1)  - Send objects packed back to git-fetch-pack
git-var (1)          - Show a Git logical variable
git-verify-commit (1) - Check the GPG signature of commits
git-verify-pack (1)  - Validate packed Git archive files
git-verify-tag (1)   - Check the GPG signature of tags
git-version (1)      - Display version information about Git
git-web--browse (1)  - Git helper script to launch a web browser
git-whatchanged (1)  - Show logs with difference each commit introduces
git-worktree (1)     - Manage multiple working trees
git-write-tree (1)   - Create a tree object from the current index
gitk (1)             - The Git repository browser
gitweb (1)           - Git web interface (web frontend to Git repositories)
gksu (1)             - GTK+ frontend for su and sudo
gksu-properties (1)  - Configure the behaviour of gksu
gksudo (1)           - GTK+ frontend for su and sudo
glib-compile-resources (1) - GLib resource compiler
glib-compile-schemas (1) - GSettings schema compiler
glib-genmarshal (1)  - C code marshaller generation utility for GLib closures
glib-gettextize (1)  - gettext internationalization utility
glib-mkenums (1)     - C language enum description generation utility
glilypond (1)        - integrate lilypond parts into groff
gnome-dictionary (1) - Look up words in online dictionaries
gnome-disk-image-mounter (1) - Attach and mount disk images
gnome-disks (1)      - the GNOME Disks application
gnome-keyring (1)    - The gnome-keyring commandline tool
gnome-keyring-3 (1)  - The gnome-keyring commandline tool
gnome-keyring-daemon (1) - The gnome-keyring daemon
gnome-logs (1)       - log viewer for the systemd journal
gnome-screenshot (1) - capture the screen, a window, or an user-defined area and save the snapshot image to a file.
gnome-software (1)   - Install apps
gobject-query (1)    - display a tree of types
gpasswd (1)          - administer /etc/group and /etc/gshadow
gperl (1)            - groff preprocessor for Perl parts in roff files
gpg (1)              - OpenPGP encryption and signing tool
gpg-agent (1)        - Secret key management for GnuPG
gpg-check-pattern (1) - Check a passphrase on stdin against the patternfile
gpg-connect-agent (1) - Communicate with a running agent
gpg-preset-passphrase (1) - Put a passphrase into gpg-agent's cache
gpg-wks-client (1)   - Client for the Web Key Service
gpg-wks-server (1)   - Server providing the Web Key Service
gpgconf (1)          - Modify .gnupg home directories
gpgparsemail (1)     - Parse a mail message into an annotated format
gpgrt-config (1)     - Helper script to get information about the installed version of gpg libraries
gpgsm (1)            - CMS encryption and signing tool
gpgtar (1)           - Encrypt or sign files into an archive
gpgv (1)             - Verify OpenPGP signatures
gpick (1)            - advanced color picker
gpinyin (1)          - use Hanyu Pinyin Chinese in roff
gpm-root (1)         - a default handler for gpm, used to draw menus on the root window
gprof (1)            - display call graph profile data
gprofng (1)          - GNU gprofng
grab_color_image (1) - grab an image using libdc1394
grab_gray_image (1)  - grab an image using libdc1394
grab_partial_image (1) - grab a partial image using libdc1394
grap2graph (1)       - convert a GRAP diagram into a cropped image
grep (1)             - print lines that match patterns
gresource (1)        - GResource tool
grn (1)              - groff preprocessor for gremlin files
grodvi (1)           - convert groff output to TeX DVI format
groff (1)            - front-end for the groff document formatting system
groffer (1)          - display groff files and man pages on X and tty
grog (1)             - guess options for a following groff command
grohtml (1)          - HTML driver for groff
grolbp (1)           - groff driver for Canon CAPSL printers (LBP-4 and LBP-8 series laser printers)
grolj4 (1)           - groff driver for HP LaserJet 4 family
gropdf (1)           - PDF driver for groff
grops (1)            - PostScript driver for groff
grotty (1)           - groff driver for typewriter-like devices
groups (1)           - display current group names
grub-customizer (1)  - a graphical grub2/burg editor
grub-editenv (1)     - edit GRUB environment block
grub-file (1)        - check file type
grub-fstest (1)      - debug tool for GRUB filesystem drivers
grub-glue-efi (1)    - generate a fat binary for EFI
grub-kbdcomp (1)     - generate a GRUB keyboard layout file
grub-menulst2cfg (1) - transform legacy menu.lst into grub.cfg
grub-mkfont (1)      - make GRUB font files
grub-mkimage (1)     - make a bootable image of GRUB
grub-mklayout (1)    - generate a GRUB keyboard layout file
grub-mknetdir (1)    - prepare a GRUB netboot directory.
grub-mkpasswd-pbkdf2 (1) - generate hashed password for GRUB
grub-mkrelpath (1)   - make a system path relative to its root
grub-mkrescue (1)    - make a GRUB rescue image
grub-mkstandalone (1) - make a memdisk-based GRUB image
grub-mount (1)       - export GRUB filesystem with FUSE
grub-render-label (1) - generate a .disk_label for Apple Macs.
grub-script-check (1) - check grub.cfg for syntax errors
grub-syslinux2cfg (1) - transform syslinux config into grub.cfg
gs (1)               - Ghostscript (PostScript and PDF language interpreter and previewer)
gsbj (1)             - Format and print text for BubbleJet printer using ghostscript
gsdj (1)             - Format and print text for DeskJet printer using ghostscript
gsdj500 (1)          - Format and print text for DeskJet 500 BubbleJet using ghostscript
gsettings (1)        - GSettings configuration tool
gsettings-data-convert (1) - GConf to GSettings data migration
gsettings-schema-convert (1) - GConf to GSettings schema conversion
gsf (1)              - archiving utility using the G Structured File library
gsf-office-thumbnailer (1) - office files thumbnailer for the GNOME desktop
gsf-vba-dump (1)     - extract Visual Basic for Applications macros
gsl-config (1)       - script to get version number and compiler flags of the installed GSL library
gsl-histogram (1)    - compute histogram of data on stdin
gsl-randist (1)      - generate random samples from various distributions
gslj (1)             - Format and print text for LaserJet printer using ghostscript
gslp (1)             - Format and print text using ghostscript
gsnd (1)             - Run ghostscript (PostScript and PDF engine) without display
gssdp-device-sniffer (1) - display SSDP packets on your network
gst-device-monitor-1.0 (1) - Simple command line testing tool for GStreamer device monitors
gst-discoverer-1.0 (1) - Display file metadata and stream information
gst-inspect-1.0 (1)  - print info about a GStreamer plugin or element
gst-launch-1.0 (1)   - build and run a GStreamer pipeline
gst-play-1.0 (1)     - Simple command line playback testing tool
gst-stats-1.0 (1)    - print info gathered from a GStreamer log file
gst-typefind-1.0 (1) - print Media type of file
gtester (1)          - test running utility
gtester-report (1)   - test report formatting utility
gtf (1)              - calculate VESA GTF mode lines
gtk-builder-tool (1) - GtkBuilder file utility
gtk-encode-symbolic-svg (1) - Symbolic icon conversion utility
gtk-launch (1)       - Launch an application
gtk-query-immodules-3.0 (1) - Input method module registration utility
gtk-query-settings (1) - Utility to print name and value of all GtkSettings properties
gtk-update-icon-cache (1) - Icon theme caching utility
gtk4-broadwayd (1)   - The Broadway display server
gtk4-builder-tool (1) - GtkBuilder File Utility
gtk4-encode-symbolic-svg (1) - Symbolic icon conversion utility
gtk4-launch (1)      - Launch an application
gtk4-query-settings (1) - Print name and value of GTK settings
gtk4-update-icon-cache (1) - Icon theme caching utility
guile (1)            - The GNU Project Extension Language
gunzip (1)           - compress or expand files
gupnp-binding-tool-1.6 (1) - creates C convenience wrappers for UPnP services
guvcview (1)         - GTK+ base UVC Viewer
gvfsd (1)            - Main daemon for gvfs
gvfsd-fuse (1)       - Fuse daemon for gvfs
gvfsd-metadata (1)   - Metadata daemon for gvfs
gvnccapture (1)      - VNC screenshot capture
gxditview (1)        - display groff intermediate output files
gzexe (1)            - compress executable files in place
gzip (1)             - compress or expand files
h2ph (1perl)         - convert .h C header files to .ph Perl header files
h2xs (1perl)         - convert .h C header files to Perl extensions
hardlink (1)         - link multiple copies of a file
head (1)             - output the first part of files
heif-convert (1)     - convert HEIC/HEIF image
heif-enc (1)         - convert image to HEIC/HEIF
heif-info (1)        - show information on HEIC/HEIF file
heif-thumbnailer (1) - create thumbnails from HEIC/HEIF files
hexdump (1)          - display file contents in hexadecimal, decimal, octal, or ascii
hmac256 (1)          - Compute an HMAC-SHA-256 MAC
homectl (1)          - Create, remove, change or inspect home directories
host (1)             - DNS lookup utility
hostid (1)           - print the numeric identifier for the current host
hostname (1)         - show or set system host name
hostnamectl (1)      - Control the system hostname
hpftodit (1)         - create font description files for use with groff -Tlj4
htdbm (1)            - Manipulate DBM password databases
htdigest (1)         - manage user files for digest authentication
htop (1)             - interactive process viewer
htpasswd (1)         - Manage user files for basic authentication
http (1)             - (unknown subject)
httpie (1)           - (unknown subject)
https (1)            - (unknown subject)
httxt2dbm (1)        - Generate dbm files for use with RewriteMap
hunspell (1)         - spell checker, stemmer and morphological analyzer
hunzip (1)           - decompress and decrypt hzip files to the standard output
hwloc-annotate (1)   - Modify attributes in a XML topology
hwloc-bind (1)       - Launch a command that is bound to specific processors and/or memory, or consult the binding of an existing program
hwloc-calc (1)       - Operate on cpu mask strings and objects
hwloc-compress-dir (1) - Compress a directory of XML topologies
hwloc-diff (1)       - Compute differences between two XML topologies
hwloc-distrib (1)    - Build a number of cpu masks distributed on the system
hwloc-dump-hwdata (1) - Dump topology and locality information from hardware tables
hwloc-gather-cpuid (1) - Dumps the relevant x86 cpuid values for later (possibly offline) usage
hwloc-gather-topology (1) - Saves the relevant Linux and x86 topology files and the lstopo textual and XML outputs for later (possibly offline) usage
hwloc-info (1)       - Show some information about some objects or about a topology or about support features
hwloc-ls (1)         - Show the topology of the system
hwloc-patch (1)      - Apply a topology difference to an existing XML topology
hwloc-ps (1)         - List currently-running processes or threads that are bound
hzip (1)             - compress and encrypt dictionary files
i3 (1)               - an improved dynamic, tiling window manager
i3-config-wizard (1) - creates a keysym based config based on your layout
i3-dmenu-desktop (1) - run .desktop files with dmenu
i3-dump-log (1)      - dumps the i3 SHM log
i3-input (1)         - interactively take a command for i3 window manager
i3-migrate-config-to-v4 (1) - migrates your i3 config file
i3-msg (1)           - send messages to i3 window manager
i3-nagbar (1)        - displays an error bar on top of your screen
i3-save-tree (1)     - save (parts of) the layout tree for restoring
i3-sensible-editor (1) - launches $EDITOR with fallbacks
i3-sensible-pager (1) - launches $PAGER with fallbacks
i3-sensible-terminal (1) - launches $TERMINAL with fallbacks
i3bar (1)            - xcb-based status- and workspace-bar
i3blocks (1)         - A feed generator for text based status bars
i3lock (1)           - improved screen locker
i3status (1)         - Generates a status line for i3bar, dzen2, xmobar or lemonbar
iceauth (1)          - ICE authority file utility
iconv (1)            - convert text from one character encoding to another
icu-config (1)       - output ICU build options
icuexportdata (1)    - Writes text files with Unicode properties data from ICU.
id (1)               - print real and effective user and group IDs
identify (1)         - describes the format and characteristics of one or more image files.
idevice_id (1)       - List attached devices or print device name of given device.
idevicebackup (1)    - Create or restore backup for devices.
idevicebackup2 (1)   - Create or restore backups for devices running iOS 4 or later.
idevicecrashreport (1) - Retrieve crash reports from a device.
idevicedate (1)      - Display the current date or set it on a device.
idevicedebug (1)     - Interact with the debugserver service of a device.
idevicedebugserverproxy (1) - Remote debugging proxy.
idevicediagnostics (1) - Interact with the diagnostics interface of a device.
ideviceenterrecovery (1) - Make a device enter recovery mode.
ideviceimagemounter (1) - Mount disk images on the device.
ideviceinfo (1)      - Show information about the first connected device.
idevicename (1)      - Display the device name or set it to NAME if specified.
idevicenotificationproxy (1) - Post or observe notifications on a device.
idevicepair (1)      - Manage host pairings with devices and usbmuxd.
ideviceprovision (1) - Manage provisioning profiles on a device.
idevicescreenshot (1) - Gets a screenshot from the connected device.
idevicesetlocation (1) - Simulate location on iOS device.
idevicesyslog (1)    - Relay syslog of a connected device.
idn (1)              - Internationalized Domain Names command line tool
idn2 (1)             - Libidn2 Internationalized Domain Names conversion tool
iecset (1)           - Set or dump IEC958 status bits
ifnames (1)          - Extract CPP conditionals from a set of files
ijs-config (1)       - script to get information about the installed version of ijs
ImageMagick (1)      - a free software suite for the creation, modification and display of bitmap images.
img2sixel (1)        - image converter to DEC SIXEL graphics
img2txt (1)          - convert images to various text-based coloured files
img2webp (1)         - create animated WebP file from a sequence of input images.
imgcmp (1)           - Image comparison utility
imginfo (1)          - Image information utility
import (1)           - saves any visible window on an X server and outputs it as an image file. You can capture a single window, the entire screen, or any rectangular portion of the screen....
indxbib (1)          - make inverted index for bibliographic databases
inetcat (1)          - Opens a read/write interface via STDIN/STDOUT to a TCP port on a usbmux device
info (1)             - read Info documents
info (1ssl)          - OpenSSL application commands
infocmp (1m)         - compare or print out terminfo descriptions
infotocap (1m)       - convert a terminfo description into a termcap description
init (1)             - systemd system and service manager
install (1)          - copy files and set attributes
install-info (1)     - update info/dir entries
instmodsh (1perl)    - A shell to examine installed modules
intro (1)            - introduction to user commands
inxi (1)             - Command line system information script for console and IRC
ionice (1)           - set or get process I/O scheduling class and priority
ipcmk (1)            - make various IPC resources
ipcrm (1)            - remove certain IPC resources
ipcs (1)             - show information on IPC facilities
ippeveprinter (1)    - an ipp everywhere printer application for cups
ippfind (1)          - find internet printing protocol printers
ipptool (1)          - perform internet printing protocol requests
iproxy (1)           - A proxy that binds local TCP ports to be forwarded to the specified ports on a usbmux device
iptables-xml (1)     - Convert iptables-save format to XML
ipython (1)          - Tools for Interactive Computing in Python.
ir-ctl (1)           - a swiss-knife tool to handle raw IR and to set lirc options
ir-keytable (1)      - a swiss-knife tool to handle Remote Controllers.
irb (1)              - Interactive Ruby Shell
irqtop (1)           - utility to display kernel interrupt information
iso-info (1)         - shows Information about an ISO 9660 image
iso-read (1)         - reads portions of an ISO 9660 image
isohybrid (1)        - Post-process an ISO 9660 image for booting as a hard disk.
isotest (1)          - ISO testing
jackd (1)            - JACK Audio Connection Kit sound server
jasper (1)           - File format converter specialized in JPEG-2000 encoding
jbig2dec (1)         - File format converter specialized in JBIG2 decoding
python-jedi (1)      - Jedi DocumentationGitHub starsThe percentage of open issues and pull requestsThe resolution time is the median time an issue or pull request stays open.TestsCoverage ...
jiv (1)              - Image display utility
join (1)             - join lines of two files on a common field
journalctl (1)       - Print log entries from the systemd journal
jpeg2yuv (1)         - Convert jpeg images to the yuv format.
jpegtran (1)         - lossless transformation of JPEG files
jpgicc (1)           - little cms ICC profile applier for JPEG.
jq (1)               - Command-line JSON processor
json-glib-format (1) - JSON-GLib formatting tool
json-glib-validate (1) - JSON-GLib validation tool
json_pp (1perl)      - JSON::PP command utility
k5srvutil (1)        - host key table (keytab) manipulation utility
kadmin (1)           - Kerberos V5 database administration program
katalyzer (1)        - analyzes Kate streams and displays various information about them.
katedec (1)          - decodes Kate streams to a textual description
kateenc (1)          - create Kate streams from text input
kbd_mode (1)         - report or set the keyboard mode
kbdinfo (1)          - read information about keyboard state
kdestroy (1)         - destroy Kerberos tickets
kdf (1ssl)           - OpenSSL application commands
keyctl (1)           - key management facility control
urxvt-keysym-list (1) - implement the "list" keysym expansion.
kill (1)             - terminate a process
killall (1)          - kill processes by name
kinit (1)            - obtain and cache Kerberos ticket-granting ticket
klist (1)            - list cached Kerberos tickets
koi8rxterm (1)       - X terminal emulator for KOI8-R environments
kpackagetool5 (1)    - Install, list, remove Plasma packages
kpasswd (1)          - change a user's Kerberos password
krb5-config (1)      - tool for linking against MIT Kerberos libraries
ksu (1)              - Kerberized super-user
kswitch (1)          - switch primary ticket cache
ktutil (1)           - Kerberos keytab file maintenance utility
urxvt-kuake (1)      - kuake-like hotkey terminal
kvno (1)             - print key version numbers of Kerberos principals
kwallet-query (1)    - KDE Wallet command-line manipulation tool
l2ping (1)           - Send L2CAP echo request and receive answer
lame (1)             - create mp3 audio files
laptop-detect (1)    - attempt to detect a laptop
last (1)             - show a listing of last logged in users
lastb (1)            - show a listing of last logged in users
lav2mpeg (1)         - easy conversion of lav files to mpeg
lav2wav (1)          - Extract the audio out of MJPEG container files to stdout
lav2yuv (1)          - Convert a MJPEG file to raw yuv
lavpipe (1)          - creates raw YUV streams from pipe list scripts
lavplay (1)          - Playback and edit MJPEG video
lavrec (1)           - Record MJPEG-video from a zoran/video4linux-device
lavtrans (1)         - Convert MJPEG videos to other MJPEG video formats
lbunzip2 (1)         - parallel bzip2 utility
lbzcat (1)           - parallel bzip2 utility
lbzip2 (1)           - parallel bzip2 utility
ld (1)               - The GNU linker
ldbadd (1)           - Command-line utility for adding records to an LDB
ldbdel (1)           - Command-line program for deleting LDB records
ldbedit (1)          - Edit LDB databases using your preferred editor
ldbmodify (1)        - Modify records in a LDB database
ldbrename (1)        - Edit LDB databases using your favorite editor
ldbsearch (1)        - Search for records in a LDB database
ldd (1)              - print shared object dependencies
ldns-chaos (1)       - give some information about a nameserver
ldns-compare-zones (1) - read and compare two zonefiles and print differences
ldns-config (1)      - show compiler and linker flags for ldns usage.
ldns-dane (1)        - verify or create TLS authentication with DANE (RFC6698)
ldns-gen-zone (1)    - read a zonefile and print it while adding DS records and extra RR's
ldns-key2ds (1)      - transform a DNSKEY RR to a DS RR
ldns-keyfetcher (1)  - retrieve the DNSSEC DNSKEYs for a zone
ldns-keygen (1)      - generate a DNSSEC key pair
ldns-mx (1)          - print out the mx record(s) for a domain
ldns-notify (1)      - notify DNS servers that updates are available
ldns-nsec3-hash (1)  - print out the NSEC3 hash for a domain name
ldns-read-zone (1)   - read a zonefile and print it
ldns-resolver (1)    - tries to create a resolver from a resolv.conf file.
ldns-revoke (1)      - sets the revoke bit of a DNSKEY
ldns-rrsig (1)       - print out the inception and expiration dates in human readable form
ldns-signzone (1)    - sign a zonefile with DNSSEC data
ldns-test-edns (1)   - test if dns cache supports EDNS and DNSSEC.
ldns-testns (1)      - simple fake nameserver tool
ldns-update (1)      - send a dynamic update packet
ldns-verify-zone (1) - read a DNSSEC signed zone and verify it.
ldns-version (1)     - print out the version of the ldns-library and tools on this system
ldns-walk (1)        - Retrieve the contents of a DNSSEC signed zone
ldns-zcat (1)        - reunite (z)split up a zone files
ldns-zsplit (1)      - split up a zone file
ldnsd (1)            - simple daemon example code
less (1)             - opposite of more
lessecho (1)         - expand metacharacters
lesskey (1)          - customize key bindings for less
lexgrog (1)          - parse header information in man pages
libevdev-tweak-device (1) - modify an evdev kernel device
libinput (1)         - tool to interface with libinput
libinput-analyze (1) - analyze device data
libinput-analyze-per-slot-delta (1) - analyze the per-event delta movement for touch slots
libinput-analyze-recording (1) - analyze a device recording
libinput-analyze-touch-down-state (1) - analyze the touch states
libinput-debug-events (1) - debug helper for libinput
libinput-debug-gui (1) - visual debug helper for libinput
libinput-debug-tablet (1) - debug and visualize tablet axes
libinput-list-devices (1) - list local devices as recognized by libinput and default values of their configuration
libinput-list-kernel-devices (1) - list all kernel input devices
libinput-measure (1) - measure properties of devices
libinput-measure-fuzz (1) - measure absolute axis fuzz
libinput-measure-touch-size (1) - measure touch size and orientation of devices
libinput-measure-touchpad-pressure (1) - measure pressure properties of devices
libinput-measure-touchpad-size (1) - measure the size of a touchpad
libinput-measure-touchpad-tap (1) - measure tap-to-click properties of devices
libinput-quirks (1)  - quirk debug helper for libinput
libinput-quirks-list (1) - quirk debug helper for libinput
libinput-quirks-validate (1) - quirk debug helper for libinput
libinput-record (1)  - record kernel events
libinput-replay (1)  - replay kernel events from a recording
libinput-test (1)    - test various components of libinput itself
libinput-test-suite (1) - run the libinput test suite
libnetcfg (1perl)    - configure libnet
libtool (1)          - manual page for libtool 2.4.7.4-1ec8f-dirty
libtoolize (1)       - manual page for libtoolize 2.4.7.4-1ec8f-dirty
libuv (1)            - libuv documentation
libwacom-list-devices (1) - utility to list supported tablet devices
libwacom-list-local-devices (1) - utility to list tablet devices
link (1)             - call the link function to create a link to a file
linkicc (1)          - little cms device link generator.
lkbib (1)            - search bibliographic databases
ln (1)               - make links between files
loadkeys (1)         - load keyboard translation tables
locale (1)           - get locale-specific information
localectl (1)        - Control the system locale and keyboard layout settings
localedef (1)        - compile locale definition files
locate (1)           - find files by name
logger (1)           - enter messages into the system log
login (1)            - begin session on the system
loginctl (1)         - Control the systemd login manager
logname (1)          - print user's login name
logresolve (1)       - Resolve IP-addresses to hostnames in Apache log files
look (1)             - display lines beginning with a given string
lookbib (1)          - search bibliographic databases
lp (1)               - print files
lpoptions (1)        - display or set printer options and defaults
lpq (1)              - show printer queue status
lpr (1)              - print files
lprm (1)             - cancel print jobs
lpstat (1)           - print cups status information
lrunzip (1)          - Uncompress LRZ files
lrz (1)              - gzip compatible command line variant of lrzip
lrzcat (1)           - Uncompress LRZ files to STDOUT
lrzip (1)            - a large-file compression program
lrztar (1)           - Directory wrapper for lrzip
lrzuntar (1)         - Extract whole tarball from .tar.lrz files
ls (1)               - list directory contents
lsattr (1)           - list file attributes on a Linux second extended file system
lscp (1)             - list NILFS2 checkpoints
lscpu (1)            - display information about the CPU architecture
lsd (1)              - LSDeluxe
lsfd (1)             - list file descriptors
lshw (1)             - list hardware
lsinitcpio (1)       - Examine an initramfs
lsipc (1)            - show information on IPC facilities currently employed in the system
lsirq (1)            - utility to display kernel interrupt information
lslogins (1)         - display information about known users in the system
lsmem (1)            - list the ranges of available memory with their online status
lss16toppm (1)       - Convert an LSS-16 image to PPM
lssu (1)             - list usage state of NILFS2 segments
lstopo (1)           - Show the topology of the system
lstopo-no-graphics (1) - Show the topology of the system
lua (1)              - Lua interpreter
lua5.1 (1)           - Lua interpreter
lua5.2 (1)           - Lua interpreter
lua5.3 (1)           - Lua interpreter
luac (1)             - Lua compiler
luac5.1 (1)          - Lua compiler
luac5.2 (1)          - Lua compiler
luac5.3 (1)          - Lua compiler
luajit (1)           - Just-In-Time Compiler for the Lua Language
luit (1)             - Locale and ISO 2022 support for Unicode terminals
lv2apply (1)         - apply an LV2 plugin to an audio file
lv2bench (1)         - benchmark all installed and supported LV2 plugins
lv2info (1)          - print information about an installed LV2 plugin
lv2ls (1)            - list all installed LV2 plugins
lwp-download (1p)    - Fetch large files from the web
lwp-dump (1p)        - See what headers and content is returned for a URL
lwp-mirror (1p)      - Simple mirror utility
lwp-request (1p)     - Simple command line user agent
lxappearance (1)     - GTK+ theme switcher
lz4 (1)              - lz4, unlz4, lz4cat - Compress or decompress .lz4 files
lz4c (1)             - lz4, unlz4, lz4cat - Compress or decompress .lz4 files
lz4cat (1)           - lz4, unlz4, lz4cat - Compress or decompress .lz4 files
lzcat (1)            - Compress or decompress .xz and .lzma files
lzcmp (1)            - compare compressed files
lzdiff (1)           - compare compressed files
lzegrep (1)          - search compressed files for a regular expression
lzfgrep (1)          - search compressed files for a regular expression
lzgrep (1)           - search compressed files for a regular expression
lzless (1)           - view xz or lzma compressed (text) files
lzma (1)             - Compress or decompress .xz and .lzma files
lzmadec (1)          - Small .xz and .lzma decompressors
lzmainfo (1)         - show information stored in the .lzma file header
lzmore (1)           - view xz or lzma compressed (text) files
lzop (1)             - compress or expand files
m4 (1)               - macro processor
mac (1ssl)           - OpenSSL application commands
machinectl (1)       - Control the systemd machine manager
magick (1)           - convert between image formats as well as resize an image, blur, crop, despeckle, dither, draw on, flip, join, re-sample, and much more.
Magick++-config (1)  - get information about the installed version of Magick++
magick-script (1)    - scripting language that converts between image formats as well as resize an image, blur, crop, despeckle, dither, draw on, flip, join, re-sample, and much more.
MagickCore-config (1) - get information about the installed version of ImageMagick
MagickWand-config (1) - get information about the installed version of the Magick Wand
make (1)             - GNU Make utility to maintain groups of programs
makeconv (1)         - compile a converter table
makeinfo (1)         - translate Texinfo documents
makepkg-template (1) - package build templating utility
man (1)              - an interface to the system reference manuals
man-recode (1)       - convert manual pages to another encoding
manconv (1)          - convert manual page from one encoding to another
manpath (1)          - determine search path for manual pages
urxvt-matcher (1)    - match strings in terminal output and change their rendition
mattrib (1)          - change MSDOS file attribute flags
mbadblocks (1)       - tests a floppy disk, and marks the bad blocks in the FAT
mbim-network (1)     - Simple network management of MBIM devices
mbimcli (1)          - Control MBIM devices
mc (1)               - Visual shell for Unix-like systems.
mcat (1)             - dump raw disk image
mcd (1)              - change MSDOS directory
mcedit (1)           - Internal file editor of GNU Midnight Commander.
mcookie (1)          - generate magic cookies for xauth
mcopy (1)            - copy MSDOS files to/from Unix
mcview (1)           - Internal file viewer of GNU Midnight Commander.
md2html (1)          - convert Markdown to HTML
md5sum (1)           - compute and check MD5 message digest
mdb_copy (1)         - LMDB environment copy tool
mdb_dump (1)         - LMDB environment export tool
mdb_load (1)         - LMDB environment import tool
mdb_stat (1)         - LMDB environment status tool
mdel (1)             - delete an MSDOS file
mdeltree (1)         - recursively delete an MSDOS directory and its contents
mdig (1)             - DNS pipelined lookup utility
mdir (1)             - display an MSDOS directory
mdu (1)              - display the amount of space occupied by an MSDOS directory
meld (1)             - Visual diff and merge tool for the GNOME Desktop
memdiskfind (1)      - Simple utility to find a resident memdisk instance.
memusage (1)         - profile memory usage of a program
memusagestat (1)     - generate graphic from memory profiling data
menulibre (1)        - advanced fd.o compliant menu editor
menulibre-menu-validate (1) - display GMenu debug output
mesg (1)             - display (or do not display) messages from other users
meson (1)            - a high productivity build system
metaflac (1)         - program to list, add, remove, or edit metadata in one or more FLAC files.
mev (1)              - a program to report mouse events
mformat (1)          - add an MSDOS filesystem to a low-level formatted floppy disk
mib2c (1)            - generate template code for extending the agent
mib2c-update (1)     - script to merge custom code into updated mib2c code
minfo (1)            - print the parameters of a MSDOS filesystem
mk_cmds (1)          - error table compiler
mk_isdnhwdb (1)      - (unknown subject)
mkdir (1)            - make directories
mkfifo (1)           - make FIFOs (named pipes)
mkfontdir (1)        - create an index of X font files in a directory
mkfontscale (1)      - create an index of scalable font files for X
mkfs.erofs (1)       - tool to create an EROFS filesystem
mkmanifest (1)       - makes list of file names and their DOS 8+3 equivalent
mknod (1)            - make block or character special files
mkrfc2734 (1)        - Make Linux 2.4 IP over IEEE 1394 capable.
mksquashfs (1)       - tool to create and append to squashfs filesystems
mktemp (1)           - create a temporary file or directory
mlabel (1)           - make an MSDOS volume label
mmcli (1)            - Control and monitor the ModemManager
mmd (1)              - make an MSDOS subdirectory
mmount (1)           - mount an MSDOS disk
mmove (1)            - move or rename an MSDOS file or subdirectory
mmroff (1)           - cross-reference preprocessor for GNU roff mm macro package
modutil (1)          - Manage PKCS #11 module information within the security module database.
mogrify (1)          - resize an image, blur, crop, despeckle, dither, draw on, flip, join, re-sample, and much more. Mogrify overwrites the original image file, whereas, convert(1) writes ...
montage (1)          - create a composite image by combining several separate images. The images are tiled on the composite image optionally adorned with a border, frame, image name, and more.
more (1)             - display the contents of a file in a terminal
most (1)             - browse or page through a text file
mount.ecryptfs_private (1) - eCryptfs private mount helper.
mountpoint (1)       - see if a directory or file is a mountpoint
mouse-dpi-tool (1)   - mouse resolution estimation tool
mouse-test (1)       - a tool for determining mouse type and device it's attached to.
mp2enc (1)           - Simple MPEG-1 layer-II audio encoder
mpartition (1)       - partition an MSDOS hard disk
mpeg2dec (1)         - decode MPEG and MPEG2 video streams
mpeg2enc (1)         - MPEG-1/2 encoder
mpg123 (1)           - play audio MPEG 1.0/2.0/2.5 stream (layers 1, 2 and 3)
mpiCC (1)            - Open MPI C++ wrapper compiler
mpic++ (1)           - Open MPI C++ wrapper compiler
mpicc (1)            - Open MPI C wrapper compiler
mpicxx (1)           - Open MPI C++ wrapper compiler
mpiexec (1)          - Execute serial and parallel jobs in Open MPI. oshrun, shmemrun - Execute serial and parallel jobs in Open SHMEM.
mpif77 (1)           - Deprecated Open MPI Fortran wrapper compilers
mpif90 (1)           - Deprecated Open MPI Fortran wrapper compilers
mpifort (1)          - Open MPI Fortran wrapper compiler
mpirun (1)           - Execute serial and parallel jobs in Open MPI. oshrun, shmemrun - Execute serial and parallel jobs in Open SHMEM.
mplex (1)            - MPEG 1/2 program/system stream multiplexer
mpv (1)              - a media player
mrd (1)              - remove an MSDOS subdirectory
mren (1)             - rename an existing MSDOS file
msgattrib (1)        - attribute matching and manipulation on message catalog
msgcat (1)           - combines several message catalogs
msgcmp (1)           - compare message catalog and template
msgcomm (1)          - match two message catalogs
msgconv (1)          - character set conversion for message catalog
msgen (1)            - create English message catalog
msgexec (1)          - process translations of message catalog
msgfilter (1)        - edit translations of message catalog
msgfmt (1)           - compile message catalog to binary format
msggrep (1)          - pattern matching on message catalog
msginit (1)          - initialize a message catalog
msgmerge (1)         - merge message catalog and template
msgunfmt (1)         - uncompile message catalog from binary format
msguniq (1)          - unify duplicate translations in message catalog
mshortname (1)       - shows short name of a file
mshowfat (1)         - shows FAT clusters allocated to file
mtools (1)           - utilities to access DOS disks in Unix.
mtoolstest (1)       - tests and displays the configuration
mtrace (1)           - interpret the malloc trace log
mtype (1)            - display contents of an MSDOS file
mugshot (1)          - lightweight user configuration utility
mv (1)               - move (rename) files
mzip (1)             - change protection mode and eject disk on Zip/Jaz drive
name2addr (1)        - perform DNS lookups from scripts
named-checkconf (1)  - named configuration file syntax checking tool
named-checkzone (1)  - zone file validity checking or converting tool
named-compilezone (1) - zone file validity checking or converting tool
named-journalprint (1) - print zone journal in human-readable form
named-nzd2nzf (1)    - convert an NZD database to NZF text format
named-rrchecker (1)  - syntax checker for individual DNS resource records
namei (1)            - follow a pathname until a terminal point is found
nano (1)             - Nano's ANOther editor, inspired by Pico
nbd-server (1)       - serve a file as a block device to other computers running the GNU/Linux(tm) or GNU/Hurd Operating System
nbd-trdump (1)       - translate an nbd transaction log into human readable form
nbd-trplay (1)       - replay all or parts of an nbd transaction log
ncdu (1)             - NCurses Disk Usage
ncursesw6-config (1) - helper script for ncurses libraries
ndctl (1)            - Manage "libnvdimm" subsystem devices (Non-volatile Memory)
ndctl-activate-firmware (1) - activate staged firmware on memory devices
ndctl-check-labels (1) - determine if the given dimms have a valid namespace index block
ndctl-check-namespace (1) - check namespace metadata consistency
ndctl-clear-errors (1) - clear all errors (badblocks) on the given namespace
ndctl-create-namespace (1) - provision or reconfigure a namespace
ndctl-destroy-namespace (1) - destroy the given namespace(s)
ndctl-disable-dimm (1) - disable one or more idle dimms
ndctl-disable-namespace (1) - disable the given namespace(s)
ndctl-disable-region (1) - disable the given region(s) and all descendant namespaces
ndctl-enable-dimm (1) - enable one more dimms
ndctl-enable-namespace (1) - enable the given namespace(s)
ndctl-enable-region (1) - enable the given region(s) and all descendant namespaces
ndctl-freeze-security (1) - Set the given DIMM(s) to reject future security operations
ndctl-init-labels (1) - initialize the label data area on a dimm or set of dimms
ndctl-inject-error (1) - inject media errors at a namespace offset
ndctl-inject-smart (1) - perform smart threshold/injection operations on a DIMM
ndctl-list (1)       - dump the platform nvdimm device topology and attributes in json
ndctl-load-keys (1)  - load the kek and encrypted passphrases into the keyring
ndctl-monitor (1)    - Monitor the smart events of nvdimm objects
ndctl-read-infoblock (1) - read and optionally parse the info-block a namespace
ndctl-read-labels (1) - read out the label area on a dimm or set of dimms
ndctl-remove-passphrase (1) - Stop a DIMM from locking at power-loss and requiring a passphrase to access media
ndctl-sanitize-dimm (1) - Perform a cryptographic destruction or overwrite of the contents of the given NVDIMM(s)
ndctl-setup-passphrase (1) - setup and enable the security passphrase for an NVDIMM
ndctl-start-scrub (1) - start an Address Range Scrub (ARS) operation
ndctl-update-firmware (1) - update the firmware the given device
ndctl-update-passphrase (1) - update the security passphrase for an NVDIMM
ndctl-wait-overwrite (1) - wait for an overwrite operation to complete
ndctl-wait-scrub (1) - wait for an Address Range Scrub (ARS) operation to complete
ndctl-write-infoblock (1) - generate and write an infoblock
ndctl-write-labels (1) - write data to the label area on a dimm
ndctl-zero-labels (1) - zero out the label area on a dimm or set of dimms
neon-config (1)      - script providing information about installed copy of neon library
neqn (1)             - format equations for ASCII output
net-snmp-config (1)  - returns information about installed net-snmp libraries and binaries
net-snmp-create-v3-user (1) - create a SNMPv3 user in net-snmp configuration file
netcat (1)           - GNU Netcat Manual
networkctl (1)       - Query or modify the status of network links
newgidmap (1)        - set the gid mapping of a user namespace
newgrp (1)           - log in to a new group
newuidmap (1)        - set the uid mapping of a user namespace
nfc (1)              - enable/disable internal NFC device
nfs-cat (1)          - Utility to read a file off NFS
nfs-cp (1)           - Utility to copy files to/from and NFS server
nfs-ls (1)           - Utility to list NFS servers, exports and directories
ngettext (1)         - translate message and choose plural form
nice (1)             - run a program with modified scheduling priority
nitrogen (1)         - X11 background previewer and setter
nl (1)               - number lines of files
nm (1)               - list symbols from object files
nm-applet (1)        - network monitor and control GUI applet
nm-connection-editor (1) - network connection editor for NetworkManager
nm-online (1)        - ask NetworkManager whether the network is connected
nmblookup (1)        - NetBIOS over TCP/IP client used to lookup NetBIOS names
nmcli (1)            - command-line tool for controlling NetworkManager
nmtui (1)            - Text User Interface for controlling NetworkManager
nmtui-connect (1)    - Text User Interface for controlling NetworkManager
nmtui-edit (1)       - Text User Interface for controlling NetworkManager
nmtui-hostname (1)   - Text User Interface for controlling NetworkManager
node (1)             - server-side JavaScript runtime
nohup (1)            - run a command immune to hangups, with output to a non-tty
nomacs (1)           - is a free, open source image viewer, which supports multiple platforms.
notify-send (1)      - a program to send desktop notifications
nproc (1)            - print the number of processing units available
nroff (1)            - use groff to format documents for TTY devices
nsec3hash (1)        - generate NSEC3 hash
nsenter (1)          - run program in different namespaces
nseq (1ssl)          - OpenSSL application commands
nslookup (1)         - query Internet name servers interactively
nsupdate (1)         - dynamic DNS update utility
numfmt (1)           - Convert numbers from/to human-readable strings
nvme (1)             - the NVMe storage command line interface utility (nvme-cli)
nvme-admin-passthru (1) - Submit an arbitrary admin command, return results
nvme-ana-log (1)     - Send NVMe ANA log page request, returns result and log
nvme-attach-ns (1)   - Send NVMe attach namespace, return result.
nvme-boot-part-log (1) - Retrieves a Boot Partition log page from an NVMe device
nvme-capacity-mgmt (1) - Send capacity management command to configure/create/delete Endurance Groups or NVM Sets, returns results.
nvme-changed-ns-list-log (1) - Send NVMe Changed Namespace List log page request, returns result and log.
nvme-cmdset-ind-id-ns (1) - Send NVMe I/O Command Set Independent Identify Namespace, return result and structure.
nvme-compare (1)     - Send an NVMe Compare command, provide results
nvme-connect (1)     - Connect to a Fabrics controller.
nvme-connect-all (1) - Discover and Connect to Fabrics controllers.
nvme-copy (1)        - Send an NVMe Simple Copy command, provide results
nvme-create-ns (1)   - Send NVMe Namespace management command to create namespace, returns results.
nvme-delete-ns (1)   - Send NVMe Namespace Management delete namespace command, return result.
nvme-dera-stat (1)   - Send NVMe Dera Device status and Additional SMART log page request, returns result and log
nvme-detach-ns (1)   - Send NVMe detach namespace, return result.
nvme-device-self-test (1) - Perform the necessary tests to observe the performance and the parameters
nvme-dim (1)         - Send Discovery Information Management command to one or more Discovery Controllers.
nvme-dir-receive (1) - Send a directive receive command, returns applicable results
nvme-dir-send (1)    - Issue a directive send command, returns applicable results
nvme-disconnect (1)  - Disconnect one or more Fabrics controller(s).
nvme-disconnect-all (1) - Disconnect from all connected Fabrics controllers.
nvme-discover (1)    - Send Get Log Page request to Discovery Controller.
nvme-dsm (1)         - Send NVMe Data Set Management, return results
nvme-effects-log (1) - Send NVMe Command Effects log page request, returns result and log
nvme-endurance-event-agg-log (1) - Send NVMe Endurance log page request, returns result and log
nvme-endurance-log (1) - Send NVMe Endurance log page request, returns result and log
nvme-error-log (1)   - Send NVME Error log page request, return result and log
nvme-fdp-configs (1) - Get Flexible Data Placement Configurations
nvme-fdp-events (1)  - Get Flexible Data Placement Events
nvme-fdp-set-events (1) - Enable or disable FDP events
nvme-fdp-stats (1)   - Get Flexible Data Placement Statistics
nvme-fdp-status (1)  - Get Reclaim Unit Handle Status
nvme-fdp-update (1)  - Reclaim Unit Handle Update
nvme-fdp-usage (1)   - Get Reclaim Unit Handle Usage
nvme-fid-support-effects-log (1) - Send NVMe FID Support and Effects log, return result and structure
nvme-flush (1)       - Flush command.
nvme-format (1)      - Format an NVMe device
nvme-fw-commit (1)   - Used to verify and commit a firmware image.
nvme-fw-download (1) - Download all or a portion of an nvme firmware image.
nvme-fw-log (1)      - Send NVMe Firmware log page request, returns result and log
nvme-gen-hostnqn (1) - Generate a host NVMe Qualified Name
nvme-get-feature (1) - Gets an NVMe feature, returns applicable results
nvme-get-lba-status (1) - Get LBA Status from NVMe device
nvme-get-log (1)     - Retrieves a log page from an NVMe device
nvme-get-ns-id (1)   - Retrieves the namespace ID for an NVMe block device
nvme-get-property (1) - Reads and shows the defined NVMe controller property for NVMe over Fabric
nvme-help (1)        - Help information.
nvme-huawei-id-ctrl (1) - Send NVMe Identify Controller, return result and structure
nvme-huawei-list (1) - List all recognized Huawei NVMe devices
nvme-id-ctrl (1)     - Send NVMe Identify Controller, return result and structure
nvme-id-domain (1)   - Send NVMe Identify Domain List, return result and structure
nvme-id-iocs (1)     - Send NVMe Identify I/O Command Set, return result and structure
nvme-id-ns (1)       - Send NVMe Identify Namespace, return result and structure
nvme-id-nvmset (1)   - Send NVMe Identify NVM Set List, return result and structure
nvme-inspur-nvme-vendor-log (1) - Send NVMe Inspur Device Vendor log page request, returns result
nvme-intel-id-ctrl (1) - Send NVMe Identify Controller, return result and structure
nvme-intel-internal-log (1) - Retrieve Intel device's internal log and save to file.
nvme-intel-lat-stats (1) - Send NVMe Identify Controller, return result and structure
nvme-intel-market-name (1) - Send NVMe Identify Controller, return result and structure
nvme-intel-smart-log-add (1) - Send NVMe Intel Additional SMART log page request, returns result and log
nvme-intel-temp-stats (1) - Send NVMe SMART log page request, returns result and log
nvme-io-mgmt-recv (1) - I/O Management Receive command
nvme-io-mgmt-send (1) - I/O Management Send command
nvme-io-passthru (1) - Submit an arbitrary io command, return results
nvme-lba-status-log (1) - Send LBA Status Log Page request returns result and log
nvme-list (1)        - List all recognized NVMe devices
nvme-list-ctrl (1)   - Send NVMe Identify List Controllers, return result and structure
nvme-list-endgrp (1) - Send NVMe Identify Endurance Group List, return result and structure
nvme-list-ns (1)     - Send NVMe Identify List Namespaces, return result and structure
nvme-list-subsys (1) - List all NVMe subsystems
nvme-lockdown (1)    - Send an NVMe Lockdown command to prohibit or allow the execution of command
nvme-mi-cmd-support-effects-log (1) - Send NVMe MI Command Support and Effects log, returns results and structure
nvme-micron-clear-pcie-errors (1) - Clears correctable PCIe correctable errors of given Micron device
nvme-micron-internal-log (1) - Retrieve Micron device's internal logs and save to given zip file.
nvme-micron-nand-stats (1) - Retrieves NAND statistics of given micron device
nvme-micron-pcie-stats (1) - Retrieves pcie error statistics for given micron device
nvme-micron-selective-download (1) - Performs selective firmware download that allows user to select which firmware binary to update for 9200 devices. This requires power cycle once the upd...
nvme-micron-smart-add-log (1) - Retrieves NAND statistics (2200 model drives) or Extended SMART information (OCP complaint models) of given micron device
nvme-micron-temperature-stats (1) - Retrieves temperature information of given micron device
nvme-netapp-ontapdevices (1) - Display information about ONTAP devices
nvme-netapp-smdevices (1) - Display information for each NVMe path to an E-Series volume
nvme-ns-descs (1)    - Send NVMe Identify for a list of Namespace Identification Descriptor structure, return result and structure
nvme-ns-rescan (1)   - Rescans the nvme namespaces.
nvme-nvm-id-ctrl (1) - Send NVMe Identify Controller, return NVM command set structure
nvme-ocp-clear-fw-activate-history (1) - Clear the OCP Firmware Update History Log
nvme-ocp-latency-monitor-log (1) - Display latency monitor log page data in human readable format
nvme-ocp-smart-add-log (1) - Retrieves Extended SMART information of given OCP compliant device
nvme-persistent-event-log (1) - Send NVMe persistent event log page request, returns result and log
nvme-pred-lat-event-agg-log (1) - Send Predictable Latency Event Aggregate Log Page request, returns result and log
nvme-predictable-lat-log (1) - Send Predictable latency per NVM set log page request, returns result and log
nvme-primary-ctrl-caps (1) - Send identify Primary Controller Caps, return result and structure
nvme-read (1)        - Send an NVMe Read command, provide results
nvme-reset (1)       - Reset the nvme controller.
nvme-resv-acquire (1) - Acquire an nvme reservation
nvme-resv-notif-log (1) - Send NVMe Reservation Notification log page request, return result and log
nvme-resv-register (1) - Register an nvme reservation
nvme-resv-release (1) - Release an nvme reservation
nvme-resv-report (1) - Send NVMe Reservation Report, parse the result
nvme-rpmb (1)        - Send RPMB commands to an NVMe device
nvme-sanitize (1)    - Send NVMe Sanitize Command, return result
nvme-sanitize-log (1) - Send NVMe sanitize-log Command, return result
nvme-seagate-clear-fw-activate-history (1) - Clear the firmware activation history for a given Seagate device.
nvme-seagate-clear-pcie-correctable-errors (1) - Clear Seagate PCIe error statistics
nvme-seagate-cloud-SSD-plugin-version (1) - Shows OCP Seagate plugin's version information
nvme-seagate-get-ctrl-tele (1) - Retrieve Seagate Controller-Initiated Telemetry in either hex-dump (default) or binary format
nvme-seagate-get-host-tele (1) - Retrieve Seagate Host-Initiated Telemetry in either hex-dump (default) or binary format
nvme-seagate-help (1) - Shows the Seagate plugin's help information
nvme-seagate-plugin-version (1) - Shows Seagate plugin's version information
nvme-seagate-version (1) - Shows the Seagate version information for nvme-cli
nvme-seagate-vs-fw-activate-history (1) - Retrieve Seagate vendor specific Controller-Initiated Telemetry in binary
nvme-seagate-vs-internal-log (1) - Retrieve Seagate vendor specific Controller-Initiated Telemetry in binary
nvme-seagate-vs-log-page-sup (1) - Retrieve Seagate vendor specific Supported Log-pages Information
nvme-seagate-vs-pcie-stats (1) - Retrieve Seagate vendor specific PCIe error statistics
nvme-seagate-vs-smart-add-log (1) - Retrieve Seagate vendor specific extended-SMART Information
nvme-seagate-vs-temperature-stats (1) - Retrieve Seagate vendor specific temperature statistics
nvme-security-recv (1) - Security Recv command
nvme-security-send (1) - Security Send command
nvme-self-test-log (1) - Retrieve the log information initiated by device-self-test and display it
nvme-set-feature (1) - Sets an NVMe feature, returns applicable results
nvme-set-property (1) - Writes and shows the defined NVMe controller property for NVMe over Fabric
nvme-show-hostnqn (1) - Generate a host NVMe Qualified Name
nvme-show-regs (1)   - Reads and shows the defined NVMe controller registers for NVMe over PCIe or the controller properties for NVMe over Fabrics.
nvme-show-topology (1) - Show topology of all NVMe subsystems
nvme-smart-log (1)   - Send NVMe SMART log page request, returns result and log
nvme-subsystem-reset (1) - Reset the nvme subsystem.
nvme-supported-log-pages (1) - Send NVMe Supported Log pages request, returns result and log
nvme-telemetry-log (1) - Retrieves a Telemetry Host-Initiated log page from an NVMe device
nvme-toshiba-clear-pcie-correctable-errors (1) - Reset the PCIe correctable errors count to zero.
nvme-toshiba-vs-internal-log (1) - Retrieve a Toshiba device's vendor specific internal log and either save to file or dump the contents.
nvme-toshiba-vs-smart-add-log (1) - Retrieve a Toshiba device's vendor specific extended SMART log page contents and either save to file or dump the contents.
nvme-transcend-badblock (1) - Retrieve Transcend NVMe device's bad blocks.
nvme-transcend-healthvalue (1) - Use NVMe SMART table to analyze the health value of Transcend device.
nvme-verify (1)      - Send an NVMe Verify command, return results
nvme-virtium-save-smart-to-vtview-log (1) - Periodically save smart attributes into a log file (csv format).
nvme-virtium-show-identify (1) - Show a complete detail of identify device information in json format.
nvme-wdc-cap-diag (1) - Retrieve WDC device's diagnostic log and save to file.
nvme-wdc-capabilities (1) - Display WDC plugin command capabilities
nvme-wdc-clear-assert-dump (1) - Clears the assert dump (if present).
nvme-wdc-clear-fw-activate-history (1) - Clears the firmware activate history table.
nvme-wdc-clear-pcie-correctable-errors (1) - Clears the pcie correctable errors field returned in the smart-log-add command.
nvme-wdc-cloud-boot-SSD-version (1) - Display WDC plugin Cloud Boot SSD Version
nvme-wdc-cloud-SSD-plugin-version (1) - Display WDC plugin Cloud SSD Plugin Version
nvme-wdc-drive-essentials (1) - Retrieve WDC device's drive essentials bin files and save to a tar file.
nvme-wdc-drive-log (1) - Retrieve WDC device's drive log and save to file.
nvme-wdc-drive-resize (1) - Send NVMe WDC Resize Vendor Unique Command, return result.
nvme-wdc-enc-get-log (1) - Send NVMe WDC enc-get-log Vendor Unique Command, return result.
nvme-wdc-get-crash-dump (1) - Retrieve WDC device's crash dump.
nvme-wdc-get-dev-capabilities-log (1) - Send NVMe WDC get-dev-capabilities-log plugin command, return parsed log output
nvme-wdc-get-drive-status (1) - Send the NVMe WDC get-drive-status command, return result
nvme-wdc-get-error-recovery-log (1) - Send NVMe WDC get-error-recovery-log plugin command, return parsed log output
nvme-wdc-get-latency-monitor-log (1) - Display latency monitor log page data in human readable format
nvme-wdc-get-pfail-dump (1) - Retrieve WDC device's pfail crash dump.
nvme-wdc-get-unsupported-reqs-log (1) - Send NVMe WDC get-unsupported-reqs-log plugin command, return parsed log output
nvme-wdc-id-ctrl (1) - Send NVMe Identify Controller, return result and structure
nvme-wdc-log-page-directory (1) - Retrieves the list of Log IDs supported by the drive
nvme-wdc-namespace-resize (1) - Resizes the device's namespace.
nvme-wdc-purge (1)   - Send NVMe WDC Purge Vendor Unique Command, return result
nvme-wdc-purge-monitor (1) - Send NVMe WDC Purge-Monitor Vendor Unique Command, return result
nvme-wdc-vs-cloud-log (1) - Send NVMe WDC vs-cloud-log Vendor Unique Command, return result
nvme-wdc-vs-device-waf (1) - Calculates the device write amplification factor and prints both TLC and SLC results
nvme-wdc-vs-drive-info (1) - Send the NVMe WDC vs-drive-info command, return result
nvme-wdc-vs-error-reason-identifier (1) - Retrieve WDC device's telemetry log error reason identifier field
nvme-wdc-vs-fw-activate-history (1) - Execute NVMe WDC vs-fw-activate-history Vendor Unique Command, return result
nvme-wdc-vs-hw-rev-log (1) - Send NVMe WDC vs-hw-rev-log Vendor Unique Command, return result
nvme-wdc-vs-internal-log (1) - Retrieve WDC device's internal firmware log and save to file.
nvme-wdc-vs-nand-stats (1) - Send NVMe WDC vs-nand-stats Vendor Unique Command, return result
nvme-wdc-vs-smart-add-log (1) - Send NVMe WDC vs-smart-add-log Vendor Unique Command, return result
nvme-wdc-vs-telemetry-controller-option (1) - Disable/Enable the controller initiated option of the telemetry log page.
nvme-wdc-vs-temperature-stats (1) - Display temperature-related statistics
nvme-write (1)       - Send an NVMe write command, provide results
nvme-write-uncor (1) - Send an NVMe write uncorrectable command, return results
nvme-write-zeroes (1) - Send an NVMe write zeroes command, return results
nvme-zns-changed-zone-list (1) - Retrieve Changed Zone log for the given device
nvme-zns-close-zone (1) - Closes one or all zones
nvme-zns-finish-zone (1) - Finishes one or all zones
nvme-zns-id-ctrl (1) - Send NVMe Zoned Command Set Identify Controller, return result and structure
nvme-zns-id-ns (1)   - Send NVMe Zoned Command Set Identify namespace, return result and structure
nvme-zns-offline-zone (1) - Offlines one or all zones
nvme-zns-open-zone (1) - Opens one or all zones
nvme-zns-report-zones (1) - Retrieve and display the Report Zones data structure
nvme-zns-reset-zone (1) - Resets one or all zones
nvme-zns-set-zone-desc (1) - Set extended descriptor data for a zone
nvme-zns-zone-append (1) - Send an NVMe write command, provide results
nvme-zns-zone-mgmt-recv (1) - Zone Management Receive command
nvme-zns-zone-mgmt-send (1) - Zone Management Send command
oathtool (1)         - Open AuTHentication (OATH) one-time password tool
objcopy (1)          - copy and translate object files
objdump (1)          - display information from object files
ocsp (1ssl)          - OpenSSL application commands
od (1)               - dump files in octal and other formats
ompi-clean (1)       - Cleans up any stale processes and files leftover from Open MPI jobs.
ompi-server (1)      - Server for supporting name publish/lookup operations.
ompi_info (1)        - Display information about the Open MPI installation
omxregister-bellagio (1) - register OpenMAX/Bellagio components
oomctl (1)           - Analyze the state stored in systemd-oomd
opal_wrapper (1)     - Back-end Open MPI wrapper command
openmpt123 (1)       - command line module music player based on libopenmpt
openssl (1ssl)       - OpenSSL command line program
openssl-asn1parse (1ssl) - ASN.1 parsing command
openssl-ca (1ssl)    - sample minimal CA application
openssl-ciphers (1ssl) - SSL cipher display and cipher list command
openssl-cmds (1ssl)  - OpenSSL application commands
openssl-cmp (1ssl)   - Certificate Management Protocol (CMP, RFC 4210) application
openssl-cms (1ssl)   - CMS command
openssl-crl (1ssl)   - CRL command
openssl-crl2pkcs7 (1ssl) - Create a PKCS#7 structure from a CRL and certificates
openssl-dgst (1ssl)  - perform digest operations
openssl-dhparam (1ssl) - DH parameter manipulation and generation
openssl-dsa (1ssl)   - DSA key processing
openssl-dsaparam (1ssl) - DSA parameter manipulation and generation
openssl-ec (1ssl)    - EC key processing
openssl-ecparam (1ssl) - EC parameter manipulation and generation
openssl-enc (1ssl)   - symmetric cipher routines
openssl-engine (1ssl) - load and query engines
openssl-errstr (1ssl) - lookup error codes
openssl-fipsinstall (1ssl) - perform FIPS configuration installation
openssl-format-options (1ssl) - OpenSSL command input and output format options
openssl-gendsa (1ssl) - generate a DSA private key from a set of parameters
openssl-genpkey (1ssl) - generate a private key
openssl-genrsa (1ssl) - generate an RSA private key
openssl-info (1ssl)  - print OpenSSL built-in information
openssl-kdf (1ssl)   - perform Key Derivation Function operations
openssl-list (1ssl)  - list algorithms and features
openssl-mac (1ssl)   - perform Message Authentication Code operations
openssl-namedisplay-options (1ssl) - Distinguished name display options
openssl-nseq (1ssl)  - create or examine a Netscape certificate sequence
openssl-ocsp (1ssl)  - Online Certificate Status Protocol command
openssl-passphrase-options (1ssl) - Pass phrase options
openssl-passwd (1ssl) - compute password hashes
openssl-pkcs12 (1ssl) - PKCS#12 file command
openssl-pkcs7 (1ssl) - PKCS#7 command
openssl-pkcs8 (1ssl) - PKCS#8 format private key conversion command
openssl-pkey (1ssl)  - public or private key processing command
openssl-pkeyparam (1ssl) - public key algorithm parameter processing command
openssl-pkeyutl (1ssl) - public key algorithm command
openssl-prime (1ssl) - compute prime numbers
openssl-rand (1ssl)  - generate pseudo-random bytes
openssl-rehash (1ssl) - Create symbolic links to files named by the hash values
openssl-req (1ssl)   - PKCS#10 certificate request and certificate generating command
openssl-rsa (1ssl)   - RSA key processing command
openssl-rsautl (1ssl) - RSA command
openssl-s_client (1ssl) - SSL/TLS client program
openssl-s_server (1ssl) - SSL/TLS server program
openssl-s_time (1ssl) - SSL/TLS performance timing program
openssl-sess_id (1ssl) - SSL/TLS session handling command
openssl-smime (1ssl) - S/MIME command
openssl-speed (1ssl) - test library performance
openssl-spkac (1ssl) - SPKAC printing and generating command
openssl-srp (1ssl)   - maintain SRP password file
openssl-storeutl (1ssl) - STORE command
openssl-ts (1ssl)    - Time Stamping Authority command
openssl-verification-options (1ssl) - generic X.509 certificate verification options
openssl-verify (1ssl) - certificate verification command
openssl-version (1ssl) - print OpenSSL version information
openssl-x509 (1ssl)  - Certificate display and signing command
openvt (1)           - start a program on a new virtual terminal (VT).
opj_compress (1)     - This program reads in an image of a certain type and converts it to a jpeg2000 file. It is part of the OpenJPEG library.
opj_decompress (1)   - This program reads in a jpeg2000 image and converts it to another image type. It is part of the OpenJPEG library.
opj_dump (1)         - This program reads in a jpeg2000 image and dumps the contents to stdout. It is part of the OpenJPEG library.
urxvt-option-popup (1) - option menu
orte-clean (1)       - Cleans up any stale processes and files leftover from Open MPI jobs.
orte-info (1)        - Display information about the ORTE installation
orte-server (1)      - Server for supporting name publish/lookup operations.
orted (1)            - Start an Open RTE User-Level Daemon
orterun (1)          - Execute serial and parallel jobs in Open MPI. oshrun, shmemrun - Execute serial and parallel jobs in Open SHMEM.
osinfo-detect (1)    - Detect the operating system on installable media or trees
osinfo-install-script (1) - generate a script for automated installation
osinfo-query (1)     - Query information in the database
ostree (1)           - Manage multiple bootable versioned filesystem trees
ostree-admin (1)     - Use one of the ostree admin commands
ostree-admin-cleanup (1) - Delete untagged deployments and repository objects
ostree-admin-config-diff (1) - Diff current /etc configuration versus default
ostree-admin-deploy (1) - Checkout a revision as the new default deployment
ostree-admin-init-fs (1) - Initialize a new root filesystem
ostree-admin-instutil (1) - Utility functions intended primarily for operating system installation programs
ostree-admin-os-init (1) - Initialize empty state for a given operating system
ostree-admin-pin (1) - Explicitly retain deployment at a given index
ostree-admin-set-origin (1) - Change the "origin" (location for upgrades)
ostree-admin-status (1) - List deployments
ostree-admin-switch (1) - Construct new tree from current origin and deploy it, if it changed
ostree-admin-undeploy (1) - Delete deployment at a given index
ostree-admin-unlock (1) - Prepare the current deployment for hotfix or development
ostree-admin-upgrade (1) - Construct new tree from current origin and deploy it, if it changed
ostree-cat (1)       - Display or concatenate contents of files
ostree-checkout (1)  - Check out a commit into a filesystem
ostree-checksum (1)  - Checksum a file or directory
ostree-commit (1)    - Commit a new revision
ostree-config (1)    - Change configuration settings
ostree-create-usb (1) - Put the given refs on an external drive for P2P distribution.
ostree-diff (1)      - Compare a directory against a revision
ostree-export (1)    - Generate a tar archive from an OSTree commit
ostree-find-remotes (1) - Find remotes to serve the given refs
ostree-fsck (1)      - Check the repository for consistency
ostree-gpg-sign (1)  - Sign a commit
ostree-init (1)      - Initialize a new empty repository
ostree-log (1)       - Show log starting at a commit or ref
ostree-ls (1)        - List file paths
ostree-prune (1)     - Search for unreachable objects
ostree-pull (1)      - Download data from a remote repository
ostree-pull-local (1) - Copy data from a source repository
ostree-refs (1)      - List refs
ostree-remote (1)    - Control remote repository configuration
ostree-reset (1)     - Reset a ref to a previous commit
ostree-rev-parse (1) - Output the target of a rev
ostree-show (1)      - Output a metadata object
ostree-sign (1)      - Sign a commit
ostree-static-delta (1) - Manage static delta files
ostree-summary (1)   - Regenerate or view the summary metadata file
ostree-trivial-httpd (1) - Simple webserver
otr_mackey (1)       - Process Off-the-Record Messaging transcripts
otr_modify (1)       - Process Off-the-Record Messaging transcripts
otr_parse (1)        - Process Off-the-Record Messaging transcripts
otr_readforge (1)    - Process Off-the-Record Messaging transcripts
otr_remac (1)        - Process Off-the-Record Messaging transcripts
otr_sesskeys (1)     - Process Off-the-Record Messaging transcripts
otr_toolkit (1)      - Process Off-the-Record Messaging transcripts
out123 (1)           - send raw PCM audio or a waveform pattern to an output device
urxvt-overlay-osc (1) - implement OSC to manage overlays
pacat (1)            - Play back or record raw or encoded audio streams on a PulseAudio sound server
pace (1)             - change options an repostiories of pacman.conf
pacmd (1)            - Reconfigure a PulseAudio sound server during runtime
pactl (1)            - Control a running PulseAudio sound server
padsp (1)            - PulseAudio OSS Wrapper
pahole (1)           - Shows, manipulates data structure layout and pretty prints raw data.
pal2rgb (1)          - convert a palette color TIFF image to a full color image
pamon (1)            - Play back or record raw or encoded audio streams on a PulseAudio sound server
panelctl (1)         - manual page for panelctl 0.2
pango-view (1)       - "Pango text viewer"
paper (1)            - print paper size information
paplay (1)           - Play back or record raw or encoded audio streams on a PulseAudio sound server
parec (1)            - Play back or record raw or encoded audio streams on a PulseAudio sound server
parecord (1)         - Play back or record raw or encoded audio streams on a PulseAudio sound server
python-parso (1)     - parso Documentation
passwd (1)           - change user password
passwd (1ssl)        - OpenSSL application commands
paste (1)            - merge lines of files
pasuspender (1)      - Temporarily suspend PulseAudio
patch (1)            - apply a diff file to an original
pathchk (1)          - check whether file names are valid or portable
pax11publish (1)     - PulseAudio X11 Credential Utility
pbzip2 (1)           - parallel bzip2 file compressor, v1.1.10
pcap-config (1)      - write libpcap compiler and linker flags to standard output
pcf2vpnc (1)         - converts VPN-config files from pcf to vpnc-format
pcre-config (1)      - program to return PCRE configuration
pcre2-config (1)     - program to return PCRE2 configuration
pcre2grep (1)        - a grep with Perl-compatible regular expressions.
pcre2test (1)        - a program for testing Perl-compatible regular expressions.
pcregrep (1)         - a grep with Perl-compatible regular expressions.
pcretest (1)         - a program for testing Perl-compatible regular expressions.
pcsc-spy (1)         - A PC/SC spy command
pdf2dsc (1)          - generate a PostScript page list of a PDF document
pdf2ps (1)           - Ghostscript PDF to PostScript translator
pdfattach (1)        - Portable Document Format (PDF) document embedded file creator (version 3.03)
pdfdetach (1)        - Portable Document Format (PDF) document embedded file extractor (version 3.03)
pdffonts (1)         - Portable Document Format (PDF) font analyzer (version 3.03)
pdfimages (1)        - Portable Document Format (PDF) image extractor (version 3.03)
pdfinfo (1)          - Portable Document Format (PDF) document information extractor (version 3.03)
pdfmom (1)           - produce PDF documents using the mom macro package for groff
pdfroff (1)          - create PDF documents using groff
pdfseparate (1)      - Portable Document Format (PDF) page extractor
pdfsig (1)           - Portable Document Format (PDF) digital signatures tool
pdftexi2dvi (1)      - convert Texinfo documents to DVI or PDF
pdftocairo (1)       - Portable Document Format (PDF) to PNG/JPEG/TIFF/PDF/PS/EPS/SVG using cairo
pdftohtml (1)        - program to convert PDF files into HTML, XML and PNG images
pdftoppm (1)         - Portable Document Format (PDF) to Portable Pixmap (PPM) converter (version 3.03)
pdftops (1)          - Portable Document Format (PDF) to PostScript converter (version 3.03)
pdftotext (1)        - Portable Document Format (PDF) to text converter (version 3.03)
pdfunite (1)         - Portable Document Format (PDF) page merger
peekfd (1)           - peek at file descriptors of running processes
perl (1perl)         - The Perl 5 language interpreter
perl5004delta (1perl) - what's new for perl5.004
perl5005delta (1perl) - what's new for perl5.005
perl5100delta (1perl) - what is new for perl 5.10.0
perl5101delta (1perl) - what is new for perl v5.10.1
perl5120delta (1perl) - what is new for perl v5.12.0
perl5121delta (1perl) - what is new for perl v5.12.1
perl5122delta (1perl) - what is new for perl v5.12.2
perl5123delta (1perl) - what is new for perl v5.12.3
perl5124delta (1perl) - what is new for perl v5.12.4
perl5125delta (1perl) - what is new for perl v5.12.5
perl5140delta (1perl) - what is new for perl v5.14.0
perl5141delta (1perl) - what is new for perl v5.14.1
perl5142delta (1perl) - what is new for perl v5.14.2
perl5143delta (1perl) - what is new for perl v5.14.3
perl5144delta (1perl) - what is new for perl v5.14.4
perl5160delta (1perl) - what is new for perl v5.16.0
perl5161delta (1perl) - what is new for perl v5.16.1
perl5162delta (1perl) - what is new for perl v5.16.2
perl5163delta (1perl) - what is new for perl v5.16.3
perl5180delta (1perl) - what is new for perl v5.18.0
perl5181delta (1perl) - what is new for perl v5.18.1
perl5182delta (1perl) - what is new for perl v5.18.2
perl5184delta (1perl) - what is new for perl v5.18.4
perl5200delta (1perl) - what is new for perl v5.20.0
perl5201delta (1perl) - what is new for perl v5.20.1
perl5202delta (1perl) - what is new for perl v5.20.2
perl5203delta (1perl) - what is new for perl v5.20.3
perl5220delta (1perl) - what is new for perl v5.22.0
perl5221delta (1perl) - what is new for perl v5.22.1
perl5222delta (1perl) - what is new for perl v5.22.2
perl5223delta (1perl) - what is new for perl v5.22.3
perl5224delta (1perl) - what is new for perl v5.22.4
perl5240delta (1perl) - what is new for perl v5.24.0
perl5241delta (1perl) - what is new for perl v5.24.1
perl5242delta (1perl) - what is new for perl v5.24.2
perl5243delta (1perl) - what is new for perl v5.24.3
perl5244delta (1perl) - what is new for perl v5.24.4
perl5260delta (1perl) - what is new for perl v5.26.0
perl5261delta (1perl) - what is new for perl v5.26.1
perl5262delta (1perl) - what is new for perl v5.26.2
perl5263delta (1perl) - what is new for perl v5.26.3
perl5280delta (1perl) - what is new for perl v5.28.0
perl5281delta (1perl) - what is new for perl v5.28.1
perl5282delta (1perl) - what is new for perl v5.28.2
perl5283delta (1perl) - what is new for perl v5.28.3
perl5300delta (1perl) - what is new for perl v5.30.0
perl5301delta (1perl) - what is new for perl v5.30.1
perl5302delta (1perl) - what is new for perl v5.30.2
perl5303delta (1perl) - what is new for perl v5.30.3
perl5320delta (1perl) - what is new for perl v5.32.0
perl5321delta (1perl) - what is new for perl v5.32.1
perl5340delta (1perl) - what is new for perl v5.34.0
perl5341delta (1perl) - what is new for perl v5.34.1
perl5360delta (1perl) - what is new for perl v5.36.0
perl5361delta (1perl) - what is new for perl v5.36.1
perl561delta (1perl) - what's new for perl v5.6.1
perl56delta (1perl)  - what's new for perl v5.6.0
perl581delta (1perl) - what is new for perl v5.8.1
perl582delta (1perl) - what is new for perl v5.8.2
perl583delta (1perl) - what is new for perl v5.8.3
perl584delta (1perl) - what is new for perl v5.8.4
perl585delta (1perl) - what is new for perl v5.8.5
perl586delta (1perl) - what is new for perl v5.8.6
perl587delta (1perl) - what is new for perl v5.8.7
perl588delta (1perl) - what is new for perl v5.8.8
perl589delta (1perl) - what is new for perl v5.8.9
perl58delta (1perl)  - what is new for perl v5.8.0
perlaix (1perl)      - Perl version 5 on IBM AIX (UNIX) systems
perlamiga (1perl)    - Perl under AmigaOS 4.1
perlandroid (1perl)  - Perl under Android
perlapi (1perl)      - autogenerated documentation for the perl public API
perlapio (1perl)     - perl's IO abstraction interface.
perlartistic (1perl) - the Perl Artistic License
perlbook (1perl)     - Books about and related to Perl
perlboot (1perl)     - Links to information on object-oriented programming in Perl
perlbot (1perl)      - Links to information on object-oriented programming in Perl
perlbs2000 (1perl)   - building and installing Perl for BS2000.
perlbug (1perl)      - how to submit bug reports on Perl
perlcall (1perl)     - Perl calling conventions from C
perlcheat (1perl)    - Perl 5 Cheat Sheet
perlclib (1perl)     - Internal replacements for standard C library functions
perlcn (1perl)       - XXXX Perl XX
perlcommunity (1perl) - a brief overview of the Perl community
perlcygwin (1perl)   - Perl for Cygwin
perldata (1perl)     - Perl data types
perldbmfilter (1perl) - Perl DBM Filters
perldebguts (1perl)  - Guts of Perl debugging
perldebtut (1perl)   - Perl debugging tutorial
perldebug (1perl)    - Perl debugging
perldelta (1perl)    - what is new for perl v5.36.1
perldeprecation (1perl) - list Perl deprecations
perldiag (1perl)     - various Perl diagnostics
perldoc (1perl)      - Look up Perl documentation in Pod format.
perldocstyle (1perl) - A style guide for writing Perl's documentation
perldsc (1perl)      - Perl Data Structures Cookbook
perldtrace (1perl)   - Perl's support for DTrace
perlebcdic (1perl)   - Considerations for running Perl on EBCDIC platforms
perlembed (1perl)    - how to embed perl in your C program
perlexperiment (1perl) - A listing of experimental features in Perl
perlfaq (1perl)      - Frequently asked questions about Perl
perlfaq1 (1perl)     - General Questions About Perl
perlfaq2 (1perl)     - Obtaining and Learning about Perl
perlfaq3 (1perl)     - Programming Tools
perlfaq4 (1perl)     - Data Manipulation
perlfaq5 (1perl)     - Files and Formats
perlfaq6 (1perl)     - Regular Expressions
perlfaq7 (1perl)     - General Perl Language Issues
perlfaq8 (1perl)     - System Interaction
perlfaq9 (1perl)     - Web, Email and Networking
perlfilter (1perl)   - Source Filters
perlfork (1perl)     - Perl's fork() emulation
perlform (1perl)     - Perl formats
perlfreebsd (1perl)  - Perl version 5 on FreeBSD systems
perlfunc (1perl)     - Perl builtin functions
perlgit (1perl)      - Detailed information about git and the Perl repository
perlglossary (1perl) - Perl Glossary
perlgov (1perl)      - Perl Rules of Governance
perlgpl (1perl)      - the GNU General Public License, version 1
perlguts (1perl)     - Introduction to the Perl API
perlhack (1perl)     - How to hack on Perl
perlhacktips (1perl) - Tips for Perl core C code hacking
perlhacktut (1perl)  - Walk through the creation of a simple C code patch
perlhaiku (1perl)    - Perl version 5.10+ on Haiku
perlhist (1perl)     - the Perl history records
perlhpux (1perl)     - Perl version 5 on Hewlett-Packard Unix (HP-UX) systems
perlhurd (1perl)     - Perl version 5 on Hurd
perlintern (1perl)   - autogenerated documentation of purely internal Perl functions
perlinterp (1perl)   - An overview of the Perl interpreter
perlintro (1perl)    - a brief introduction and overview of Perl
perliol (1perl)      - C API for Perl's implementation of IO in Layers.
perlipc (1perl)      - Perl interprocess communication (signals, fifos, pipes, safe subprocesses, sockets, and semaphores)
perlirix (1perl)     - Perl version 5 on Irix systems
perlivp (1perl)      - Perl Installation Verification Procedure
perljp (1perl)       - XXX Perl XXX
perlko (1perl)       - XXX Perl XXX
perllexwarn (1perl)  - Perl Lexical Warnings
perllinux (1perl)    - Perl version 5 on Linux systems
perllocale (1perl)   - Perl locale handling (internationalization and localization)
perllol (1perl)      - Manipulating Arrays of Arrays in Perl
perlmacosx (1perl)   - Perl under Mac OS X
perlmod (1perl)      - Perl modules (packages and symbol tables)
perlmodinstall (1perl) - Installing CPAN Modules
perlmodlib (1perl)   - constructing new Perl modules and finding existing ones
perlmodstyle (1perl) - Perl module style guide
perlmroapi (1perl)   - Perl method resolution plugin interface
perlnewmod (1perl)   - preparing a new module for distribution
perlnumber (1perl)   - semantics of numbers and numeric operations in Perl
perlobj (1perl)      - Perl object reference
perlootut (1perl)    - Object-Oriented Programming in Perl Tutorial
perlop (1perl)       - Perl operators and precedence
perlopenbsd (1perl)  - Perl version 5 on OpenBSD systems
perlopentut (1perl)  - simple recipes for opening files and pipes in Perl
perlos2 (1perl)      - Perl under OS/2, DOS, Win0.3*, Win0.95 and WinNT.
perlos390 (1perl)    - building and installing Perl for z/OS (previously called OS/390)
perlos400 (1perl)    - Perl version 5 on OS/400
perlpacktut (1perl)  - tutorial on "pack" and "unpack"
perlperf (1perl)     - Perl Performance and Optimization Techniques
perlplan9 (1perl)    - Plan 9-specific documentation for Perl
perlpod (1perl)      - the Plain Old Documentation format
perlpodspec (1perl)  - Plain Old Documentation: format specification and notes
perlpodstyle (1perl) - Perl POD style guide
perlpolicy (1perl)   - Various and sundry policies and commitments related to the Perl core
perlport (1perl)     - Writing portable Perl
perlpragma (1perl)   - how to write a user pragma
perlqnx (1perl)      - Perl version 5 on QNX
perlre (1perl)       - Perl regular expressions
perlreapi (1perl)    - Perl regular expression plugin interface
perlrebackslash (1perl) - Perl Regular Expression Backslash Sequences and Escapes
perlrecharclass (1perl) - Perl Regular Expression Character Classes
perlref (1perl)      - Perl references and nested data structures
perlreftut (1perl)   - Mark's very short tutorial about references
perlreguts (1perl)   - Description of the Perl regular expression engine.
perlrepository (1perl) - Links to current information on the Perl source repository
perlrequick (1perl)  - Perl regular expressions quick start
perlreref (1perl)    - Perl Regular Expressions Reference
perlretut (1perl)    - Perl regular expressions tutorial
perlriscos (1perl)   - Perl version 5 for RISC OS
perlrun (1perl)      - how to execute the Perl interpreter
perlsec (1perl)      - Perl security
perlsecpolicy (1perl) - Perl security report handling policy
perlsolaris (1perl)  - Perl version 5 on Solaris systems
perlsource (1perl)   - A guide to the Perl source tree
perlstyle (1perl)    - Perl style guide
perlsub (1perl)      - Perl subroutines
perlsyn (1perl)      - Perl syntax
perlsynology (1perl) - Perl 5 on Synology DSM systems
perlthanks (1perl)   - how to submit bug reports on Perl
perlthrtut (1perl)   - Tutorial on threads in Perl
perltie (1perl)      - how to hide an object class in a simple variable
perltoc (1perl)      - perl documentation table of contents
perltodo (1perl)     - Link to the Perl to-do list
perltooc (1perl)     - Links to information on object-oriented programming in Perl
perltoot (1perl)     - Links to information on object-oriented programming in Perl
perltrap (1perl)     - Perl traps for the unwary
perltru64 (1perl)    - Perl version 5 on Tru64 (formerly known as Digital UNIX formerly known as DEC OSF/1) systems
perltw (1perl)       - XXXX Perl XX
perlunicode (1perl)  - Unicode support in Perl
perlunicook (1perl)  - cookbookish examples of handling Unicode in Perl
perlunifaq (1perl)   - Perl Unicode FAQ
perluniintro (1perl) - Perl Unicode introduction
perluniprops (1perl) - Index of Unicode Version 14.0.0 character properties in Perl
perlunitut (1perl)   - Perl Unicode Tutorial
perlutil (1perl)     - utilities packaged with the Perl distribution
perlvar (1perl)      - Perl predefined variables
perlvms (1perl)      - VMS-specific documentation for Perl
perlvos (1perl)      - Perl for Stratus OpenVOS
perlwin32 (1perl)    - Perl under Windows
perlxs (1perl)       - XS language reference manual
perlxstut (1perl)    - Tutorial for writing XSUBs
perlxstypemap (1perl) - Perl XS C/Perl type mapping
pf2afm (1)           - Make an AFM file from Postscript (PFB/PFA/PFM) font files using ghostscript
pfbtopfa (1)         - Convert Postscript .pfb fonts to .pfa format using ghostscript
pfbtops (1)          - translate Printer Font Binary files to PostScript ASCII
pfc (1)              - active precompiled filters generator
pg (1)               - browse pagewise through text files
pgmtoy4m (1)         - Convert mpeg2dec pgm and pgmpipe output to YUV4MPEG2
pgrep (1)            - look up, signal, or wait for processes based on name and other attributes
phar (1)             - PHAR (PHP archive) command line tool
phar.phar (1)        - PHAR (PHP archive) command line tool
php (1)              - PHP Command Line Interface 'CLI'
php-config (1)       - get information about PHP configuration and compile options
phpize (1)           - prepare a PHP extension for compiling
pic (1)              - compile pictures for troff or TeX
pic2graph (1)        - convert a PIC diagram into a cropped image
picom (1)            - a compositor for X11
picom-trans (1)      - an opacity setter tool
piconv (1perl)       - - iconv(1), reinvented in perl
pidof (1)            - find the process ID of a running program
pigz (1)             - compress or expand files
pinky (1)            - lightweight finger
pip (1)              - package manager for Python packages
pip-cache (1)        - description of pip cache command
pip-check (1)        - description of pip check command
pip-config (1)       - description of pip config command
pip-debug (1)        - description of pip debug command
pip-download (1)     - description of pip download command
pip-freeze (1)       - description of pip freeze command
pip-hash (1)         - description of pip hash command
pip-help (1)         - description of pip help command
pip-install (1)      - description of pip install command
pip-list (1)         - description of pip list command
pip-search (1)       - description of pip search command
pip-show (1)         - description of pip show command
pip-uninstall (1)    - description of pip uninstall command
pip-wheel (1)        - description of pip wheel command
pipesz (1)           - set or examine pipe and FIFO buffer sizes
pipewire (1)         - The PipeWire media server
pixz (1)             - parallel, indexed xz compressor
pk12util (1)         - Export and import keys and certificate to or from a PKCS #12 file and the NSS database
pkaction (1)         - Get details about a registered action
pkcheck (1)          - Check whether a process is authorized
pkcs12 (1ssl)        - OpenSSL application commands
pkcs7 (1ssl)         - OpenSSL application commands
pkcs8 (1ssl)         - OpenSSL application commands
pkexec (1)           - Execute a command as another user
pkey (1ssl)          - OpenSSL application commands
pkeyparam (1ssl)     - OpenSSL application commands
pkeyutl (1ssl)       - OpenSSL application commands
pkg-config (1)       - a system for configuring build dependency information
pkgconf (1)          - a system for configuring build dependency information
pkgdata (1)          - package data for use by ICU
pkgfile (1)          - an alpm .files metadata explorer
pkill (1)            - look up, signal, or wait for processes based on name and other attributes
pkttyagent (1)       - Textual authentication helper
pl2pm (1perl)        - Rough tool to translate Perl4 .pl files to Perl5 .pm modules.
plasmapkg2 (1)       - Install, list, remove Plasma packages
playerctl (1)        - control media players via MPRIS
pldd (1)             - display dynamic shared objects linked into a process
plistutil (1)        - Convert a plist FILE between binary, XML, and JSON format
pon (1)              - starts up, shuts down or lists the log of PPP connections
plugctl (1)          - a program to get or set any MPR or PCR register value
plugreport (1)       - a program to read all MPR/PCR registers from all devices and report them.
pm-gawk (1)          - (unknown subject)
pmap (1)             - report memory map of a process
png2yuv (1)          - Convert PNG images to the YUV4MPEG stream format.
pnmtoy4m (1)         - Convert PNM/PAM images to YUV4MPEG2 stream
pod2html (1perl)     - convert .pod files to .html files
pod2man (1perl)      - Convert POD data to formatted *roff input
pod2texi (1)         - convert Pod to Texinfo
pod2text (1perl)     - Convert POD data to formatted ASCII text
pod2usage (1perl)    - print usage messages from embedded pod docs in files
podchecker (1perl)   - check the syntax of POD format documentation files
polybar (1)          - A fast and easy-to-use tool status bar
polybar-msg (1)      - Send IPC messages to polybar
portablectl (1)      - Attach, detach or inspect portable service images
POST (1p)            - Simple command line user agent
powerline (1)        - Powerline prompt and statusline script.
powerline-config (1) - Script used to obtain powerline configuration.
powerline-daemon (1) - Daemon that improves powerline performance.
powerline-lint (1)   - Powerline configuration checker.
ppdc (1)             - cups ppd compiler (deprecated)
ppdhtml (1)          - cups html summary generator (deprecated)
ppdi (1)             - import ppd files (deprecated)
ppdmerge (1)         - merge ppd files (deprecated)
ppdpo (1)            - ppd message catalog generator (deprecated)
ppm2tiff (1)         - create a TIFF file from PPM, PGM and PBM image files
ppmtolss16 (1)       - Convert a PPM to an LSS16 image
ppmtoy4m (1)         - Convert PPM images to YUV4MPEG2 stream
pprof (1)            - manual page for pprof (part of gperftools)
pr (1)               - convert text files for printing
pragha (1)           - A lightweight music player, forked of Consonance Music Manager
preconv (1)          - convert encoding of input files to something GNU troff understands
preparetips5 (1)     - extract text from tips file
prime (1ssl)         - OpenSSL application commands
printafm (1)         - Print the metrics from a Postscript font in AFM format using ghostscript
printenv (1)         - print all or part of environment
printf (1)           - format and print data
prlimit (1)          - get and set process resource limits
procps (1)           - report a snapshot of the current processes.
prove (1perl)        - Run tests through a TAP harness.
prtstat (1)          - print statistics of a process
ps (1)               - report a snapshot of the current processes.
ps2ascii (1)         - Ghostscript translator from PostScript or PDF to ASCII
ps2epsi (1)          - generate conforming Encapsulated PostScript
ps2pdf (1)           - Convert PostScript to PDF using ghostscript
ps2pdf12 (1)         - Convert PostScript to PDF 1.2 (Acrobat 3-and-later compatible) using ghostscript
ps2pdf13 (1)         - Convert PostScript to PDF 1.3 (Acrobat 4-and-later compatible) using ghostscript
ps2pdf14 (1)         - Convert PostScript to PDF 1.4 (Acrobat 5-and-later compatible) using ghostscript
ps2pdfwr (1)         - Convert PostScript to PDF without specifying CompatibilityLevel, using ghostscript
ps2ps (1)            - Ghostscript PostScript "distiller"
psfaddtable (1)      - add a Unicode character table to a console font
psfgettable (1)      - extract the embedded Unicode character table from a console font
psfstriptable (1)    - remove the embedded Unicode character table from a console font
psfxtable (1)        - handle Unicode character tables for console fonts
psicc (1)            - little cms PostScript converter.
pskctool (1)         - Portable Symmetric Key Container (PSKC) tool
psl (1)              - Explore the Public Suffix List
psl-make-dafsa (1)   - generate a compact and optimized DAFSA from a Public Suffix List
pslog (1)            - report current logs path of a process
pstree (1)           - display a tree of processes
ptar (1perl)         - a tar-like program written in perl
ptardiff (1perl)     - program that diffs an extracted archive against an unextracted one
ptargrep (1perl)     - Apply pattern matching to the contents of files in a tar archive
ptx (1)              - produce a permuted index of file contents
pulseaudio (1)       - The PulseAudio Sound System
pv (1)               - monitor the progress of data through a pipe
pw-cli (1)           - The PipeWire Command Line Interface
pw-config (1)        - Debug PipeWire Config parsing
pw-dot (1)           - The PipeWire dot graph dump
pw-link (1)          - The PipeWire Link Command
pw-metadata (1)      - The PipeWire metadata
pw-mon (1)           - The PipeWire monitor
pw-profiler (1)      - The PipeWire profiler
pw-top (1)           - The PipeWire process viewer
pwait (1)            - look up, signal, or wait for processes based on name and other attributes
pwd (1)              - print name of current/working directory
pwdx (1)             - report current working directory of a process
pwmake (1)           - simple tool for generating random relatively easily pronounceable passwords
pwscore (1)          - simple configurable tool for checking quality of a password
pygmentize (1)       - highlights the input file
python (1)           - an interpreted, interactive, object-oriented programming language
python3 (1)          - an interpreted, interactive, object-oriented programming language
python3.11 (1)       - an interpreted, interactive, object-oriented programming language
qbittorrent (1)      - a Bittorrent client written in C++ / Qt
qcatool-qt5 (1)      - command line tool for the Qt Cryptographic Architecture
qemu (1)             - QEMU User Documentation
qemu-img (1)         - QEMU disk image utility
qemu-storage-daemon (1) - QEMU storage daemon
qemu-system-i386 (1) - QEMU User Documentation
qemu-system-x86_64 (1) - QEMU User Documentation
qmi-firmware-update (1) - Update firmware in QMI devices
qmi-network (1)      - Simple network management of QMI devices
qmicli (1)           - Control QMI devices
qpdf (1)             - PDF transformation software
qrencode (1)         - Encode input data in a QR Code and save as a PNG or EPS image.
qv4l2 (1)            - A test bench application for video4linux devices
qvidcap (1)          - A v4l2 video capture viewer
rand (1ssl)          - OpenSSL application commands
ranger (1)           - visual file manager
ranlib (1)           - generate an index to an archive
rapper (1)           - Raptor RDF parsing and serializing utility
raw2tiff (1)         - create a TIFF file from a raw data file
rcp (1)              - Remote copy
rctest (1)           - RFCOMM testing
rdjpgcom (1)         - display text comments from a JPEG file
readelf (1)          - display information about ELF files
urxvt-readline (1)   - improve readline editing
readlink (1)         - print resolved symbolic links or canonical file names
readtags (1)         - Find tag file entries matching specified names
realpath (1)         - print the resolved path
recode-sr-latin (1)  - convert Serbian text from Cyrillic to Latin script
refer (1)            - preprocess bibliographic references for groff
reflector (1)        - retrieve and filter the latest Pacman mirrorlist
rehash (1ssl)        - OpenSSL application commands
urxvt-remote-clipboard (1) - manage a shared and possibly remote clipboard
remote-viewer (1)    - a simple remote desktop client
rename (1)           - rename files
renice (1)           - alter priority of running processes
req (1ssl)           - OpenSSL application commands
reset (1)            - terminal initialization
resize (1)           - set environment and terminal settings to current xterm window size
resolvectl (1)       - Resolve domain names, IPV4 and IPv6 addresses, DNS resource records, and services; introspect and reconfigure the DNS resolver
rev (1)              - reverse lines characterwise
rg (1)               - recursively search the current directory for lines matching a pattern
rgb2ycbcr (1)        - convert non-YCbCr TIFF images to a YCbCr TIFF image
ri (1)               - Ruby API reference front end
rifle (1)            - ranger's file opener
rlogin (1)           - Remote login
rm (1)               - remove files or directories
rmdir (1)            - remove empty directories
rnano (1)            - a restricted nano
roff2dvi (1)         - transform roff code into dvi mode
roff2html (1)        - transform roff code into html mode
roff2pdf (1)         - transform roff code into pdf mode
roff2ps (1)          - transform roff code into ps mode
roff2text (1)        - transform roff code into text mode
roff2x (1)           - transform roff code into x mode
rofi (1)             - A window switcher, application launcher, ssh dialog, dmenu replacement and more
rofi-sensible-terminal (1) - launches $TERMINAL with fallbacks
rofi-theme-selector (1) - Preview and apply themes for rofi
rofiles-fuse (1)     - Use FUSE to create a view where directories are writable, files are immutable
rpcclient (1)        - tool for executing client side MS-RPC functions
rrsync (1)           - a script to setup restricted rsync users via ssh logins
rsa (1ssl)           - OpenSSL application commands
rsautl (1ssl)        - OpenSSL application commands
rsh (1)              - Remote shell client
rsvg-convert (1)     - Render SVG documents to PNG images, or convert them to PDF or PS.
rsync (1)            - a fast, versatile, remote (and local) file-copying tool
rsync-ssl (1)        - a helper script for connecting to an ssl rsync daemon
rtmpdump (1)         - RTMP streaming media client
ruby (1)             - Interpreted object-oriented scripting language
run-on-ac (1)        - run command when on ac power
run-on-bat (1)       - run command when on battery power
runcon (1)           - run command with specified security context
runuser (1)          - run a command with substitute user and group ID
rview (1)            - Vi IMproved, a programmer's text editor
rvim (1)             - Vi IMproved, a programmer's text editor
s_client (1ssl)      - OpenSSL application commands
s_server (1ssl)      - OpenSSL application commands
s_time (1ssl)        - OpenSSL application commands
sane-config (1)      - get information about the installed version of libsane
sane-find-scanner (1) - find SCSI and USB scanners and their device files
scalar (1)           - A tool for managing large Git repositories
scanimage (1)        - scan an image
scdaemon (1)         - Smartcard daemon for the GnuPG system
sclient (1)          - sample Kerberos version 5 client
scmp_sys_resolver (1) - Resolve system calls
scp (1)              - OpenSSH secure file copy
screen (1)           - screen manager with VT100/ANSI terminal emulation
screendump (1)       - dump the contents of a virtual console to stdout
script (1)           - make typescript of terminal session
scriptlive (1)       - re-run session typescripts, using timing information
scriptreplay (1)     - play back typescripts, using timing information
scrot (1)            - command line screen capture utility
sddm (1)             - the simple desktop display manager
sddm-greeter (1)     - sddm display manager greeter
sdiff (1)            - side-by-side merge of file differences
urxvt-searchable-scrollback (1) - incremental scrollback search
secret-tool (1)      - Store and retrieve passwords
sed (1)              - stream editor for filtering and transforming text
urxvt-selection (1)  - more intelligent selection
urxvt-selection-autotransform (1) - automatically transform select text
urxvt-selection-pastebin (1) - automatic pastebin upload
urxvt-selection-popup (1) - selection management pop-up
urxvt-selection-to-clipboard (1) - copy the selection to the clipboard each time a selection is made
sendiso (1)          - send IEEE 1394 isochronous packets from dump file
sensors (1)          - print sensors information
sepdebugcrcfix (1)   - fixes CRC for separate .debug files
seq (1)              - print a sequence of numbers
serdi (1)            - read and write RDF syntax
sess_id (1ssl)       - OpenSSL application commands
sessreg (1)          - manage utmpx/wtmpx entries for non-init clients
setcifsacl (1)       - Userspace helper to alter components of a security descriptor for Common Internet File System (CIFS)
setfacl (1)          - set file access control lists
setfattr (1)         - set extended attributes of filesystem objects
setleds (1)          - set the keyboard leds
setmetamode (1)      - define the keyboard meta key handling
setpriv (1)          - run a program with different Linux privilege settings
setsid (1)           - run a program in a new session
setterm (1)          - set terminal attributes
setxkbmap (1)        - set the keyboard using the X Keyboard Extension
sftp (1)             - OpenSSH secure file transfer
sg (1)               - execute command as different group ID
sha1sum (1)          - compute and check SHA1 message digest
sha224sum (1)        - compute and check SHA224 message digest
sha256sum (1)        - compute and check SHA256 message digest
sha384sum (1)        - compute and check SHA384 message digest
sha512sum (1)        - compute and check SHA512 message digest
shasum (1perl)       - Print or Check SHA Checksums
shout (1)            - Icecast source client
showkey (1)          - examine the codes sent by the keyboard
shred (1)            - overwrite a file to hide its contents, and optionally delete it
shuf (1)             - generate random permutations
signtool (1)         - Digitally sign objects and files.
signver (1)          - Verify a detached PKCS#7 signature for a file.
simple-scan (1)      - Scanning utility
simplescreenrecorder (1) - A feature-rich screen recorder that supports X11 and OpenGL.
sixel2png (1)        - convert DEC SIXEL images into PNG format images
size (1)             - list section sizes and total size of binary files
slabtop (1)          - display kernel slab cache information in real time
sleep (1)            - delay for a specified amount of time
slirpvde (1)         - Virtual Distributed Ethernet-Slirp interface
slogin (1)           - OpenSSH remote login client
slsh (1)             - Interpreter for S-Lang scripts
smb2-quota (1)       - Userspace helper to display quota information for the Linux SMB client file system (CIFS)
smbcacls (1)         - Set or get ACLs on an NT file or directory names
smbclient (1)        - ftp-like client to access SMB/CIFS resources on servers
smbcquotas (1)       - Set or get QUOTAs of NTFS 5 shares
smbget (1)           - wget-like utility for download files over SMB
smbinfo (1)          - Userspace helper to display SMB-specific file information for the Linux SMB client file system (CIFS)
smbtar (1)           - shell script for backing up SMB/CIFS shares directly to UNIX tape drives
smbtree (1)          - A text based smb network browser
smime (1ssl)         - OpenSSL application commands
smproxy (1)          - Session Manager Proxy
sndfile-cmp (1)      - compare two audio files
sndfile-concat (1)   - concatenate audio data from two or more audio files
sndfile-convert (1)  - convert sound files from one format to another
sndfile-deinterleave (1) - convert mono files into a multi-channel file and vice versa
sndfile-info (1)     - display information about sound files
sndfile-interleave (1) - convert mono files into a multi-channel file and vice versa
sndfile-metadata-get (1) - get or set metadata in a sound file
sndfile-metadata-set (1) - get or set metadata in a sound file
sndfile-play (1)     - play a sound file
sndfile-salvage (1)  - salvage audio data from WAV files longer than 4G
snmp-bridge-mib (1)  - provide Linux bridge information via SNMP
snmpbulkget (1)      - communicates with a network entity using SNMP GETBULK requests.
snmpbulkwalk (1)     - retrieve a subtree of management values using SNMP GETBULK requests
snmpcmd (1)          - options and behaviour common to most of the Net-SNMP command-line tools
snmpconf (1)         - creates and modifies SNMP configuration files
snmpdelta (1)        - Monitor delta differences in SNMP Counter values
snmpdf (1)           - display disk space usage on a network entity via SNMP
snmpget (1)          - communicates with a network entity using SNMP GET requests
snmpgetnext (1)      - communicates with a network entity using SNMP GETNEXT requests
snmpinform (1)       - sends an SNMP notification to a manager
snmpnetstat (1)      - display networking status and configuration information from a network entity via SNMP
snmpps (1)           - display process table on a network entity via SNMP
snmpset (1)          - communicates with a network entity using SNMP SET requests
snmpstatus (1)       - retrieves a fixed set of management information from a network entity
snmptable (1)        - retrieve an SNMP table and display it in tabular form
snmptest (1)         - communicates with a network entity using SNMP requests
snmptop (1)          - display process table on a network entity via SNMP
snmptranslate (1)    - translate MIB OID names between numeric and textual forms
snmptrap (1)         - sends an SNMP notification to a manager
snmpusm (1)          - creates and maintains SNMPv3 users on a network entity
snmpvacm (1)         - creates and maintains SNMPv3 View-based Access Control entries on a network entity
snmpwalk (1)         - retrieve a subtree of management values using SNMP GETNEXT requests
soelim (1)           - interpret .so requests in groff input
sord_validate (1)    - Validate RDF data
sordi (1)            - Load and re-serialise RDF data
sort (1)             - sort lines of text files
speaker-test (1)     - command-line speaker test tone generator for ALSA
speed (1ssl)         - OpenSSL application commands
speexdec (1)         - The reference implementation speex decoder.
speexenc (1)         - The reference implementation speex encoder.
spice-client (1)     - a client-side library to access remote SPICE displays
spkac (1ssl)         - OpenSSL application commands
split (1)            - split a file into pieces
splitfont (1)        - extract characters from an ISO-type font.
sprof (1)            - read and display shared object profiling data
sqfscat (1)          - tool to cat files from a squashfs filesystem to stdout
sqfstar (1)          - tool to create a squashfs filesystem from a tar archive
sqlhist (1)          - Tool that uses SQL language to create / show creation of tracefs histograms and synthetic events.
sqlite3 (1)          - A command line interface for SQLite version 3
srp (1ssl)           - OpenSSL application commands
ssh (1)              - OpenSSH remote login client
ssh-add (1)          - adds private key identities to the OpenSSH authentication agent
ssh-agent (1)        - OpenSSH authentication agent
ssh-copy-id (1)      - use locally available keys to authorise logins on a remote machine
ssh-keygen (1)       - OpenSSH authentication key utility
ssh-keyscan (1)      - gather SSH public keys from servers
ssltap (1)           - Tap into SSL connections and display the data going by
ssr-glinject (1)     - Run a command while injecting the SimpleScreenRecorder GLInject library.
start-pulseaudio-x11 (1) - PulseAudio Sound Server X11 Startup Script
startx (1)           - initialize an X session
stat (1)             - display file or file system status
stdbuf (1)           - Run COMMAND, with modified buffering operations for its standard streams.
stest (1)            - filter a list of files by properties
stoken (1)           - software token for cryptographic authentication
stoken-gui (1)       - GTK+ software token
storeutl (1ssl)      - OpenSSL application commands
strace (1)           - trace system calls and signals
strace-log-merge (1) - merge strace -ff -tt output
stream (1)           - a lightweight tool to stream one or more pixel components of the image or portion of the image to your choice of storage formats.
streamzip (1perl)    - create a zip file from stdin
strings (1)          - print the sequences of printable characters in files
strip (1)            - discard symbols and other data from object files
stty (1)             - change and print terminal line settings
su (1)               - run a command with substitute user and group ID
sum (1)              - checksum and count the blocks in a file
sxpm (1)             - Show an XPM (X PixMap) file and/or convert XPM 1 or 2 files to XPM 3.
sync (1)             - Synchronize cached writes to persistent storage
synctex (1)          - command line client tool to support the Synchronize TeXnology available in most TeX engines.
syslinux (1)         - install the SYSLINUX bootloader on a FAT filesystem
syslinux2ansi (1)    - converts a syslinux-format screen to pc-ansi
system-config-printer (1) - configure a CUPS server
system-config-printer-applet (1) - print job manager
systemctl (1)        - Control the systemd system and service manager
systemd (1)          - systemd system and service manager
systemd-ac-power (1) - Report whether we are connected to an external power source
systemd-analyze (1)  - Analyze and debug system manager
systemd-ask-password (1) - Query the user for a system password
systemd-cat (1)      - Connect a pipeline or program's output with the journal
systemd-cgls (1)     - Recursively show control group contents
systemd-cgtop (1)    - Show top control groups by their resource usage
systemd-creds (1)    - Lists, shows, encrypts and decrypts service credentials
systemd-cryptenroll (1) - Enroll PKCS#11, FIDO2, TPM2 token/devices to LUKS2 encrypted volumes
systemd-delta (1)    - Find overridden configuration files
systemd-detect-virt (1) - Detect execution in a virtualized environment
systemd-dissect (1)  - Dissect Discoverable Disk Images (DDIs)
systemd-escape (1)   - Escape strings for usage in systemd unit names
systemd-firstboot (1) - Initialize basic system settings on or before the first boot-up of a system
systemd-firstboot.service (1) - Initialize basic system settings on or before the first boot-up of a system
systemd-id128 (1)    - Generate and print sd-128 identifiers
systemd-inhibit (1)  - Execute a program with an inhibition lock taken
systemd-machine-id-setup (1) - Initialize the machine ID in /etc/machine-id
systemd-measure (1)  - Pre-calculate and sign expected TPM2 PCR values for booted unified kernel images
systemd-mount (1)    - Establish and destroy transient mount or auto-mount points
systemd-notify (1)   - Notify service manager about start-up completion and other daemon status changes
systemd-nspawn (1)   - Spawn a command or OS in a light-weight container
systemd-path (1)     - List and query system and user paths
systemd-run (1)      - Run programs in transient scope units, service units, or path-, socket-, or timer-triggered service units
systemd-socket-activate (1) - Test socket activation of daemons
systemd-stdio-bridge (1) - D-Bus proxy
systemd-tty-ask-password-agent (1) - List or process pending systemd password requests
systemd-umount (1)   - Establish and destroy transient mount or auto-mount points
systool (1)          - view system device information by bus, class, and topology
urxvt-tabbed (1)     - tabbed interface to urxvt
tabs (1)             - set tabs on a terminal
tac (1)              - concatenate and print files in reverse
tail (1)             - output the last part of files
talk (1)             - Talk client
tar (1)              - an archiving utility
taskset (1)          - set or retrieve a process's CPU affinity
tbl (1)              - format tables for troff
tclsh (1)            - Simple shell containing Tcl interpreter
tcpdump (1)          - dump traffic on a network
tcpspray (1)         - TCP/IP bandwidth measurement tool (Discard and Echo client)
tcpspray6 (1)        - TCP/IP bandwidth measurement tool (Discard and Echo client)
tee (1)              - read from standard input and write to standard output and files
telnet (1)           - User interface to TELNET
test (1)             - check file types and compare values
testlibraw (1)       - run basic functionality tests on libraw1394
texi2any (1)         - translate Texinfo documents
texi2dvi (1)         - convert Texinfo documents to DVI or PDF
texi2pdf (1)         - convert Texinfo documents to DVI or PDF
texindex (1)         - sort Texinfo index files
tfmtodit (1)         - create font files for use with groff -Tdvi
thumbnail (1)        - create a TIFF file with thumbnail images
Thunar (1)           - File Manager for the Xfce Desktop Environment
tic (1m)             - the terminfo entry-description compiler
tiff2bw (1)          - convert a color TIFF image to greyscale
tiff2pdf (1)         - convert a TIFF image to a PDF document
tiff2ps (1)          - convert TIFF image to PostScript™
tiff2rgba (1)        - convert a TIFF image to RGBA color space
tiffcmp (1)          - compare two TIFF files
tiffcp (1)           - copy (and possibly convert) a TIFF file
tiffcrop (1)         - select, copy, crop, convert, extract, and/or process one or more TIFF files
tiffdither (1)       - convert a greyscale TIFF image to bilevel using dithering
tiffdump (1)         - print verbatim information about TIFF files
tiffgt (1)           - display an image stored in a TIFF file (Silicon Graphics version)
tiffinfo (1)         - print information about TIFF files
tiffmedian (1)       - apply the median cut algorithm to data in a TIFF file
tiffset (1)          - set or unset a field in a TIFF header
tiffsplit (1)        - split a multi-image TIFF into single-image TIFF files
tificc (1)           - little cms ICC profile applier for TIFF.
time (1)             - time a simple command or give resource usage
timedatectl (1)      - Control the system time and date
timeout (1)          - run a command with a time limit
tkmib (1)            - an interactive graphical MIB browser for SNMP
tldr (1)             - tldr 3.2.0
tload (1)            - graphic representation of system load average
tmux (1)             - terminal multiplexer
toast (1)            - GSM 06.10 lossy sound compression
toe (1m)             - table of (terminfo) entries
top (1)              - display Linux processes
touch (1)            - change file timestamps
touchpad-edge-detector (1) - print the axis ranges for a touchpad device
tput (1)             - initialize a terminal or query terminfo database
tr (1)               - translate or delete characters
tracker-xdg-portal-3 (1) - Portal to Tracker endpoints
tracker3-endpoint (1) - Create a SPARQL endpoint
tracker3-export (1)  - Export all data from a Tracker database.
tracker3-import (1)  - Import data into a Tracker database.
tracker3-sparql (1)  - Use SparQL to query the Tracker databases.
tracker3-sql (1)     - Use SQL to query the Tracker databases.
transicc (1)         - little cms ColorSpace conversion calculator.
traptoemail (1)      - snmptrapd handler script to convert snmp traps into emails
tree (1)             - list contents of directories in a tree-like format.
trietool (1)         - trie manipulation tool
trietool-0.2 (1)     - trie manipulation tool
troff (1)            - the troff processor of the groff text formatting system
true (1)             - do nothing, successfully
truncate (1)         - shrink or extend the size of a file to the specified size
trust (1)            - Tool for operating on the trust policy store
ts (1ssl)            - OpenSSL application commands
ts_calibrate (1)     - A test program to calibrate a touch screen used by tslib.
ts_conf (1)          - A test program to test the ts_conf_get() and ts_conf_set() API
ts_finddev (1)       - Discover touch screen devices.
ts_harvest (1)       - Harvest hundreds of raw touch screen coordinates.
ts_print (1)         - A very basic test routine for tslib.
ts_print_mt (1)      - A very basic multitouch test routine for tslib.
ts_print_raw (1)     - A very basic test routine for tslib.
ts_test (1)          - A basic test routine for tslib.
ts_test_mt (1)       - A basic multitouch test program for tslib.
ts_uinput (1)        - A daemon program creating a tslib-filtered and calibrated input event device
ts_verify (1)        - A basic test routine for tslib's API.
tset (1)             - terminal initialization
tsget (1ssl)         - Time Stamping HTTP/HTTPS client
tsort (1)            - perform topological sort
tty (1)              - print the file name of the terminal connected to standard input
twolame (1)          - an optimised MPEG Audio Layer 2 (MP2) encoder
uchardet (1)         - Universal Charset Detector
uclampset (1)        - manipulate the utilization clamping attributes of the system or a process
uconv (1)            - convert data from one encoding to another
udfinfo (1)          - show information about UDF filesystem
udisksctl (1)        - The udisks command line tool
ueberzug (1)         - display images in a terminal
ueberzugpp (1)       - display images in a terminal
ul (1)               - do underlining
ulockmgr_server (1)  - Lock Manager Server for FUSE filesystems
umount.ecryptfs_private (1) - eCryptfs private unmount helper.
uname (1)            - print system information
unexpand (1)         - convert spaces to tabs
urxvt (1)            - (a VT102 emulator for the X window system)
unicode_start (1)    - put keyboard and console in unicode mode
unicode_stop (1)     - revert keyboard and console from unicode mode
uniq (1)             - report or omit repeated lines
unixcmd (1)          - Simple remote command for unix sockets
unixterm (1)         - (simple) Remote terminal for unix sockets
unlink (1)           - call the unlink function to remove the specified file
unlz4 (1)            - lz4, unlz4, lz4cat - Compress or decompress .lz4 files
unlzma (1)           - Compress or decompress .xz and .lzma files
unshare (1)          - run program in new namespaces
unsquashfs (1)       - tool to uncompress, extract and list squashfs filesystems
unxrandr (1)         - inverse tool of xrandr
unxz (1)             - Compress or decompress .xz and .lzma files
unzip (1)            - list, test and extract compressed files in a ZIP archive
unzipsfx (1)         - self-extracting stub for prepending to ZIP archives
unzstd (1)           - zstd, zstdmt, unzstd, zstdcat - Compress or decompress .zst files
update-desktop-database (1) - Build cache database of MIME types handled by desktop files
update-mime-database (1) - a program to build the Shared MIME-Info database cache
upower (1)           - UPower command line tool
uptime (1)           - Tell how long the system has been running.
urclock (1)          - (unknown subject)
urxvt-extensions (1) - briefly list urxvt perl extensions
urxvt-xim-onthespot (1) - implement XIM "on-the-spot" behaviour
urxvtc (1)           - control the urxvtd daemon
urxvtd (1)           - urxvt terminal daemon
usb-devices (1)      - print USB device details
usb_modeswitch (1)   - control the mode of 'multi-state' USB devices
usb_modeswitch_dispatcher (1) - Linux wrapper for usb_modeswitch (not intended for direct invocation)
usbredirect (1)      - exporting an USB device for use from another (virtual) machine
userdbctl (1)        - Inspect users, groups and group memberships
users (1)            - print the user names of users currently logged in to the current host
utmpdump (1)         - dump UTMP and WTMP files in raw format
uuidcdef (1)         - a universally unique identifier (UUID) generator for XPLC
uuidgen (1)          - create a new UUID value
uuidparse (1)        - a utility to parse unique identifiers
uxterm (1)           - X terminal emulator for Unicode (UTF-8) environments
v4l2-compliance (1)  - An application to test video4linux drivers
v4l2-ctl (1)         - An application to control video4linux drivers
v4l2-tracer (1)      - An application to trace and replay stateless video decoding.
vde_autolink (1)     - automatically create and maintain vde connections
vde_cryptcab (1)     - Virtual Distributed Ethernet encrypted cable manager
vde_l3 (1)           - Virtual Distributed Ethernet 'Layer 3' Switch.
vde_over_ns (1)      - Steganographic cable over NS protocol for Virtual Distributed Ethernet
vde_pcapplug (1)     - Virtual Distributed Ethernet libpcap cable
vde_plug (1)         - Virtual Distributed Ethernet plug (two plugs creates a vde cable)
vde_plug2tap (1)     - Virtual Distributed Ethernet plug-to-tap
vde_router (1)       - Virtual Distributed Ethernet Router.
vde_switch (1)       - Virtual Distributed Ethernet switch
vde_vxlan (1)        - VXLAN tunnel endpoint for VDE
vdecmd (1)           - Simple remote command for unix sockets
vdekvm (1)           - Virtual Distributed Ethernet wrapper for QEMU/KVM virtual machines
vdeq (1)             - Virtual Distributed Ethernet wrapper for QEMU/KVM virtual machines
vdeqemu (1)          - Virtual Distributed Ethernet wrapper for QEMU/KVM virtual machines
vdetaplib (1)        - Virtual Distributed Ethernet tap emulation library
vdeterm (1)          - (simple) Remote terminal for vde management sockets
vdir (1)             - list directory contents
verify (1ssl)        - OpenSSL application commands
version (1ssl)       - OpenSSL application commands
vim (1)              - Vi IMproved, a programmer's text editor
vimdiff (1)          - edit between two and eight versions of a file with Vim and show differences
vimtutor (1)         - the Vim tutor
vips (1)             - run vips operations from the command line
vipsedit (1)         - edit header of a vips image file
vipsheader (1)       - prints information about an image file
vipsprofile (1)      - analyze vips profiles
vipsthumbnail (1)    - make thumbnails of image files
virsh (1)            - management user interface
virt-admin (1)       - daemon administration interface
virt-clone (1)       - clone existing virtual machine images
virt-host-validate (1) - validate host virtualization setup
virt-install (1)     - provision new virtual machines
virt-login-shell (1) - tool to execute a shell within a container
virt-manager (1)     - Graphical tool for managing libvirt VMs
virt-pki-query-dn (1) - extract Distinguished Name from a PEM certificate
virt-pki-validate (1) - validate libvirt PKI files are configured correctly
virt-qemu-qmp-proxy (1) - Expose a QMP proxy server for a libvirt QEMU guest
virt-qemu-run (1)    - Run a standalone QEMU guest
virt-qemu-sev-validate (1) - validate a domain AMD SEV launch measurement
virt-viewer (1)      - display the graphical console for a virtual machine
virt-xml (1)         - Edit libvirt XML using command line options.
virt-xml-validate (1) - validate libvirt XML files against a schema
virtfs-proxy-helper (1) - QEMU 9p virtfs proxy filesystem helper
vlc-wrapper (1)      - a wrapper to drop privileges with VLC
vlock (1)            - Virtual Console lock program
vmmouse_detect (1)   - VMware mouse device autodetection tool
w (1)                - Show who is logged on and what they are doing.
w3m (1)              - a text based web browser and pager
w3mman (1)           - an interface to the on-line reference manuals via w3m(1)
waitpid (1)          - utility to wait for arbitrary processes
wall (1)             - write a message to all users
watch (1)            - execute a program periodically, showing output fullscreen
watchgnupg (1)       - Read and print logs from a socket
wavpack (1)          - encode audio files to wavpack
wc (1)               - print newline, word, and byte counts for each file
webpinfo (1)         - print out the chunk level structure of WebP files along with basic integrity checks.
webpmux (1)          - create animated WebP files from non-animated WebP images, extract frames from animated WebP images, and manage XMP/EXIF metadata and ICC profile.
whatis (1)           - display one-line manual page descriptions
whereis (1)          - locate the binary, source, and manual page files for a command
which (1)            - shows the full path of (shell) commands.
whiptail (1)         - display dialog boxes from shell scripts
who (1)              - show who is logged on
whoami (1)           - print effective user name
wifi (1)             - enable/disable internal Wi-Fi device
wildmidi (1)         - example player for libWildMidi
wirefilter (1)       - Wire packet filter for Virtual Distributed Ethernet
wish (1)             - Simple windowing shell
wmctrl (1)           - interact with a EWMH/NetWM compatible X Window Manager.
write (1)            - send a message to another user
wrjpgcom (1)         - insert text comments into a JPEG file
wrudf (1)            - Maintain a UDF filesystem.
wvdial (1)           - PPP dialer with built-in intelligence.
wvdialconf (1)       - build a configuration file for wvdial (1)
wvgain (1)           - adds ReplayGain information to wavpack files
wvtag (1)            - metadata utility for wavpack files
wvunpack (1)         - decodes wavpack encoded files
wwan (1)             - enable/disable internal WWAN (3G/4G/5G) device
x11perf (1)          - X11 server performance test program
x11perfcomp (1)      - X11 server performance comparison program
x509 (1ssl)          - OpenSSL application commands
xargs (1)            - build and execute command lines from standard input
xauth (1)            - X authority file utility
xb-tool (1)          - standalone XMLb utility
xbacklight (1)       - adjust backlight brightness using RandR extension
xclip (1)            - command line interface to X selections (clipboard)
xclip-copyfile (1)   - copy and move files via the X clipboard
xcmsdb (1)           - Device Color Characterization utility for X Color Management System
xcursorgen (1)       - create an X cursor file from a collection of PNG images
xdg-dbus-proxy (1)   - D-Bus proxy
xdg-desktop-icon (1) - command line tool for (un)installing icons to the desktop
xdg-desktop-menu (1) - command line tool for (un)installing desktop menu items
xdg-email (1)        - command line tool for sending mail using the user's preferred e-mail composer
xdg-icon-resource (1) - command line tool for (un)installing icon resources
xdg-mime (1)         - command line tool for querying information about file type handling and adding descriptions for new file types
xdg-open (1)         - opens a file or URL in the user's preferred application
xdg-screensaver (1)  - command line tool for controlling the screensaver
xdg-settings (1)     - get various settings from the desktop environment
xdg-user-dir (1)     - Find an XDG user dir
xdg-user-dirs-update (1) - Update XDG user dir configuration
xdo (1)              - Perform actions on windows
xdotool (1)          - command-line X11 automation tool
xdpr (1)             - dump an X window directly to a printer
xdpyinfo (1)         - display information utility for X
xdriinfo (1)         - query configuration information of DRI drivers
xev (1)              - print contents of X events
xfce4-dict (1)       - a client program to query different dictionaries
xfce4-notifyd-config (1) - configuration GUI for xfce4-notifyd
xfce4-panel-profiles (1) - A simple application to manage Xfce panel layouts
xfce4-popup-whiskermenu (1) - shows Whisker Menu
xfce4-power-manager (1) - The Xfce 4 Power manager
xfce4-power-manager-settings (1) - Settings dialog for the Xfce 4 Power manager
xfce4-screensaver (1) - The Xfce Desktop Screensaver and Locker
xfce4-screensaver-command (1) - controls Xfce screensaver
xfce4-screensaver-preferences (1) - Configure Xfce Screensaver
xfce4-screenshooter (1) - manual page for xfce4-screenshooter 1.10.4
xfce4-sensors (1)    - (unknown subject)
xfce4-session (1)    - Starts up the Xfce Desktop Environment
xfce4-session-logout (1) - Logs out from Xfce
xfce4-terminal (1)   - A Terminal emulator for X
xfdesktop (1)        - The Xfce 4 Desktop Environment's desktop manager
xgamma (1)           - Alter a monitor's gamma correction through the X server
xgettext (1)         - extract gettext strings from source
xhost (1)            - server access control program for X
xinit (1)            - X Window System initializer
xinput (1)           - utility to configure and test X input devices
xkbbell (1)          - XKB extension user utility
xkbcli (1)           - tool to interact with XKB keymaps
xkbcli-compile-keymap (1) - (unknown subject)
xkbcli-how-to-type (1) - (unknown subject)
xkbcli-interactive-evdev (1) - (unknown subject)
xkbcli-interactive-wayland (1) - (unknown subject)
xkbcli-interactive-x11 (1) - (unknown subject)
xkbcli-list (1)      - (unknown subject)
xkbcomp (1)          - compile XKB keyboard description
xkbevd (1)           - XKB event daemon
xkbvleds (1)         - XKB extension user utility
xkbwatch (1)         - XKB extension user utility
xkill (1)            - kill a client by its X resource
xlsatoms (1)         - list interned atoms defined on server
xlsclients (1)       - list client applications running on a display
Xmark (1)            - summarize x11perf results
xmessage (1)         - display a message or query in a window (X-based /bin/echo)
xml2-config (1)      - script to get information about the installed version of libxml2
xmlcatalog (1)       - Command line tool to parse and manipulate XML or SGML catalog files.
xmllint (1)          - command line XML tool
xmlsec1 (1)          - sign, verify, encrypt and decrypt XML documents
xmlsec1-config (1)   - detail installed version of xmlsec library
xmlwf (1)            - Determines if an XML document is well-formed
xmodmap (1)          - utility for modifying keymaps and pointer button mappings in X
Xorg (1)             - X11R7 X server
Xorg.wrap (1)        - Xorg X server binary wrapper
xorrecord (1)        - Emulation of CD/DVD/BD program cdrecord by program xorriso
xorriso (1)          - creates, loads, manipulates and writes ISO 9660 filesystem images with Rock Ridge extensions.
xorriso-dd-target (1) - Device evaluator and disk image copier for GNU/Linux
xorriso-tcltk (1)    - Educational GUI frontend for xorriso
xorrisofs (1)        - Emulation of ISO 9660 program mkisofs by program xorriso
xpr (1)              - print an X window dump
xprop (1)            - property displayer for X
xpstojpeg (1)        - XPS to JPEG converter
xpstopdf (1)         - XPS to PDF converter
xpstopng (1)         - XPS to PNG converter
xpstops (1)          - XPS to PostScript converter
xpstosvg (1)         - XPS to SVG converter
xrandr (1)           - primitive command line interface to RandR extension
xrdb (1)             - X server resource database utility
xrefresh (1)         - refresh all or part of an X screen
xsane (1)            - scanner frontend for SANE
xsel (1x)            - manipulate the X selection.
Xserver (1)          - X Window System display server
xset (1)             - user preference utility for X
xsetroot (1)         - root window parameter setting utility for X
xsltproc (1)         - command line XSLT processor
xsubpp (1perl)       - compiler to convert Perl XS code into C code
xterm (1)            - terminal emulator for X
xtotroff (1)         - convert X font metrics into GNU troff font metrics
xvinfo (1)           - Print out X-Video extension adaptor information
xwd (1)              - dump an image of an X window
xwininfo (1)         - window information utility for X
xwud (1)             - image displayer for X
xxd (1)              - make a hexdump or do the reverse.
xxh128sum (1)        - print or check xxHash non-cryptographic checksums
xxh32sum (1)         - print or check xxHash non-cryptographic checksums
xxh64sum (1)         - print or check xxHash non-cryptographic checksums
xxhsum (1)           - print or check xxHash non-cryptographic checksums
xz (1)               - Compress or decompress .xz and .lzma files
xzcat (1)            - Compress or decompress .xz and .lzma files
xzcmp (1)            - compare compressed files
xzdec (1)            - Small .xz and .lzma decompressors
xzdiff (1)           - compare compressed files
xzegrep (1)          - search compressed files for a regular expression
xzfgrep (1)          - search compressed files for a regular expression
xzgrep (1)           - search compressed files for a regular expression
xzless (1)           - view xz or lzma compressed (text) files
xzmore (1)           - view xz or lzma compressed (text) files
y4mcolorbars (1)     - Create a YUV4MPEG2 stream containing a colorbar test pattern
y4mdenoise (1)       - Motion-compensating YUV4MPEG-frame denoiser
y4mscaler (1)        - Scale/crop/translate a YUV4MPEG2 stream
y4mtopnm (1)         - Convert a YUV4MPEG2 stream to PNM images
y4mtoppm (1)         - Convert YUV4MPEG2 stream to PPM images
y4munsharp (1)       - Unsharp filter for YUV4MPEG2 streams
yacc (1)             - GNU Project parser generator
yad (1)              - display GTK+ dialogs from shell scripts or command-line
yad-tools (1)        - show some miscellaneous stuff.
yes (1)              - output a string repeatedly until killed
yt-dlp (1)           - A youtube-dl fork with additional features and patches
yuv2lav (1)          - encodes lavtool's raw YUV frame streams into MJPEG files
yuvdenoise (1)       - Motion-Compensating-YUV4MPEG2-frame-denoiser
yuvfps (1)           - Converts to a different frame rate
yuvinactive (1)      - Set a part of the video to a defined state
yuvkineco (1)        - revert 2-3 pulldown movie
yuvmedianfilter (1)  - A filter for yuv images produced by the mjpeg tools
yuvplay (1)          - Display YUV4MPEG2 streams (using SDL)
yuvscaler (1)        - UPscales or DOWNscales a YUV4MPEG2 stream to a specified format
yuvycsnoise (1)      - Noise filter specialized for NTSC Y/C separation noise
zbarcam (1)          - scan and decode bar codes from a video device
zbarimg (1)          - scan and decode bar codes from image file(s)
zcat (1)             - compress or expand files
zcmp (1)             - compare compressed files
zdiff (1)            - compare compressed files
zenity (1)           - display GTK+ dialogs
zforce (1)           - force a '.gz' extension on all gzip files
zgrep (1)            - search possibly compressed files for a regular expression
zip (1)              - package and compress (archive) files
zipcloak (1)         - encrypt entries in a zipfile
zipcmp (1)           - compare contents of zip archives
zipdetails (1perl)   - display the internal structure of zip files
zipgrep (1)          - search files in a ZIP archive for lines matching a pattern
zipinfo (1)          - list detailed information about a ZIP archive
zipmerge (1)         - merge zip archives
zipnote (1)          - write the comments in zipfile to stdout, edit comments and rename files in zipfile
zipsplit (1)         - split a zipfile into smaller zipfiles
ziptool (1)          - modify zip archives
zless (1)            - file perusal filter for crt viewing of compressed text
zlib-flate (1)       - raw zlib compression program
zmore (1)            - file perusal filter for crt viewing of compressed text
znew (1)             - recompress .Z files to .gz files
zsh (1)              - the Z shell
zshall (1)           - the Z shell meta-man page
zshbuiltins (1)      - zsh built-in commands
zshcalsys (1)        - zsh calendar system
zshcompctl (1)       - zsh programmable completion
zshcompsys (1)       - zsh completion system
zshcompwid (1)       - zsh completion widgets
zshcontrib (1)       - user contributions to zsh
zshexpn (1)          - zsh expansion and substitution
zshmisc (1)          - everything and then some
zshmodules (1)       - zsh loadable modules
zshoptions (1)       - zsh options
zshparam (1)         - zsh parameters
zshroadmap (1)       - informal introduction to the zsh manual The Zsh Manual, like the shell itself, is large and often complicated. This section of the manual provides some pointers to ar...
zshtcpsys (1)        - zsh tcp system
zshzftpsys (1)       - zftp function front-end
zshzle (1)           - zsh command line editor
zsoelim (1)          - satisfy .so requests in roff input
zstd (1)             - zstd, zstdmt, unzstd, zstdcat - Compress or decompress .zst files
zstdcat (1)          - zstd, zstdmt, unzstd, zstdcat - Compress or decompress .zst files
zstdgrep (1)         - print lines matching a pattern in zstandard-compressed files
zstdless (1)         - view zstandard-compressed files
zvbi-atsc-cc (1)     - ATSC Closed Caption decoder
zvbi-chains (1)      - VBI proxy wrapper
zvbi-ntsc-cc (1)     - closed caption decoder
zvbid (1)            - VBI proxy daemon
```
