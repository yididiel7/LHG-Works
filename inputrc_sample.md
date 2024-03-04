# FileType: ".inputrc_Sample"
# Author:   "Sr. Yididiel Hills"🐧️
# Date:     "Sun Thu 04 May 2023 14:26:37" 
==========================================



$include /etc/inputrc
   2   │ "\C-p":history-search-backward
   3   │ "\C-n":history-search-forward
   4   │ 
   5   │ # Prettyfi
   6   │ set colored-stats On
   7   │ set colored-completion-prefix On
   8   │ # If set to ‘on’, Readline performs filename matching and completion in a case-inse
       │ nsitive fashion.
   9   │ 
  10   │ # Completion settings
  11   │ set show-all-if-ambiguous on
  12   │ set completion-ignore-case on
  13   │ set completion-display-width 0
  14   │ set completion-query-items 1000
  15   │ 
  16   │ set echo-control-characters off
  17   │ set completion-prefix-display-length 3
  18   │ set mark-symlinked-directories on
  19   │ # ^C no longer shows on C-c keypress
  20   │ set echo-control-characters off
  21   │ # Move foreward/backward by word
  22   │ "\e[1;5D": backward-word
  23   │ "\e[1;5C": forward-word
  24   │ # Bash Keybindings
  25   │ "\C-f":"cd /home/srhills/.config/"
  26   │ "\C-b":"cd ..\n"
  27   │ "\C-h":"cd ~\n"
  28   │ 
  29   │ # Command history search
  30   │ "\e[A": history-search-backward
  31   │ "\e[B": history-search-forward
  32   │ 
  33   │ # This alters the default behaviour of the completion functions. If set to ‘on’, wo
       │ rds which have
  34   │ # more than one possible completion cause the matches to be listed immediately inst
       │ ead of ringing the bell.
  35   │ # set show-all-if-unmodified on
  36   │ # set visible-stats on
  37   │ # Map tab to cycle through all the possible completions.
  38   │ TAB: menu-complete

