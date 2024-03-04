# Linux command to list all available commands and aliases
# 

┌─[srhills@sr-minipcpn62] - [~] - [974]
└─[$] ls $(echo $PATH | tr ':' ' ') | grep -v '/' | grep . | sort

Might want to redirect STDERR to /dev/null to suppress nonexistent directory warnings. 
```echo -n $PATH | xargs -d : -I {} find {} -maxdepth 1 -executable -type f -printf '%P\n' 2> /dev/null | sort -u ```

(+1 for zsh compatibility)

If you're looking for a list of aliases, you can use:

alias -p | cut -d= -f1 | cut -d' ' -f2



You can use the bash(1) built-in compgen

    compgen -c will list all the commands you could run.
    compgen -a will list all the aliases you could run.
    compgen -b will list all the built-ins you could run.
    compgen -k will list all the keywords you could run.
    compgen -A function will list all the functions you could run.
    compgen -A function -abck will list all the above in one go.

Check the man page for other completions you can generate.

2to3-2.7
2to3 -> 2to3-3.11
2to3-3.11
7z
7za
7zr
a52dec
aafire
aainfo
aalib-config
aasavefont
aatest
acceleration_speed
accessdb
aclocal
aclocal-1.16
acpi
activate-global-python-argcomplete
addftinfo
addgnupghome
addpart
addr2line
addr2name
adig
advtest
afmtodit
agetty
aggregate_profile.pl
ahost
al
al2
alacritty
alsoft-config
amdgpu-arch
amdgpu_stress
amptest
amrnb-dec
amrnb-enc
amrwb-dec
amuFormat.sh
anacron
analyze-build
animate -> magick
annotate
any2djvu
anytovcd.sh
aomdec
aomenc
applygnupgdefaults
appstreamcli
aprofutil
apropos -> whatis
ar
arandr
archcraft-about
archcraft-help
archcraft-hooks-extra
archcraft-hooks-runner
archcraft-reboot-required
archlinux-java
archlinux-keyring-wkd-sync
aread
argon2
arpaname
arpd
arping
arptables-nft-restore -> xtables-nft-multi
arptables-nft-save -> xtables-nft-multi
arptables-nft -> xtables-nft-multi
artist_to_albumartist
as
aserver
askpass
asn1Coding
asn1Decoding
asn1Parser
asroot
atmaddr
atmarp
atmarpd
atmdiag
atmdump
atmloop
atmsigd
atmswitch
atmtcp
atril
atril-previewer
atril-thumbnailer
attr
audisp-af_unix
audispd-zos-remote
audisp-remote
audisp-syslog
auditctl
auditd
augenrules
aulast
aulastlog
aureport
ausearch
ausyscall
autoconf
autogsdoc
autoheader
autom4te
automake
automake-1.16
autopoint
autoreconf
autoscan
autoupdate
autrace
auvirt
avahi-autoipd
avahi-bookmarks
avahi-browse
avahi-browse-domains -> avahi-browse
avahi-daemon
avahi-discover
avahi-discover-standalone
avahi-dnsconfd
avahi-publish
avahi-publish-address -> avahi-publish
avahi-publish-service -> avahi-publish
avahi-resolve
avahi-resolve-address -> avahi-resolve
avahi-resolve-host-name -> avahi-resolve
avahi-set-host-name
avifdec
avifenc
avinfo
avtest
awk -> gawk
awrite
b2sum
b43-fwcutter
backup
badblocks
base32
base64
basename
basenc
bash
bashbug
bat
bc
bcmfw
bdaddr
bdftogd
bdftopcf
bdftruncate
bd_info
bd_list_titles
bd_splice
betterlockscreen
biosdecode
bison
bjoentegaard
blkdeactivate
blkdiscard
blkid
blkmapd
blkpr
blkzone
blockdev
block-rate-estim
blueman-adapters
blueman-applet
blueman-manager
blueman-sendto
blueman-services
blueman-tray
bluemoon
bluetoothctl
bluetooth-player
bneptest
bond2team
bootctl
boxdumper
br2684ctl
brcm_iscsiuio -> iscsiuio
bridge
brltty
brltty-atb
brltty-cldr
brltty-clip
brltty-config.sh
brltty-ctb
brltty-genkey
brltty-hid
brltty-ktb
brltty-lscmds
brltty-lsinc
brltty-mkuser
brltty-morse
brltty-prologue.bash
brltty-prologue.lua
brltty-prologue.sh
brltty-prologue.tcl
brltty-setcaps
brltty-term
brltty-trtxt
brltty-ttb
brltty-ttysize
brltty-tune
broadwayd
brotli
bs2bconvert
bs2bstream
bscalc
bsdcat
bsdcpio
bsdtar
bsdunzip
bshell -> bssh
bspc
bspwm
bssh
btattach
btconfig
btgatt-client
btgatt-server
btinfo
btiotest
btmgmt
btmon
btpclient
btpclientctl
btproxy
btrfs
btrfsck -> btrfs
btrfs-convert
btrfs-find-root
btrfs-image
btrfs-map-logical
btrfs-select-super
btrfstune
btsnoop
bu
bugpoint
bunzip2 -> bzip2
bus
busctl
bvnc -> bssh
bwrap
bzcat -> bzip2
bzdiff
bzgrep
bzip2
bzip2recover
bzmore
bzz
c++
c44
c89
c99
cacaclock
caca-config
cacademo
cacafire
cacaplay
cacaserver
cacaview
cache_check -> pdata_tools
cache_dump -> pdata_tools
cache_metadata_size -> pdata_tools
cache_repair -> pdata_tools
cache_restore -> pdata_tools
cache_writeback -> pdata_tools
cairo-trace
cal
canberra-boot
canberra-gtk-play
cancel
capsh
captest
captoinfo -> tic
captree
caspol
cat
catman
cccheck
cc -> gcc
ccrewrite
cd-create-profile
cdda-player
cd-drive
cd-fix-profile
cd-iccdump
cd-info
cd-it8
cd-paranoia
cd-read
cdrwtool
cec-compliance
cec-ctl
cec-follower
celluloid
cert2spc
certmgr
cert-sync
certtool
certutil
cfdisk
c++filt
cgdisk
chacl
chage
chardetect
charon-cmd
charon-systemd
chat
chattr
chcon
chcp
chcpu
check-selftest
checkupdates
chem
chfn
chgpasswd
chgrp
chktrust
chmem
chmod
choom
choose-mirror
chown
chpasswd
chroot
chrt
chsh
cht.sh
chvt
cifscreds
cifs.idmap
cifs.upcall
c-index-test
cisco-decrypt
cjb2
cjpeg
cjpeg_hdr
cjxl
cksum
clang-16
clang-apply-replacements
clang-change-namespace
clang-check
clang++ -> clang
clang -> clang-16
clang-cl -> clang
clang-cpp -> clang
clangd
clang-doc
clang-extdef-mapping
clang-format
clang-include-cleaner
clang-include-fixer
clang-linker-wrapper
clang-move
clang-offload-bundler
clang-offload-packager
clang-pseudo
clang-query
clang-refactor
clang-rename
clang-reorder-fields
clang-repl
clang-scan-deps
clang-tidy
clear
cllayerinfo
clockdiff
clonezilla
cloud-id
cloud-init
cloud-init-per
clrunimap
cltest
cmp
cmsutil
cnvt-ocs-dev
col
colcrt
colorit
colormgr
colrm
column
comm
compare -> magick
compile_et
composite -> magick
compton -> picom
compton-trans -> picom-trans
conjure -> magick
conplay
convert -> magick
coredumpctl
corelist
core_perl
corrupt_mpeg2
count
cp
cpaldjvu
cpan
cpp
cpuinfo
cracklib-check
cracklib-format
cracklib-packer
cracklib-unpacker
cracklib-update
create-cracklib-dict
create-debian-live
create-drbl-live
create-drbl-live-by-pkg
create-gparted-live
create-image
create-ocs-tmp-img
create-ubuntu-live
c_rehash
crlupdate
crlutil
crond
cronnext
crontab
cryptsetup
csc
csepdjvu
csharp
csi
csplit
ctpl
ctrlaltdel
ctstat -> lnstat
cupsaccept
cups-calibrate
cups-config
cupsctl
cupsd
cupsdisable -> cupsaccept
cupsenable -> cupsaccept
cupsfilter
cups-genppd.5.3
cups-genppdupdate
cupsreject -> cupsaccept
cupstestppd
curl
curl-config
cut
cv-ocsimg-v1-to-v2
cvt
cvtenc
cvtsudoers
cwebp
cx18-ctl
cxl
cxpm
date
dav1d
daxctl
db5.3
db_archive
db_checkpoint
db_convert
db_deadlock
db_dump
db_hotbackup
dbilogstrip
dbiprof
dbiproxy
db_load
db_log_verify
db_printlog
db_recover
db_replicate
db_stat
db_tuner
db_upgrade
dbus-cleanup-sockets
dbus-daemon
dbus-launch
dbus-monitor
dbus-run-session
dbus-send
dbus-test-tool
dbus-update-activation-environment
dbus-uuidgen
db_verify
dc
dc1394_reset_bus
dcadec
dcb
dconf
dcs -> drbl-client-switch
dd
ddjvu
ddns-confgen
deallocvt
debugedit
debugfs
debugfs.reiserfs -> debugreiserfs
debugreiserfs
dec265
decode_tm6000
defaults
defrag.f2fs -> fsck.f2fs
delpart
delv
depmod -> kmod
derb
desktop-file-edit -> desktop-file-install
desktop-file-install
desktop-file-validate
devlink
df
dhclient
dhclient-script
dhcpcd
dhcp_lease_time
dhcp_release
dhcp_release6
diagtool
dialog
dialog-config
dict
dictd
dictdplugin-config
dictfmt
dictfmt_index2suffix
dictfmt_index2word
dictl
dict_lookup
dictunformat
dictzip
diff
diff3
dig
dir
dircolors
dirmngr
dirmngr-client
dirname
disable-paste
disco
display-buttons
display-coords
display -> magick
distro
djpeg
djvm
djvmcvt
djvudigital
djvudump
djvuextract
djvumake
djvups
djvused
djvuserve
djvutoxml
djvutxt
djvuxmlparser
djxl
dlc3
dmcs
dmesg
dmeventd
dmevent_tool
dmidecode
dmraid
dmsetup
dmstats -> dmsetup
dnsdomainname
dnsmasq
dnssec-cds
dnssec-dsfromkey
dnssec-importkey
dnssec-keyfromlabel
dnssec-keygen
dnssec-revoke
dnssec-settime
dnssec-signzone
dnssec-verify
dnssort
doas
dosfsck -> fsck.fat
dosfslabel -> fatlabel
downgrade
drbl-3n-conf
drbl4imp
drbl-add-vir-netdev
drbl-all-service
drbl-aoe-img-dump
drbl-aoe-serv
drbl-autologin-env-reset
drbl-autologin-home-reset
drbl-bug-report
drbl-clean-autologin-account
drbl-clean-dhcpd-leases
drbl-client-reautologin
drbl-client-root-passwd
drbl-client-service
drbl-client-switch
drbl-client-system-select
drbl-collect-mac
drbl-cp -> drbl-fuh
drbl-cp-host -> drbl-fuh
drbl-cp-user -> drbl-fuu
drbl-doit
drbl-find-dhcp-srv
drbl-fuh
drbl-fuh-get -> drbl-fuh
drbl-fuh-put -> drbl-fuh
drbl-fuh-rm -> drbl-fuh
drbl-fuu
drbl-fuu-get -> drbl-fuu
drbl-fuu-put -> drbl-fuu
drbl-fuu-rm -> drbl-fuu
drbl-gen-grub-efi-nb
drbl-get-host -> drbl-fuh
drbl-get-user -> drbl-fuu
drbl-host-cp -> drbl-fuh
drbl-host-get -> drbl-fuh
drbl-host-rm -> drbl-fuh
drbl-live
drbl-live-boinc
drbl-live-hadoop
drbl-login-switch
drbl-netinstall
drbl-ocs
drbl-ocs-live-prep
drbl-proxy-dhcp
drblpush
drbl-pxelinux-passwd
drbl-rm-host -> drbl-fuh
drbl-rm-user -> drbl-fuu
drbl-run-parts
drbl-sl
drblsrv
drblsrv-offline
drbl-swapfile
drbl-syslinux-efi-pxe-sw
drbl-syslinux-netinstall -> drbl-usb-netinstall
drbl-uriparse
drbl-usb-netinstall
drbl-useradd
drbl-useradd-file
drbl-useradd-list
drbl-useradd-range
drbl-user-cp -> drbl-fuu
drbl-userdel
drbl-userdel-file -> drbl-useradd-file
drbl-userdel-list -> drbl-useradd-list
drbl-userdel-range -> drbl-useradd-range
drbl-user-env-reset
drbl-user-get -> drbl-fuu
drbl-user-rm -> drbl-fuu
drbl-wakeonlan
drill
drmdevice
dsymutil
dtd2rng
dtd2xsd
dtsdec
du
dubdv
dumpe2fs
dump.exfat
dump.f2fs -> fsck.f2fs
dumpiso
dumpkeys
dumpseg
dumpsexp
dump_xsettings
dunst
dunstctl
dunstify
duplicati-cli
dvb-fe-tool
dvb-format-convert
dvbv5-daemon
dvbv5-scan
dvbv5-zap
dvconnect
dvcont
dvipdf
dwebp
dwp
e2freefrag
e2fsck
e2image
e2label
e2mmpstatus
e2scrub
e2scrub_all
e2undo
e4crypt
e4defrag
eapol_test
ebtables-nft-restore -> xtables-nft-multi
ebtables-nft-save -> xtables-nft-multi
ebtables-nft -> xtables-nft-multi
ebtables-translate -> xtables-nft-multi
echo
ecryptfs-add-passphrase
ecryptfsd
ecryptfs-find
ecryptfs-insert-wrapped-passphrase-into-keyring
ecryptfs-manager
ecryptfs-migrate-home
ecryptfs-mount-private
ecryptfs-recover-private
ecryptfs-rewrap-passphrase
ecryptfs-rewrite-file
ecryptfs-setup-private
ecryptfs-setup-swap
ecryptfs-stat
ecryptfs-umount-private
ecryptfs-unwrap-passphrase
ecryptfs-verify
ecryptfs-wrap-passphrase
eddystone
efibootdump
efibootmgr
efisecdb
efivar
eglewinfo
eglgears_wayland
eglgears_x11
eglinfo
eglkms
egltri_wayland
egltri_x11
egrep
eject
elc3
elfedit
enc2xs
enca
encguess
enchant-2
enchant-lsmod-2
encodedv
enconv -> enca
enitune
env
envsubst
eps2eps
eqn
eqn2graph
era_check -> pdata_tools
era_dump -> pdata_tools
era_invalidate -> pdata_tools
era_restore -> pdata_tools
es2gears_wayland
es2gears_x11
es2_info
es2tri
escapesrc
escputil
esi
ethtool
eutp
event_rpcgen.py
exa -> eza
exfat2img
exfatlabel
exiv2
exo-desktop-item-edit
exo-open
expand
expiry
exportfs
expr
exr2aces
exrenvmap
exrheader
exrinfo
exrmakepreview
exrmaketiled
exrmultipart
exrmultiview
exrstdattr
extract_a52
extract_dca
extract_dts
extract_mpeg2
eza
f2fscrypt
f2fs_io
f2fslabel -> fsck.f2fs
f2py
faac
faad
factor
fadvise
faillock
faillog
faked
fakeroot
fallocate
false
fancontrol
fatlabel
fatresize
fc-cache
fc-cat
fc-conflist
fc-list
fc-match
fc-pattern
fc-query
fc-scan
fc-validate
fd
fdisk
feh
ffmpeg
ffmpegthumbnailer
ffplay
ffprobe
fftwf-wisdom
fftwl-wisdom
fftwq-wisdom
fftw-wisdom
fftw-wisdom-to-conf
fgconsole
fgrep
fibmap.f2fs
fido2-assert
fido2-cred
fido2-token
file
filecap
FileCheck
filefrag
fincore
find
find-all-symbols
find-debuginfo
findfs
findmnt
findssl.sh
firefox
fixparts
fix-qdf
fixqt4headers.pl
fixqt4headers.pl-qt5 -> fixqt4headers.pl
flac
flex
flex++ -> flex
flock
floppyd
floppyd_installtest
fluidsynth
fmt
fold
fonttools
foomatic-addpjloptions
foomatic-cleanupdrivers
foomatic-combo-xml
foomatic-compiledb
foomatic-configure
foomatic-datafile -> foomatic-ppdfile
foomatic-extract-text
foomatic-fix-xml
foomatic-getpjloptions
foomatic-kitload
foomatic-nonumericalids
foomatic-perl-data
foomatic-ppdfile
foomatic-ppd-options
foomatic-ppd-to-xml
foomatic-preferred-driver
foomatic-printermap-to-gutenprint-xml
foomatic-printjob
foomatic-replaceoldprinterids
foomatic-searchprinter
Forcevideo-drbl-live
fpcalc
free
freeaptxdec
freeaptxenc
fribidi
fsadm
fsarchiver
fsck
fsck.btrfs
fsck.cramfs
fsck.exfat
fsck.ext2
fsck.ext3
fsck.ext4
fsck.f2fs
fsck.fat
fsck.jfs
fsck.minix
fsck.msdos -> fsck.fat
fsck.reiserfs -> reiserfsck
fsck.vfat -> fsck.fat
fsck.xfs
fsfreeze
fsidd
fsnotifywait
fsnotifywatch
fstrim
ftdi_eeprom
ftp
ftpd
funzip
fuser
fusermount
fusermount3
fzf
fzf-preview.sh
fzf-tmux
fzf-tmux
g++
gacutil
gacutil2
gapi2-codegen
gapi2-fixup
gapi2-parser
gapplication
gatt-service
gawk
gawk-5.3.0
gawkbug
gcc
gcc-ar
gcc-nm
gcc-ranlib
gcov
gcov-tool
gcr-viewer
gcr-viewer-gtk4
gd2copypal
gd2togif
gd2topng
gdbm_dump
gdbm_load
gdbmtool
gdbus
gdbus-codegen
gdcmpgif
gdiffmk
gdisk
gdk-pixbuf-csource
gdk-pixbuf-pixdata
gdk-pixbuf-query-loaders
gdk-pixbuf-thumbnailer
gdnc
gdomap
gdparttopng
gdtopng
geany
genbrk
gencat
genccode
gencfu
gencmn
gencnval
gendict
gen-enc-table
generate-pxe-menu
gen-grub-efi-nb-menu
genl
genl-ctrl-list
gennorm2
genrb
gensprep
gen-torrent-from-ptcl
genxs
geqn -> eqn
getcap
getcifsacl
getconf
get-drbl-conf-param
getent
getfacl
getfattr
getkeycodes
get-latest-ocs-live-ver
getopt
getpcaps
getsubids
gettext
gettextize
gettext.sh
getunimap
get-versions
ghostscript -> gs
gif2rgb
gif2webp
gifbuild
gifclrmp
giffix
giftext
giftogd2
giftool
gio
gio-querymodules
git
git2
git-clang-format
git-cvsserver
gitk
git-receive-pack -> git
git-shell
git-upload-archive -> git
git-upload-pack -> git
gkbd-keyboard-display
glewinfo -> eglewinfo
glib-compile-resources
glib-compile-schemas
glib-genmarshal
glib-gettextize
glib-mkenums
glilypond
glslang
glslangValidator -> glslang
glslc
glxewinfo
glxgears
glxinfo
gn
gnome-disk-image-mounter
gnome-disks
gnutls-cli
gnutls-cli-debug
gnutls-serv
gobject-query
gp-archive
gpart
gparted
gpasswd
gp-collect-app
gp-display-html
gp-display-src
gp-display-text
gperf
gperl
gpg
gpg2 -> gpg
gpg-agent
gpg-card
gpgconf
gpg-connect-agent
gpg-error
gpgme-json
gpgme-tool
gpgparsemail
gpgrt-config
gpgscm
gpgsm
gpgsplit
gpgtar
gpgv
gpgv2 -> gpgv
gpg-wks-client
gpg-wks-server
gphoto2-config
gphoto2-port-config
gpinyin
gpm
gpm-root
gprof
gprofng
gr2fonttest
grap2graph
grep
gresource
grn
grodvi
groff
grog
grolbp
grolj4
gropdf
grops
grotty
groupadd
groupdel
groupmems
groupmod
groups
grpck
grpconv
grpunconv
grub-bios-setup
grub-editenv
grub-emu
grub-emu-lite
grub-file
grub-fstest
grub-glue-efi
grub-install
grub-kbdcomp
grub-macbless
grub-menulst2cfg
grub-mkconfig
grub-mkfont
grub-mkimage
grub-mklayout
grub-mknetdir
grub-mkpasswd-pbkdf2
grub-mkrelpath
grub-mkrescue
grub-mkstandalone
grub-mount
grub-ofpathname
grub-probe
grub-reboot
grub-render-label
grub-script-check
grub-set-bootflag
grub-set-default
grub-sparc64-setup
grub-syslinux2cfg
gs
gsbj
gsdj
gsdj500
gsettings
gslj
gslp
gsnd
gspath
gspell-app1
gss-client
gssdp-device-sniffer
gssproxy
gss-server
gst-device-monitor-1.0
gst-discoverer-1.0
gst-inspect-1.0
gst-launch-1.0
gst-play-1.0
gst-stats-1.0
gst-tester-1.0
gst-transcoder-1.0
gst-typefind-1.0
gsx
gtbl -> tbl
gtester
gtester-report
gtf
gtk3-nocsd
gtk4-broadwayd
gtk4-builder-tool
gtk4-encode-symbolic-svg
gtk4-launch
gtk4-query-settings
gtk4-rendernode-tool
gtk4-update-icon-cache
gtk-builder-convert
gtk-builder-tool
gtk-demo
gtk-encode-symbolic-svg
gtk-launch
gtk-query-immodules-2.0
gtk-query-immodules-3.0
gtk-query-settings
gtk-update-icon-cache -> gtk4-update-icon-cache
guild
guile
guile-config
guile-snarf
guile-tools -> guild
gunzip
gupnp-binding-tool-1.6
gusbcmd
gxditview
gzexe
gzip
h2ph
h2xs
halt -> systemctl
handy-1-demo
hardlink
hcieventmask
hcisecfilter
hdparm
head
healthd
hediag
heif-convert
heif-enc
heif-info
heif-thumbnailer
hex2hcd
hexdump
hid2hci
highlight
hltest
hmac256
hmaptool
homectl
host
hostid
hostname
hostnamectl
hpftodit
HTMLLinker
htop
httpcfg
hv_fcopy_daemon
hv_kvp_daemon
hv_vss_daemon
hwclock
hwdb
hwloc-annotate
hwloc-bind
hwloc-calc
hwloc-compress-dir
hwloc-diff
hwloc-distrib
hwloc-dump-hwdata
hwloc-gather-cpuid
hwloc-gather-topology
hwloc-info
hwloc-ls -> lstopo-no-graphics
hwloc-patch
hwloc-ps
hwsim
i386 -> setarch
i3lock
i686-pc-linux-gnu-pkg-config -> pkgconf
ibeacon
iceauth
iconv
iconvconfig
icu-config
icuexportdata
icuinfo
icupkg
id
idectl
identify -> magick
idevicebackup
idevicebackup2
idevicecrashreport
idevicedate
idevicedebug
idevicedebugserverproxy
idevicediagnostics
ideviceenterrecovery
idevice_id
ideviceimagemounter
ideviceinfo
idevicename
idevicenotificationproxy
idevicepair
ideviceprovision
idevicescreenshot
idevicesetlocation
idevicesyslog
idiag-socket-details
idle2
idle3.11
idle3 -> idle3.11
idle -> idle3
idn
idn2
ifnames
ifrename
ifstat
ijs_client_example
ijs-config
ijs_server_example
ikdasm
ilasm
illinkanalyzer
ilmid
ilmidiag
img2txt
img2webp
imgcmp
imginfo
imlib2_bumpmap
imlib2_colorspace
imlib2_conv
imlib2_grab
imlib2_load
imlib2_poly
imlib2_show
imlib2_test
imlib2_view
import -> magick
indxbib
inetcat
info
infocmp
infotocap -> tic
inotifywait
inotifywatch
inproc_lat
inproc_thr
insmod -> kmod
install
install-info
installvst
instmodsh
integritysetup
intel-virtual-output
intercept-build
ionice
ip
ip6tables-apply -> iptables-apply
ip6tables-legacy-restore -> xtables-legacy-multi
ip6tables-legacy-save -> xtables-legacy-multi
ip6tables-legacy -> xtables-legacy-multi
ip6tables-nft-restore -> xtables-nft-multi
ip6tables-nft-save -> xtables-nft-multi
ip6tables-nft -> xtables-nft-multi
ip6tables-restore-translate -> xtables-nft-multi
ip6tables-restore -> xtables-legacy-multi
ip6tables-save -> xtables-legacy-multi
ip6tables-translate -> xtables-nft-multi
ip6tables -> xtables-legacy-multi
ipcmk
ipcrm
ipcs
ippeveprinter
ippfind
ipptool
iproxy
ipsec
iptables-apply
iptables-legacy-restore -> xtables-legacy-multi
iptables-legacy-save -> xtables-legacy-multi
iptables-legacy -> xtables-legacy-multi
iptables-nft-restore -> xtables-nft-multi
iptables-nft-save -> xtables-nft-multi
iptables-nft -> xtables-nft-multi
iptables-restore-translate -> xtables-nft-multi
iptables-restore -> xtables-legacy-multi
iptables-save -> xtables-legacy-multi
iptables-translate -> xtables-nft-multi
iptables-xml -> xtables-legacy-multi
iptables -> xtables-legacy-multi
ircat
ir-ctl
irdb-get
irexec
ir-keytable
irpipe
irpty
irqtop
irrecord
irsend
irsimreceive
irsimsend
irtestcase
irtext2udp
irw
irxevent
isadump
isaset
iscsiadm
iscsid
iscsi_discovery
iscsi_fw_login
iscsi-gen-initiatorname
iscsi-iname
iscsi_offload
iscsistart
iscsiuio
isnsadm
isnsd
isnsdd
iso-info
iso-read
isosize
isotest
ivtv-ctl
iw
iwconfig
iwctl
iwevent
iwgetid
iwlist
iwmon
iwpriv
iwspy
jar
jarsigner
jasper
java
javac
javadoc
javap
jbgtopbm
jbgtopbm85
jbig2dec
jcmd
jconsole
jdb
jdeprscan
jdeps
jemalloc-config
jemalloc.sh
jeprof
jfr
jfs_debugfs
jfs_fsck
jfs_fscklog
jfs_logdump
jfs_mkfs
jfs_tune
jhsdb
jimage
jinfo
jiv
jlink
jmap
jmod
join
journalctl
jpackage
jpeg2yuv
jpegtran
jpgicc
jps
jq
jrunscript
jshell
jsondiff
json-glib-format
json-glib-validate
jsonpatch
jsonpointer
json_pp
json_reformat
jsonschema
json_verify
jstack
jstat
jstatd
jwebserver
jxlinfo
k5srvutil
kadmin
kadmind
kadmin.local
katalyzer
katedec
kateenc
kbdinfo
kbd_mode
kbdrate
kbxutil
kdb5_ldap_util
kdb5_util
kdestroy
kernel-install
keyctl
key.dns_resolver
keytool
kill
killall
kinit
klist
kmod
kpasswd
kprop
kpropd
kproplog
krb5-config
krb5kdc
krb5-send-pr
ksu
ksuperkey
kswitch
ktutil
kunst
kvantummanager
kvantumpreview
kvno
l2ping
l2test
lame
last
lastb -> last
lastlog
launcher
lav2avi.sh
lav2mpeg
lav2wav
lav2yuv
lavaddwav
lavinfo
lavpipe
lavtc.sh
lavtrans
lbunzip2 -> lbzip2
lbzcat -> lbzip2
lbzip2
lc
ld
ld64.lld -> lld
ldattach
ldbadd
ldbdel
ldbedit
ld.bfd
ldbmodify
ldbrename
ldbsearch
ldconfig
ldd
ld.gold
ld.lld -> lld
ldns-chaos
ldns-compare-zones
ldns-config
ldnsd
ldns-dane
ldns-dpa
ldns-gen-zone
ldns-key2ds
ldns-keyfetcher
ldns-keygen
ldns-mx
ldns-notify
ldns-nsec3-hash
ldns-read-zone
ldns-resolver
ldns-revoke
ldns-rrsig
ldns-signzone
ldns-test-edns
ldns-testns
ldns-update
ldns-verify-zone
ldns-version
ldns-walk
ldns-zcat
ldns-zsplit
lecs
les
less
lessecho
lesskey
lex -> flex
lexgrog
libassuan-config
libcamerify
libdeflate-gunzip
libdeflate-gzip
libevdev-tweak-device
libftdi1-config
libgcrypt-config
libinput
libmikmod-config
libnetcfg
libnet-config
libpng16-config
libpng-config -> libpng16-config
libtool
libtoolize
libusb-config
libwacom-list-devices
libwacom-list-local-devices
libwacom-show-stylus
libwacom-update-db
light
link
linkicc
linux32 -> setarch
linux64 -> setarch
linux-boot-prober
lirc-config-tool
lircd
lirc-data2table
lircd-setup
lircd-uinput
lirc-init-db
lirc-lsplugins
lirc-lsremotes
lirc-make-devinput
lircmd
lirc-postinstall
lircrcd
lit
lkbib
llc
lld
lld-link -> lld
lli
lli-child-target
llvm-addr2line -> llvm-symbolizer
llvm-ar
llvm-as
llvm-bcanalyzer
llvm-bitcode-strip -> llvm-objcopy
llvm-cat
llvm-cfi-verify
llvm-config
llvm-cov
llvm-c-test
llvm-cvtres
llvm-cxxdump
llvm-cxxfilt
llvm-cxxmap
llvm-debuginfo-analyzer
llvm-debuginfod
llvm-debuginfod-find
llvm-diff
llvm-dis
llvm-dlltool -> llvm-ar
llvm-dwarfdump
llvm-dwarfutil
llvm-dwp
llvm-extract
llvm-gsymutil
llvm-ifs
llvm-install-name-tool -> llvm-objcopy
llvm-jitlink
llvm-jitlink-executor
llvm-lib -> llvm-ar
llvm-libtool-darwin
llvm-link
llvm-lipo
llvm-lto
llvm-lto2
llvm-mc
llvm-mca
llvm-ml
llvm-modextract
llvm-mt
llvm-nm
llvm-objcopy
llvm-objdump
llvm-opt-report
llvm-otool -> llvm-objdump
llvm-pdbutil
llvm-PerfectShuffle
llvm-profdata
llvm-profgen
llvm-ranlib -> llvm-ar
llvm-rc
llvm-readelf -> llvm-readobj
llvm-readobj
llvm-reduce
llvm-remark-size-diff
llvm-remarkutil
llvm-rtdyld
llvm-sim
llvm-size
llvm-split
llvm-stress
llvm-strings
llvm-strip -> llvm-objcopy
llvm-symbolizer
llvm-tapi-diff
llvm-tblgen
llvm-tli-checker
llvm-undname
llvm-windres -> llvm-rc
llvm-xray
ln
lnstat
loadkeys
loadunimap
locale
localectl
localedef
locale-gen
local_lat
local_thr
logger
login
loginctl
logname
logo-ls
logsave
look
lookbib
losetup
lou_allround
lou_checkhyphens
lou_checktable
lou_checkyaml
lou_debug
lou_maketable
lou_maketable.d
lou_tableinfo
lou_trace
lou_translate
lowntfs-3g
lp
lpadmin
lpc
lpinfo
lpmove
lpoptions
lpq
lpr
lprm
lpstat
lrunzip -> lrzip
lrzcat -> lrzip
lrzip
lrz -> lrzip
lrztar
lrzuntar -> lrztar
ls
lsar
lsattr
lsblk
lsb_release
lscp
lscpu
lsd
lsfd
lsinitcpio
lsipc
lsirq
lslocks
lslogins
lsmem
lsmod -> kmod
lsns
lspci
lsscsi
lssu
lstopo
lstopo-no-graphics
lsusb
lsusb.py
lua
lua5.1
luac
luac5.1
luajit-2.1.1700008891
luajit -> luajit-2.1.1700008891
lv2apply
lv2bench
lv2info
lv2ls
lv2specgen.py
lv2_validate
lvchange -> lvm
lvconvert -> lvm
lvcreate -> lvm
lvdisplay -> lvm
lvextend -> lvm
lvm
lvm-cache-stats
lvmconfig -> lvm
lvmdevices -> lvm
lvmdiskscan -> lvm
lvmdump
lvm_import_vdo
lvmpolld
lvmsadc -> lvm
lvmsar -> lvm
lvreduce -> lvm
lvremove -> lvm
lvrename -> lvm
lvresize -> lvm
lvscan -> lvm
lvs -> lvm
lz4
lz4cat -> lz4
lz4c -> lz4
lzcat -> xz
lzcmp -> xzdiff
lzdiff -> xzdiff
lzegrep -> xzgrep
lzfgrep -> xzgrep
lzgrep -> xzgrep
lzip
lzless -> xzless
lzmadec
lzmainfo
lzma -> xz
lzmore -> xzmore
lzop
lz -> uz
m4
machinectl
macpack
magick
Magick++-config
MagickCore-config
magick-script -> magick
MagickWand-config
maim
make
makecert
makeconv
makedb
makeinfo -> texi2any
makemhr
makepkg
makepkg-template
make_strings
man
mandb
manette-test
manpath
man-recode
mapscrn
matteblend.flt
mattrib -> mtools
mbadblocks -> mtools
mbimcli
mbim-network
mcaptest
mcat -> mtools
mcd -> mtools
mcheck
mcomp
mconfig
mcookie
mcopy -> mtools
mcs
md2html
md5sum
mdadm
mdassembler
mdb_copy
mdb_dump
mdb_load
mdbrebase
mdb_stat
mdel -> mtools
mdeltree -> mtools
mdig
mdir -> mtools
mdmon
mdoc
mdoc-assemble
mdoc-export-html
mdoc-export-msxdoc
mdoc-update
mdoc-validate
mdu -> mtools
mdvalidater
media-ctl
meld
memusage
memusagestat
mesg
mesh-cfgclient
mesh-cfgtest
metaflac
mev
mformat -> mtools
minfo -> mtools
min-nbd-client
mjpeg_simd_helper
mkbundle
mk_cmds
mkcp
mkdir
mkdosfs -> mkfs.fat
mke2fs
mkfifo
mkfontdir
mkfontscale
mkfs
mkfs.bfs
mkfs.btrfs
mkfs.cramfs
mkfs.exfat
mkfs.ext2
mkfs.ext3
mkfs.ext4
mkfs.f2fs
mkfs.fat
mkfs.jfs
mkfs.minix
mkfs.msdos -> mkfs.fat
mkfs.nilfs2
mkfs.reiserfs -> mkreiserfs
mkfs.udf -> mkudffs
mkfs.vfat -> mkfs.fat
mkfs.xfs
mkhomedir_helper
mkinitcpio
mklost+found
mkmanifest
mknic-nbi
mknod
mkntfs
mkreiserfs
mkrfc2734
mkrlconf
mksquashfs
mkswap
mktemp
mkudffs
mlabel -> mtools
mmcli
mmc-tool
mmd -> mtools
mmount -> mtools
mmove -> mtools
mmroff
moc
moc-qt5 -> moc
mod
mode2
ModemManager
modeprint
modetest
modinfo -> kmod
modprobe -> kmod
modularize
modutil
mogrify -> magick
mono-api-html
mono-api-info
mono-boehm
mono-cil-strip
mono-configuration-crypto
monodis
monodocer
monodocs2html
monodocs2slashdoc
mono-find-provides
mono-find-requires
mono-gdb.py
mono-hang-watchdog
mono-heapviz
monolinker
mono -> mono-sgen
monop
monop2
mono-package-runtime
mono-service
mono-service2
mono-sgen
mono-sgen-gdb.py
mono-shlib-cop
mono-symbolicate
mono-test-install
mono-xmltool
montage -> magick
more
mount
mount.cifs
mount.ddi -> systemd-dissect
mount.ecryptfs
mount.ecryptfs_private
mount.fuse
mount.fuse3
mount.fuse.sshfs -> sshfs
mount.nfs
mount.nfs4 -> mount.nfs
mount.nilfs2
mountpoint
mount.smb3 -> mount.cifs
mount.sshfs -> sshfs
mountstats
mouse-dpi-tool
mouse-test
mozroots
mp2enc
mp3rtp
mpartition -> mtools
mpc
mpcd
mpd
mpeg2dec
mpeg2enc
mpegtranscode
mpg123
mpg123-id3dump
mpg123-strip
mpicalc
mpicc -> opal_wrapper
mpiCC -> opal_wrapper
mpic++ -> opal_wrapper
mpicxx -> opal_wrapper
mpiexec -> orterun
mpif77 -> opal_wrapper
mpif90 -> opal_wrapper
mpifort -> opal_wrapper
mpirun -> orterun
mplayer
mplex
mpris-proxy
mprof-report
mpv
mrd -> mtools
mren -> mtools
msgattrib
msgcat
msgcmp
msgcomm
msgconv
msgen
msgexec
msgfilter
msgfmt
msggrep
msginit
msgmerge
msgunfmt
msguniq
mshortname -> mtools
mshowfat -> mtools
mtdev-test
mtools
mtoolstest -> mtools
mtp-albumart
mtp-albums
mtp-connect
mtp-delfile -> mtp-connect
mtp-detect
mtp-emptyfolders
mtp-files
mtp-filetree
mtp-folders
mtp-format
mtp-getfile -> mtp-connect
mtp-getplaylist
mtp-hotplug
mtp-newfolder -> mtp-connect
mtp-newplaylist
mtp-playlists
mtp-reset
mtp-sendfile -> mtp-connect
mtp-sendtr -> mtp-connect
mtp-thumb
mtp-tracks
mtp-trexist
mtrace
mtype -> mtools
mujs
mujs-pp
multiblend.flt
music
muxer
mv
mvrefind
mxtar
mysofa2json
mzip -> mtools
name2addr
named
named-checkconf
named-checkzone
named-compilezone
named-journalprint
named-nzd2nzf
named-rrchecker
namei
nano
nbd-client
nbd-server
nbd-trdump
nbd-trplay
ncat
ncdu
ncmpcpp
nc -> netcat
ncursesw6-config
ndctl
ndisc6
ndptool
neofetch
neon-config
neqn
net
netcap
netcat
nethogs
nettle-hash
nettle-lfib-stream
nettle-pbkdf2
networkctl
NetworkManager
networkmanager_dmenu
newgidmap
newgrp
newuidmap
newusers
nfbpf_compile
nf-ct-add
nf-ct-events
nf-ct-list
nf-exp-add
nf-exp-delete
nf-exp-list
nf-log
nf-monitor
nfnl_osf
nf-queue
nfs-cat
nfsconf
nfs-cp
nfsdcld
nfsdclddb
nfsdclnts
nfsdcltrack
nfsidmap
nfsiostat
nfs-ls
nfsrahead
nfs-stat
nfsstat
nfsv4.exportd
nft
ngettext
nice
nilfs-clean
nilfs_cleanerd
nilfs-resize
nilfs-tune
ninja
nitrogen
nl
nl-addr-add
nl-addr-delete
nl-addr-list
nl-class-add
nl-class-delete
nl-classid-lookup
nl-class-list
nl-cls-add
nl-cls-delete
nl-cls-list
nl-fib-lookup
nl-link-enslave
nl-link-ifindex2name
nl-link-list
nl-link-name2ifindex
nl-link-release
nl-link-set
nl-link-stats
nl-list-caches
nl-list-sockets
nl-monitor
nl-neigh-add
nl-neigh-delete
nl-neigh-list
nl-neightbl-list
nl-nh-list
nl-pktloc-lookup
nl-qdisc-add
nl-qdisc-delete
nl-qdisc-list
nl-route-add
nl-route-delete
nl-route-get
nl-route-list
nl-rule-list
nl-tctree-list
nltk
nl-util-addr
nm
nmap
nm-applet
nmblookup
nmcli
nm-connection-editor
nmd
nmd
nm-online
nmtui
nmtui-connect -> nmtui
nmtui-edit -> nmtui
nmtui-hostname -> nmtui
node
nohup
nokfw
nologin
normalizer
not
notify-send
nping
nproc
npth-config
nroff
nsec3hash
nsenter
nslookup
nspr-config
nss-config
nstat
nsupdate
ntfs-3g
ntfs-3g.probe
ntfscat
ntfsclone
ntfscluster
ntfscmp
ntfscp
ntfsdecrypt
ntfsfix
ntfsinfo
ntfslabel
ntfsls
ntfsrecover
ntfsresize
ntfssecaudit
ntfstruncate
ntfsundelete
ntfsusermap
ntfswipe
numfmt
nvme
nvptx-arch
oathtool
ob-brightness
ob-colorpicker
obconf
obex-client-tool
obexctl
obex-server-tool
ob-furminal
obj2yaml
objcopy
objdump
obmenu-generator
ob-music
ob-screenshot
ob-volume
obxprop
ocs-btsrv
ocs-chkimg
ocs-chnthn
ocs-clean-part-fs
ocs-cnvt-usb-zip-to-dsk
ocs-console-font-size
ocs-cvtimg-comp
ocs-decrypt-img
ocs-encrypt-img
ocs-expand-gpt-pt
ocs-expand-mbr-pt
ocs-gen-bt-metainfo
ocs-gen-bt-slices
ocs-gen-grub2-efi-bldr
ocs-get-part-info
ocs-img-2-vdk
ocs-install-grub
ocs-iso
ocs-iso-2-onie
ocs-label-dev
ocs-lang-kbd-conf
ocs-langkbdconf-bterm
ocs-live
ocs-live-bind-mount
ocs-live-boot-menu
ocs-live-bug-report
ocs-live-dev
ocs-live-feed-img
ocs-live-final-action
ocs-live-general
ocs-live-get-img
ocs-live-netcfg
ocs-live-nicbonding
ocs-live-preload
ocs-live-repository
ocs-live-restore
ocs-live-run-menu
ocs-live-save
ocs-lvm2-start
ocs-lvm2-stop
ocs-makeboot
ocs-match-checksum
ocsmgrd
ocs-onthefly
ocsptool
ocs-put-signed-grub2-efi-bldr
ocs-related-srv
ocs-resize-part
ocs-restore-ebr
ocs-restore-mbr
ocs-restore-mdisks
ocs-rm-win-swap-hib
ocs-run-boot-param
ocs-scan-disk
ocs-socket
ocs-sr
ocs-srv-live
ocs-tune-conf-for-s3-swift
ocs-tune-conf-for-webdav
ocs-tux-postprocess
ocs-update-initrd
ocs-update-syslinux
od
ompi-clean -> orte-clean
ompi_info
ompi-server -> orte-server
omxregister-bellagio
onig-config
oobtest
oomctl
opal_wrapper
openal-info
openbox
openbox-kde-session
openbox-session
openconnect
openmpt123
openssl
openssl-1.1
openvpn
openvt
opj_compress
opj_decompress
opj_dump
opt
orc-bugreport
orcc
ortecc -> opal_wrapper
orte-clean
orted
orte-info
orterun
orte-server
os-prober
out123
outpsfheader
ownership
p11-kit
p11tool
pacat
paccache
pacdiff
pacignore
paclist
paclog-pkglist
pacman
pacman-conf
pacman-db-upgrade
pacman-key
pacscripts
pacsearch
pacsort
pactl
pactree
padsp
pam_namespace_helper
pamon -> pacat
pam_timestamp_check
panelctl
pango-list
pango-segmentation
pango-view
paper
paperconf
paplay -> pacat
parecord -> pacat
parec -> pacat
parse.f2fs
partclone.btrfs
partclone.chkimg
partclone.dd
partclone.exfat
partclone.ext2 -> partclone.extfs
partclone.ext3 -> partclone.extfs
partclone.ext4dev -> partclone.extfs
partclone.ext4 -> partclone.extfs
partclone.extfs
partclone.f2fs
partclone.fat
partclone.fat12 -> partclone.fat
partclone.fat16 -> partclone.fat
partclone.fat32 -> partclone.fat
partclone.hfsp
partclone.hfs+ -> partclone.hfsp
partclone.hfsplus -> partclone.hfsp
partclone.imager
partclone.info
partclone.minix
partclone.nilfs2
partclone.ntfs
partclone.ntfsfixboot
partclone.ntfsreloc -> partclone.ntfsfixboot
partclone.restore
partclone.vfat -> partclone.fat
partclone.xfs
parted
partimage
partimaged
partimaged-gencrt
partprobe
partx
passwd
paste
pastebin
pastel
patch
pathchk
pattrs
pavucontrol
pbmtojbg
pbmtojbg85
pbunzip2 -> pbzip2
pbzcat -> pbzip2
pbzip2
pcap-config
pcf2vpnc
pcprofiledump
pcre2-config
pcre2grep
pcre2test
pcre-config
pcregrep
pcretest
pcscd
pcsc-spy
pctrl
pdata_tools
pdb2mdb
pdf2dsc
pdf2ps
pdfattach
pdfdetach
pdffonts
pdfimages
pdfinfo
pdfmom
pdfroff
pdfseparate
pdfsig
pdftexi2dvi
pdftocairo
pdftohtml
pdftoppm
pdftops
pdftotext
pdfunite
pedump
peekfd
peglgears
perl
perlbug
perldoc
perli11ndoc
perlivp
perlthanks
permview
pevent
peverify
pf2afm
pfbtopfa
pfbtops
pfc
pg
pgmtoy4m
pgrep
pic
pic2graph
picom
picom-trans
piconv
pidof
pidwait
pigz
pinentry
pinentry-curses
pinentry-emacs
pinentry-gnome3
pinentry-gtk-2
pinentry-qt
pinentry-tty
ping
pinky
pip
pip3
pip3.11
pipesz
pipewire
pipewire-aes67 -> pipewire
pipewire-avb -> pipewire
pipewire-pulse -> pipewire
pipx
pivot_root
pixz
pk12util
pkaction
pkcheck
pkcs1-conv
pk-example-frobnicate
pkexec
pkgconf
pkg-config -> pkgconf
pkgdata
pki
pkill
pktcdvd-check
pktsetup
pkttyagent
pl
pl2link
pl2pm
plank
pldd
pldes
plget
plistutil
plmerge
plocate
plocate-build
plog
plookup
plparse
plser
plugctl
pluginviewer
plugreport
plutil
plymouth
plymouthd
plymouth-set-default-theme
pmap
pmixcc
pmix_info
png2pnm
png2yuv
pngfix
png-fix-itxt
pngtogd
pngtogd2
pnm2png
pnmtoy4m
pod2html
pod2man
pod2texi
pod2text
pod2usage
podchecker
poff
polybar
polybar-msg
pon
portablectl
post-grohtml
powermenu
poweroff -> systemctl
powertop
ppdc
ppdhtml
ppdi
ppdmerge
ppdpo
pphs
ppmtoy4m
pppd
pppdump
pppoe
pppoe-discovery
pppoe-relay
pppoe-server
pppoe-sniff
pppstats
pprof
pprof-symbolize
pps
pptp
pptpsetup
pp-trace
pquery
pr
preconv
pre-grohtml
prep-ocsroot
printafm
printenv
printf
prlimit
profile2mat.pl
pronto2lirc
proptest
prove
proxy
proxy_thr
prtstat
ps
ps2ascii
ps2epsi
ps2pdf
ps2pdf12
ps2pdf13
ps2pdf14
ps2pdfwr
ps2ps
ps2ps2
pscap
psfaddtable -> psfxtable
psfgettable -> psfxtable
psfstriptable -> psfxtable
psfxtable
psicc
pskctool
psktool
psl
pslog
pstree
pstree.x11 -> pstree
ptar
ptardiff
ptargrep
ptx
pulsemixer
pv
pvchange -> lvm
pvck -> lvm
pvcreate -> lvm
pvdisplay -> lvm
pvmove -> lvm
pvremove -> lvm
pvresize -> lvm
pvscan -> lvm
pvs -> lvm
pw-cat
pwck
pw-cli
pw-config
pwconv
pwd
pw-dot
pw-dsdplay -> pw-cat
pw-dump
pwdx
pw-encplay -> pw-cat
pwhistory_helper
pw-jack
pw-link
pw-loopback
pwmake
pwmconfig
pw-metadata
pw-mididump
pw-midiplay -> pw-cat
pw-midirecord -> pw-cat
pw-mon
pw-play -> pw-cat
pw-profiler
pw-record -> pw-cat
pw-reserve
pwscore
pw-top
pwunconv
pydoc2
pydoc3.11
pydoc3 -> pydoc3.11
pydoc -> pydoc3
pyftmerge
pyftsubset
pyserial-miniterm
pyserial-ports
py.test
pytest
python2.7
python2.7-config
python2-config -> python2.7-config
python2 -> python2.7
python3.11
python3.11-config
python3-config -> python3.11-config
python3 -> python3.11
python-argcomplete-check-easy-install-script
python-argcomplete-tcsh
python-config -> python3-config
python -> python3
pzstd
qconvex
qdbuscpp2xml
qdbuscpp2xml-qt5 -> qdbuscpp2xml
qdbusxml2cpp
qdbusxml2cpp-qt5 -> qdbusxml2cpp
qdelaunay
qhalf
qhull
qlalr
qlalr-qt5 -> qlalr
qmake
qmake-qt5 -> qmake
qmicli
qmi-firmware-update
qmi-network
qml
qmlcachegen
qmlcachegen-qt5 -> qmlcachegen
qmleasing
qmleasing-qt5 -> qmleasing
qmlformat
qmlformat-qt5 -> qmlformat
qmlimportscanner
qmlimportscanner-qt5 -> qmlimportscanner
qmllint
qmllint-qt5 -> qmllint
qmlmin
qmlmin-qt5 -> qmlmin
qmlplugindump
qmlplugindump-qt5 -> qmlplugindump
qmlpreview
qmlpreview-qt5 -> qmlpreview
qmlprofiler
qmlprofiler-qt5 -> qmlprofiler
qml-qt5 -> qml
qmlscene
qmlscene-qt5 -> qmlscene
qmltestrunner
qmltestrunner-qt5 -> qmltestrunner
qmltime
qmltime-qt5 -> qmltime
qmltyperegistrar
qmltyperegistrar-qt5 -> qmltyperegistrar
qpdf
qrencode
qt5ct
qt-faststart
qv4l2
qvidcap
qvkgen
qvkgen-qt5 -> qvkgen
qvoronoi
ranger
rankmirrors
ranlib
rapper
rav1e
rbash -> bash
rbox
rcc
rcc-qt5 -> rcc
rcp
rctest
rd-curves
rdisc6
rdjpgcom
rdma
rdnssd
rds-ctl
readelf
readlink
readprofile
realpath
reboot -> systemctl
recode
recode-sr-latin
refer
refind-install
refind-mkdefault
refind-mkfont
refind-sb-healthcheck
reflector
register-python-argcomplete
reiserfsck
reiserfstune
remote_lat
remote_thr
remuxer
rename
renice
repo-add
repo-elephant -> repo-add
repo-remove -> repo-add
request-key
rescan-scsi-bus.sh
reset -> tset
resgen
resgen2
resize2fs
resizecons
resize.f2fs -> fsck.f2fs
resizepart
resize_reiserfs
resolvconf -> resolvectl
resolvectl
restore
rev
rfkill
rifle
rlogin
rlogind
rltraceroute6
rlwrap
rm
rmcp
rmdir
rmiregistry
rmmod -> kmod
rnano -> nano
rndc
rndc-confgen
rofi
rofi-sensible-terminal
rofi-theme-selector
routel
rpcbind
rpcclient
rpcctl
rpcdebug
rpc.gssd
rpc.idmapd
rpcinfo
rpc.mountd
rpc.nfsd
rpc.statd
rrsync
rsh
rshd
rsvg-convert
rsync
rsync-ssl
rtacct
rtcwake
rtlfw
rtmon
rtmpdump
rtmpgw
rtmpsrv
rtmpsuck
rtstat -> lnstat
rubberband
rubberband-r3
run-clang-tidy
runcon
runner
run-parts
runuser
rview -> vim
rvim -> vim
saaldump
sancov
sanstats
sas_disk_blink
sasldblistusers2
saslpasswd2
sbcdec
sbcenc
sbcinfo
scalar
scan-build
scan-build-py
scan-view
sclient
scmp_sys_resolver
scotest
scp
screen-4.9.1
screendump
screen -> screen-4.9.1
screenshot
script
scriptlive
scriptreplay
scsi_ch_swp
scsi_logging_level
scsi_mandat
scsi_readcap
scsi_ready
scsi_satl
scsi_start
scsi_stop
scsi_temperature
sddm
sddm-greeter
sdiff
sdl2-config
sdparm
secret-tool
secutil
sed
sendiso
sensord
sensors
sensors-conf-convert
sensors-detect
sepdebugcrcfix
seq
seq2bseq
serdi
serialver
sessreg
setarch
setcap
setcifsacl
setfacl
setfattr
setfont
setkeycodes
setleds
setlogcons
setmetamode
setpalette
setpci
setpriv
setreg
setsid
setterm
setvesablank
setvtrgb
set-wireless-regdom
setxkbmap
sexp-conv
sfconvert
sfdisk
sfinfo
sfparse
sftp
sg
sg_bg_ctl
sg_compare_and_write
sg_copy_results
sg_dd
sg_decode_sense
sgdisk
sg_emc_trespass
sgen
sgen-grep-binprot
sg_format
sg_get_config
sg_get_elem_status
sg_get_lba_status
sg_ident
sginfo
sg_inq
sg_logs
sg_luns
sg_map
sg_map26
sgm_dd
sg_modes
sg_opcodes
sgp_dd
sg_persist
sg_prevent
sg_raw
sg_rbuf
sg_rdac
sg_read
sg_read_attr
sg_read_block_limits
sg_read_buffer
sg_readcap
sg_read_long
sg_reassign
sg_referrals
sg_rep_pip
sg_rep_zones
sg_requests
sg_reset
sg_reset_wp
sg_rmsn
sg_rtpg
sg_safte
sg_sanitize
sg_sat_identify
sg_sat_phy_event
sg_sat_read_gplog
sg_sat_set_features
sg_scan
sg_seek
sg_senddiag
sg_ses
sg_ses_microcode
sg_start
sg_stpg
sg_stream_ctl
sg_sync
sg_test_rwbuf
sg_timestamp
sg_turs
sg_unmap
sg_verify
sg_vpd
sg_write_buffer
sg_write_long
sg_write_same
sg_write_verify
sg_write_x
sg_wr_mode
sg_xcopy
sg_zone
sha1sum
sha224sum
sha256sum
sha384sum
sha512sum
shasum
sh -> bash
sherlock265
shlibsign
shout
showconsolefont
showdb
showjournal
showkey
showmount
showstat4
showwal
shred
shtab
shuf
shutdown -> systemctl
signcode
signtool
signver
sim_client
simplescreenrecorder
sim_server
site_perl
size
skdump
sktest
slabtop
sleep
sln
sload.f2fs -> fsck.f2fs
slop
slsh
smartctl
smartd
smb2-quota
smbcacls
smbclient
smbcquotas
smbget
smbinfo
smbspool
smbtar
smbtree
sm-notify
smproxy
sn
snapshot-detect
sndfile-cmp
sndfile-concat
sndfile-convert
sndfile-deinterleave
sndfile-info
sndfile-interleave
sndfile-metadata-get
sndfile-metadata-set
sndfile-play
sndfile-salvage
soapsuds
soelim
sonetdiag
sordi
sord_validate
sort
sotruss
soundstretch
spa-acp-tool
spa-inspect
spa-json-dump
spa-monitor
spa-resample
spawn_console
spawn_login
speexdec
speexenc
spirv-as
spirv-cfg
spirv-dis
spirv-lesspipe.sh
spirv-link
spirv-lint
spirv-objdump
spirv-opt
spirv-reduce
spirv-remap
spirv-val
splain
split
split-file
sprof
sqfscat -> unsquashfs
sqfstar -> mksquashfs
sqldiff
sqlhist
sqlite3
sqlmetal
sqlsharp
srt-ffplay
srt-file-transmit
srt-live-transmit
srt-tunnel
ss
sserver
ssh
ssh-add
ssh-agent
ssh-copy-id
sshd
sshfs
ssh-keygen
ssh-keyscan
ssltap
ssr-glinject
sstpc
start-statd
stat
stdbuf
stoken
stoken-gui
stream -> magick
streamzip
strings
strip
stty
stunbdc
stund
su
substrings.pl
sudo
sudoedit -> sudo
sudo_logsrvd
sudoreplay
sudo_sendlog
sulogin
sum
svc_recv
svc_send
svcutil
SvtAv1DecApp
SvtAv1EncApp
SvtHevcEncApp
swanctl
swaplabel
swapoff
swapon
switch_root
sxhkd
sxpm
symkeyutil
sync
syncqt.pl
syncqt.pl-qt5 -> syncqt.pl
sysctl
systemctl
systemd-ac-power
systemd-analyze
systemd-ask-password
systemd-cat
systemd-cgls
systemd-cgtop
systemd-confext -> systemd-sysext
systemd-creds
systemd-cryptenroll
systemd-delta
systemd-detect-virt
systemd-dissect
systemd-escape
systemd-firstboot
systemd-hwdb
systemd-id128
systemd-inhibit
systemd-machine-id-setup
systemd-mount
systemd-notify
systemd-nspawn
systemd-path
systemd-repart
systemd-resolve -> resolvectl
systemd-run
systemd-socket-activate
systemd-stdio-bridge
systemd-sysext
systemd-sysusers
systemd-tmpfiles
systemd-tty-ask-password-agent
systemd-umount -> systemd-mount
systool
tabs
tac
taglib-config
tail
talk
talkd
tar
taskset
tbl
tc
tcat -> toast
tclsh8.6
tclsh -> tclsh8.6
tcpdump
tcpspray
tcpspray6
tcptraceroute6
tdbbackup
tdbdump
tdbrestore
tdbtool
teamd
teamdctl
teamnl
tee
telnet
telnetd
test
testlibraw
testpattern
testpkg
test-runner
texi2any
texi2dvi
texi2pdf
texindex
tfmtodit
tgz
thin_check -> pdata_tools
thin_delta -> pdata_tools
thin_dump -> pdata_tools
thin_ls -> pdata_tools
thin_metadata_pack -> pdata_tools
thin_metadata_size -> pdata_tools
thin_metadata_unpack -> pdata_tools
thin_repair -> pdata_tools
thin_restore -> pdata_tools
thin_rmap -> pdata_tools
thin_trim -> pdata_tools
thunar
thunar-settings
Thunar -> thunar
thunar-volman
thunar-volman-settings
tic
tiffcp
tiffdump
tiffinfo
tiffset
tiffsplit
tificc
timedatectl
timelineeditor
timeout
timeshift
timeshift-gtk
timeshift-launcher
tint2
tint2conf
tipc
tjbench
tldr
tload
tmux
toast
toe
top
touch
touchpad-edge-detector
tput
tr
tracegen
tracegen-qt5 -> tracegen
tracepath
tracert6
tracker3
transicc
transist.flt
trash
trash-empty
trash-list
trash-put
trash-restore
trash-rm
trietool
trietool-0.2 -> trietool
troff
true
truncate
trust
ts_calibrate
ts_conf
tset
ts_finddev
ts_harvest
tsig-keygen
tsort
ts_print
ts_print_mt
ts_print_raw
ts_test
ts_test_mt
ts_uinput
ts_verify
ttcp_atm
ttx
tty
tune2fs
tune.exfat
tunefs.reiserfs -> reiserfstune
tunelp
tv_combo
tv_ctrlpt
tv_device
twolame
tzselect
uchardet
uclampset
uconv
ucs2any
udevadm
udfinfo
udflabel
udisksctl
ueberzug
ufw
uic
uic-qt5 -> uic
ul
ulockmgr_server
ultrabayd
umount
umount.ecryptfs
umount.ecryptfs_private -> mount.ecryptfs_private
umount.nfs4 -> mount.nfs
umount.nfs -> mount.nfs
umount.nilfs2
umount.udisks2
uname
uname26 -> setarch
unar
uncompress
unexpand
uni
UnicodeNameMappingGenerator
unicode_start
unicode_stop
uniconfd
uniq
unix_chkpwd
unix_update
unlink
unlz4 -> lz4
unlzma -> xz
unpigz -> pigz
unrar
unshare
unsquashfs
untoast -> toast
unxrandr
unxz -> xz
unzip
unzip-mem
unzipsfx
unzstd -> zstd
unzzip
unzzip-big
unzzip-mem
unzzip-mix
update-ca-trust
updatedb
update-desktop-database
update-efi-nvram-boot-entry
update-grub
update-mime-database
update-pciids
update-smart-drivedb
updpkgsums
upload-system-info
upower
uptime
usb-devices
usbhid-dump
usb_modeswitch
usb_modeswitch_dispatcher
usbmuxd
usbreset
useradd
userdbctl
userdel
usermod
userpath
users
utmpdump
uuclient
uuidcdef -> uuidgen
uuidd
uuidgen
uuidparse
uuserver
uz
v4l2-compliance
v4l2-ctl
v4l2-dbg
v4l2-sysfs-path
v4l2-tracer
validate-pyproject
vbc
vbltest
vdir
vdpa
vendor_perl
vercmp
verify-uselistorder
veritysetup
vfat-resize
vgcfgbackup -> lvm
vgcfgrestore -> lvm
vgchange -> lvm
vgck -> lvm
vgconvert -> lvm
vgcreate -> lvm
vgdisplay -> lvm
vgexport -> lvm
vgextend -> lvm
vgimportclone -> lvm
vgimportdevices -> lvm
vgimport -> lvm
vgmerge -> lvm
vgmknodes -> lvm
vgreduce -> lvm
vgremove -> lvm
vgrename -> lvm
vgscan -> lvm
vgs -> lvm
vgsplit -> lvm
viewnior
vigr -> vipw
vim
vimdiff -> vim
vimtutor
vipw
visualinfo
visudo
vkgears
vlock
vmaf
vmafossexec
vmstat
volume_key
vpddecode
vpl-import-export
vpl-inspect
vpl-sample_decode
vpl-sample_encode
vpl-sample_multi_transcode
vpl-sample_vpp
vpl-system_analyzer
vpl-val-surface-sharing
vpnc
vpnc-disconnect
vpxdec
vpxenc
vstp
vte-2.91
w
waitpid
wal
wall
wasm-ld -> lld
watch
watchgnupg
wavpack
wayland-scanner
wc
wdctl
webpinfo
webpmux
webpng
wget
whatis
wheel
whereis
which
whiptail
who
whoami
wildmidi
wipefs
wiper.sh
wireplumber
wish8.6
wish -> wish8.6
wmctrl
wmname
wnckprop
wnck-urgency-monitor
woff2_compress
woff2_decompress
woff2_info
wpa_cli
wpa_passphrase
wpa_supplicant
wpctl
wpexec
write
wrjpgcom
wrudf
wsd
wsdl
wsdl2
wvdial
wvdialconf
wvgain
wvtag
wvtestrun
wvunpack
x11perf
x11perfcomp
x264
x265
x86_64-pc-linux-gnu-c++
x86_64-pc-linux-gnu-g++
x86_64-pc-linux-gnu-gcc
x86_64-pc-linux-gnu-gcc-13.2.1
x86_64-pc-linux-gnu-gcc-ar
x86_64-pc-linux-gnu-gcc-nm
x86_64-pc-linux-gnu-gcc-ranlib
x86_64-pc-linux-gnu-pkg-config -> pkgconf
x86_64 -> setarch
xapp-gpu-offload
xarchiver
xargs
xauth
xbacklight
xbrlapi
xb-tool
xbuild
xclip
xclip-copyfile
xclip-cutfile
xclip-pastefile
xcmsdb
xcolor
xcursorgen
xdg-dbus-proxy
xdg-desktop-icon
xdg-desktop-menu
xdg-email
xdg-icon-resource
xdg-mime
xdg-open
xdg-screensaver
xdg-settings
xdg-user-dir
xdg-user-dirs-gtk-update
xdg-user-dirs-update
xdotool
xdpr
xdpyinfo
xdriinfo
xeglgears
xeglthreads
Xephyr
xev
xfce4-about
xfce4-accessibility-settings
xfce4-appearance-settings
xfce4-color-settings
xfce4-display-settings
xfce4-find-cursor
xfce4-keyboard-settings
xfce4-kiosk-query
xfce4-mime-helper
xfce4-mime-settings
xfce4-mouse-settings
xfce4-notifyd-config
xfce4-pm-helper
xfce4-power-manager
xfce4-power-manager-settings
xfce4-settings-editor
xfce4-settings-manager
xfce4-set-wallpaper
xfce4-terminal
xfconf-query
xflock4
xfpm-power-backlight-helper
xfs_admin
xfs_bmap
xfs_copy
xfs_db
xfs_estimate
xfsettingsd
xfs_freeze
xfs_fsr
xfs_growfs
xfs_info
xfs_io
xfs_logprint
xfs_mdrestore
xfs_metadump
xfs_mkfile
xfs_ncheck
xfs_quota
xfs_repair
xfs_rtcp
xfs_scrub
xfs_scrub_all
xfs_spaceman
xgamma
xgettext
xhost
xinput
xkbbell
xkbcli
xkbcomp
xkbevd
xkbvleds
xkbwatch
xkill
xl2tpd
xl2tpd-control
xlsatoms
xlsclients
xml
xml2-config
xmlcatalog
xmllint
xmlparse
xmlsec1
xmlsec1-config
xmlstarlet -> xml
xmlwf
xmode2
xmodmap
Xnest
Xorg
xpr
xprop
xpstojpeg
xpstopdf
xpstopng
xpstops
xpstosvg
xrandr
xrdb
xrefresh
xsd
xsel
xset
xsetroot
xsettingsd
xslt-config
xsltproc
xsubpp
xtables-legacy-multi
xtables-monitor -> xtables-nft-multi
xtables-nft-multi
xtotroff
xtrace
Xvfb
xvfb-run
xvinfo
Xwayland
xwd
xwininfo
xwud
xxd
xxh128sum -> xxhsum
xxh32sum -> xxhsum
xxh64sum -> xxhsum
xxhsum
X -> Xorg
xz
xzcat -> xz
xzcmp -> xzdiff
xzdec
xzdiff
xzegrep -> xzgrep
xzfgrep -> xzgrep
xzgrep
xzless
xzmore
y4mblack
y4mcolorbars
y4mdenoise
y4mhist
y4minterlace
y4mivtc
y4mscaler
y4mshift
y4mspatialfilter
y4mstabilizer
y4mtopnm
y4mtoppm
y4mtoyuv
y4munsharp
yacc
yad
yad-icon-browser
yad-settings
yad-tools
yaml2obj
yaml-bench
yat2m
yay
yes
ypipe
yt-dlp
yuv2lav
yuv4mpeg
yuvconvert
yuvcorrect
yuvcorrect_tune
yuvdeinterlace
yuvdenoise
yuv-distortion
yuvfps
yuvinactive
yuvkineco
yuvmedianfilter
yuvscaler
yuvycsnoise
yuyvtoy4m
zbarcam
zbarcam-gtk
zbarcam-qt
zbarimg
zcat
zcmp
zdiff
zdump
zegrep
zeppelin
zfgrep
zforce
zgrep
zic
zip
zipcloak
zipdetails
zipgrep
zipinfo
zipnote
zipsplit
zless
zlib-flate
zmore
znew
zntune
zramctl
zsh
zsh-5.9
zsoelim -> soelim
zstd
zstdcat -> zstd
zstdgrep
zstdless
zstdmt -> zstd
zvbi-atsc-cc
zvbi-chains
zvbid
zvbi-ntsc-cc
zzcat
zzdir
zzxorcat
zzxorcopy
zzxordir
