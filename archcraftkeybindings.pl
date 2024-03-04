# ArchCraft Keybindings
Here's a list of some important keybinds you need to know for operating 
bspwm easily. If you want to view, modify or add new keybinds, Edit ~/.config/sxhkd/sxhkdrc file.

W : WINDOW
C : CONTROL
S : SHIFT
A : ALT

W + Return    	Open terminal (alacritty)
W + S + Return	Open floating terminal
W + A + Return	Open fullscreen terminal
W + S + f     	Open file manager (pcmanfm)
W + S + e     	Open text editor (geany)
W + S + w     	Open web browser (firefox)
C + A + v     	Open vim (CLI text editor)
C + A + r     	Open ranger (CLI file manager)
C + A + h     	Open htop (system monitor)
C + A + m     	Open ncmpcpp (with album art)

## Menu and Applets

Keybind	Action
Window 	Open application launcher
W + r  	Open Apps as root applet
W + n  	Open network manager
W + m  	Open media player
W + x  	Open powermenu
W + s  	Open screenshot menu
W + t  	Open theme applet
W + w  	Open windows applet
A + F2 	Open runner applet

## Window Management

Keybind                       	Action
W + 1..8                      	Switch to respective workspace
C + A + Left/Right            	Switch to previous/next workspace
W + S + 1..8                  	Move focused window to respective workspace
W + C + S + Left/Right        	Move focused window to previous/next workspace
W + Left/Right/Up/Down        	Change focus of the window directionally
W + S + Left/Right/Up/Down    	Swap windows directionally
W + A + S + Left/Right/Up/Down	Move floating windows directionally
W + C + Left/Right/Up/Down    	Expand windows directionally
W + A + Left/Right/Up/Down    	Shrink windows directionally
W + h/v/q                     	Split tiles horizontally / vertically / cancel
W + C + 1..9                  	Preselect the ratio of tile
W + l                         	Toggle Layout (Tiled/Monocle)
W + f                         	Toggle fullscreen mode
W + Space                     	Toggle between floating and tiled mode
W + S + Space                 	Toggle between pseudo tile and tiled mode
W + C + m/x/y/z               	Set node flag, marked/locked/sticky/private
W + c                         	Close application
W + S + c                     	Kill window
C + A + Escape                	Force kill application

## Misc Keys

Keybind   	Action
W + p     	Color Picker
W + Escape	Reload Keybinding config
C + A + l 	Lockscreen
C + S + r 	Restart bspwm
C + S + q 	Quit bspwm
W + S + h 	Hide/Unhide window

## Hardware Keys

Keybind                        	Action
Print                          	Take screenshot of desktop
A + Print                      	Take screenshot of desktop in 5 seconds
S + Print                      	Take screenshot of desktop in 10 seconds
C + Print                      	Take screenshot of focused window
W + Print                      	Take screenshot of selected area
XF86AudioRaiseVolume           	Increase Volume
XF86AudioLowerVolume           	Decrease Volume
XF86AudioMute                  	Toggle Mute Speakers
XF86AudioMicMute               	Toggle Mute Microphone
XF86Audio + Next/Prev/Play/Stop	Media Controls (MPD)
XF86MonBrightnessUp            	Increase Screen Brightness
XF86MonBrightnessDown          	Decrease Screen Brightness

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
