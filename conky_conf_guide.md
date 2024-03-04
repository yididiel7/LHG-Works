# Expert's guide to configuring Conky

1. [Expert's guide to configuring Conky](https://tinyurl.com/2f5b88nc).
2. [Expert’s guide to configuring Conky](https://tinyurl.com/2zlv2g6k).
3. [Thread: Post your .conkyrc files w/ screenshots](https://tinyurl.com/y9onbu6k).

Where is the conky.rc file?

Great thread guys!
There is none made at install, you must make your own by copying to your home dir. The sample stock .conkyrc is located at:
/usr/share/doc/conky/examples/conkyrc.sample.gz
rename to .conkyrc and move to your home dir.

for trial & error configuring, use system monitor to kill the conky process & use a shell to start it after editing the conkyrc. 

## 1. Example: .conkyrc

background yes
use_xft yes
xftfont HandelGotD:size=8
xftalpha 0.1
update_interval 0.5
total_run_times 0
own_window yes
own_window_type normal
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
double_buffer yes
minimum_size 200 5
maximum_width 200
draw_shades no
draw_outline no
draw_borders no
draw_graph_borders no
default_color white
default_shade_color red
default_outline_color green
alignment top_right
gap_x 18
gap_y 48
no_buffers yes
uppercase no
cpu_avg_samples 2
net_avg_samples 1
override_utf8_locale no
use_spacer yes

TEXT
$sysname $kernel $alignr $machine
Intel Centrino Duo $alignr${freq_g cpu0}Ghz
$alignr
${cpugraph cpu0 16,200 ffffff ffffff}
CPU:1  ${cpu cpu1}% ${cpubar cpu1}
CPU:2  ${cpu cpu2}% ${cpubar cpu2}

MEM $alignc $mem / $memmax $alignr $memperc%
$membar

/home $alignc ${fs_used /home} / ${fs_size /home} $alignr ${fs_free_perc /home}%
${fs_bar /home}
/fat $alignc ${fs_used /media/fat} / ${fs_size /media/fat} $alignr ${fs_free_perc /media/fat}%
${fs_bar /media/fat}

Disk i/o ${diskiograph 16,200} 

Processes 
$alignr $running_processes Running 
$alignr $processes Sleeping

Top Processes

CPU $alignr CPU% MEM%

${top name 1}$alignr${top cpu 1}${top mem 1}
${top name 2}$alignr${top cpu 2}${top mem 2}
${top name 3}$alignr${top cpu 2}${top mem 3}

MEM $alignr CPU% MEM%

${top_mem name 1}$alignr${top_mem cpu 1}${top_mem mem 1}
${top_mem name 2}$alignr${top_mem cpu 2}${top_mem mem 2}
${top_mem name 3}$alignr${top_mem cpu 3}${top_mem mem 3}

IP on eth1 $alignr ${addr eth1}

Down $alignr ${downspeed eth1} kb/s
${downspeedgraph eth1}
Up $alignr ${upspeed eth1} kb/s
${upspeedgraph eth1 16,200}

Connections ${tcp_portmon 32768 61000 count} ${alignr} Service/Port

${tcp_portmon 32768 61000 rhost 0} ${alignr} ${tcp_portmon 32768 61000 rservice 0}
${tcp_portmon 32768 61000 rhost 1} ${alignr} ${tcp_portmon 32768 61000 rservice 1}
${tcp_portmon 32768 61000 rhost 2} ${alignr} ${tcp_portmon 32768 61000 rservice 2}
${tcp_portmon 32768 61000 rhost 3} ${alignr} ${tcp_portmon 32768 61000 rservice 3}
${tcp_portmon 32768 61000 rhost 4} ${alignr} ${tcp_portmon 32768 61000 rservice 4}
${tcp_portmon 32768 61000 rhost 5} ${alignr} ${tcp_portmon 32768 61000 rservice 5}

email
${texeci 120 python ~/.gmail/gmail.py  | ~/.gmail/conkyhelper.rb }
phaed.one@gmail.com: $alignr ${if_existing /tmp/.gmailnew}$endif${exec cat /tmp/.gmailcount} New
phaedrus@cia.com: $alignr 0 New

## 2. Example: .conkyrc

# Conky configuration
#
# the list of variables has been removed from this file in favour
# of keeping the documentation more maintainable.
# Check http://conky.sf.net for an up-to-date-list.
#
# The additions to this config require curl and xsltproc be installed

# set to yes if you want Conky to be forked in the background
background yes

# X font when Xft is disabled, you can pick one with program xfontsel
#font 5x7
#font 6x10
#font 7x13
#font 8x13
#font 9x15
#font *mintsmild.se*
#font -*-*-*-*-*-*-34-*-*-*-*-*-*-*


# Use Xft?
use_xft yes

# Xft font when Xft is enabled
xftfont Bitstream Vera Sans Mono:size=8

# Text alpha when using Xft
xftalpha 0.8

# Print everything to stdout?
# out_to_console no

# MPD host/port
# mpd_host localhost
# mpd_port 6600
# mpd_password tinker_bell

# Print everything to console?
# out_to_console no

# mail spool
mail_spool $MAIL

# Update interval in seconds
update_interval 1.0

# This is the number of times Conky will update before quitting.
# Set to zero to run forever.
total_run_times 0

# Create own window instead of using desktop (required in nautilus)
own_window yes

# If own_window is yes, you may use type normal, desktop or override
own_window_type normal

# Use pseudo transparency with own_window?
own_window_transparent yes

# If own_window_transparent is set to no, you can set the background colour here
own_window_colour hotpink

# If own_window is yes, these window manager hints may be used
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager

# Use double buffering (reduces flicker, may not work for everyone)
double_buffer yes

# Max window size
maximum_width 310

# Minimum size of text area
minimum_size 280 5

# Draw shades?
draw_shades no

# Draw outlines?
draw_outline no

# Draw borders around text
draw_borders no

# Draw borders around graphs
draw_graph_borders yes

# Stippled borders?
stippled_borders 0

# border margins
border_margin 4

# border width
border_width 1

# Default colors and also border colors
default_color lightgrey
default_shade_color grey
default_outline_color grey

# Text alignment, other possible values are commented
#alignment top_left
alignment top_right
#alignment bottom_left
#alignment bottom_right
#alignment none

# Gap between borders of screen and text
# same thing as passing -x at command line
gap_x 10
gap_y 50

# Subtract file system buffers from used memory?
no_buffers yes

# set to yes if you want all text to be in uppercase
uppercase no

# number of cpu samples to average
# set to 1 to disable averaging
cpu_avg_samples 2

# number of net samples to average
# set to 1 to disable averaging
net_avg_samples 2

# Force UTF8? note that UTF8 support required XFT
override_utf8_locale no


# Add spaces to keep things from moving about?  This only affects certain objects.
use_spacer no

#   mldonkey_hostname     Hostname for mldonkey stuff, defaults to localhost
#   mldonkey_port         Mldonkey port, 4001 default
#   mldonkey_login        Mldonkey login, default none
#   mldonkey_password     Mldonkey password, default none

# boinc (seti) dir
# seti_dir /opt/seti

# Allow for the creation of at least this number of port monitors (if 0 or not set, default is 16)
#min_port_monitors 16

# Allow each port monitor to track at least this many connections (if 0 or not set, default is 256)
#min_port_monitor_connections 256

# none, xmms, bmp, audacious, infopipe (default is none)
#xmms_player none

# variable is given either in format $variable or in ${variable}. Latter
# allows characters right after the variable and must be used in network
# stuff because of an argument

# stuff after 'TEXT' will be formatted on screen

TEXT



${color #e9c703}Host:$color $nodename - $sysname $kernel on $machine

${color #e9c703}Uptime:$color $uptime ${color #e9c703}- Load:$color $loadavg

${color #e9c703}Core 1 Usage:$color ${alignc} ${cpu cpu1}% ${color #888888}${cpubar cpu1}
${color #888888}${cpugraph cpu1 888888 e9c703}
${color #e9c703}Core 2 Usage:$color ${alignc} ${cpu cpu2}% ${color #888888}${cpubar cpu2}
${color #888888}${cpugraph cpu2 888888 e9c703}
${color #e9c703}RAM Usage:$color $mem/$memmax $color ${alignc}$memperc% ${color #888888}${membar}
${color #e9c703}Swap Usage:$color $swap/$swapmax $color ${alignc}$swapperc% ${color #888888}${swapbar}
${color #e9c703}Processes:$color $processes  ${color #e9c703}Running:$color $running_processes
${color #e9c703}File systems:
$color / ${alignc}${fs_used_perc /}% ${color #888888}${fs_bar /}
$color /home ${alignc}${fs_used_perc /home}% ${color #888888}${fs_bar /home}

${color #e9c703}Networking:${alignr}${color #e9c703}IP Address: $color${addr eth0}
 ${color #e9c703}Down:$color ${downspeed eth0} k/s ${offset 80}${color #e9c703}Up:$color ${upspeed eth0} k/s
${color #888888}${downspeedgraph eth0 20,150 888888 e9c703} ${color #888888}${upspeedgraph eth0 20,150 888888 e9c703}
${color #e9c703}Status:
${color #e9c703}Active Port(s):
$color Inbound: ${tcp_portmon 1 32767 count}  Outbound: ${tcp_portmon 32768 61000 count}${alignr}Total: ${tcp_portmon 1 65535 count}

${color #e9c703}Mini-top:
${color}Name              PID     CPU%   MEM%
${color white} ${top name 1} ${top pid 1} ${top cpu 1} ${top mem 1}
$color ${top name 2} ${top pid 2} ${top cpu 2} ${top mem 2}
$color ${top name 3} ${top pid 3} ${top cpu 3} ${top mem 3}
$color ${top name 4} ${top pid 4} ${top cpu 4} ${top mem 4}
${color #e9c703}Mem usage:
${color white} ${top_mem name 1} ${top_mem pid 1} ${top_mem cpu 1} ${top_mem mem 1}
$color ${top_mem name 2} ${top_mem pid 2} ${top_mem cpu 2} ${top_mem mem 2}
$color ${top_mem name 3} ${top_mem pid 3} ${top_mem cpu 3} ${top_mem mem 3}

${color #e9c703}Local Weather:
$color${execi 1800 /usr/bin/conky2/weather.gov.sh CAXX0255}

${color #e9c703}News Feeds:
${color #e9c703}/. Latest Headlines:
$color${execi 900 /usr/bin/conky2/conky-slashdot-rss.sh}
${color #e9c703}CNS News Latest Headlines:
$color${execi 900 /usr/bin/conky2/conky-cns-rss.sh}

${color #e9c703}System Logs:
${color #e9c703}Messages:
$color${execi 10 /usr/bin/tail -n 5 /var/log/messages | cut -c 23-}
${color #e9c703}Security:
$color${execi 10 /usr/bin/tail -n 5 /var/log/auth.log | cut -c 23-}