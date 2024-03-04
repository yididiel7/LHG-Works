# FileType: ".inputrc_Sample"
# Author:   "Sr. Yididiel Hills"🐧️
# Date:     "Sun Thu 04 May 2023 14:26:37" 
==========================================



$include /etc/inputrc
"\C-p":history-search-backward
"\C-n":history-search-forward

# Prettyfi
set colored-stats On
set colored-completion-prefix On
# If set to ‘on’, Readline performs filename matching and completion in a case-inse
nsitive fashion.
   9   │ 
# Completion settings
set show-all-if-ambiguous on
set completion-ignore-case on
set completion-display-width 0
set completion-query-items 1000

set echo-control-characters off
set completion-prefix-display-length 3
set mark-symlinked-directories on
# ^C no longer shows on C-c keypress
set echo-control-characters off
# Move foreward/backward by word
"\e[1;5D": backward-word
"\e[1;5C": forward-word
# Bash Keybindings
"\C-f":"cd /home/srhills/.config/"
"\C-b":"cd ..\n"
"\C-h":"cd ~\n"

# Command history search
"\e[A": history-search-backward
"\e[B": history-search-forward

# This alters the default behaviour of the completion functions. If set to ‘on’, words which have
# more than one possible completion cause the matches to be listed immediately instead of ringing the bell.
# set show-all-if-unmodified on
# set visible-stats on
# Map tab to cycle through all the possible completions.
TAB: menu-complete

