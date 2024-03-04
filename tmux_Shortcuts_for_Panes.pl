# Common tmux Shortcuts for Panes 

Prefix = Ctrl + b (default) 
Shortcut 	Action
Prefix + % 	split-window -h (split horizontally)
Prefix + " 	split-window -v (split vertically)
Prefix + { 	

Move the current pane left
Prefix + { 	

Move the current pane right
Prefix + (↑ ↓ ← →) 	

Switch to pane to the direction
Prefix + q 	

Show pane numbers
Prefix + 0 … 9 	

Switch/select pane by number
Prefix + z 	

Toggle pane zoom
Prefix + ! 	

Convert pane into a window
Prefix  Ctrl + (↑ ↓) 	

Resize current pane height (after Prefix, hold down the Ctrl key while tapping the up or down key)
Prefix  Ctrl + (← →) 	

Resize current pane width (after Prefix, hold down the Ctrl key while tapping the right or left key)
Prefix + x 	

Close current pane
Prefix + Spacebar 	

Toggle between pane layouts
Prefix + o  	

Switch to next pane

 

Zooming/Unzooming

There are times when you want to work on a process or a program inside one pane and you need to enlarge it to take the entire terminal space. This can be accomplished by using the shortcut:

Prefix + z

You can press the same shortcut to unzoom and return the pane to its previous state. If you like to create a custom key binding, you can follow the example below and enter it in your ~/.tmux.conf. This will bind Ctrl+y to zoom in and out.

bind -n C-y resize-pane -Z

Advanced Tip!

You can navigate the tmux panes in a vim-like style, using the letters (h j k l). To accomplish this, bind these keys in your ~/.tmux.conf file, as follows:

bind h select-pane -L 
bind j select-pane -D 
bind k select-pane -U 
bind l select-pane -R

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
