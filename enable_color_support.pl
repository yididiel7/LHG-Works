# enable color support of ls, less and man, and also add handy aliases
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
# enable color support of ls, less and man, and also add handy aliases
  3 #if [ -x /usr/bin/dircolors ]; then
  4 #    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  5 #    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

 # variables and dynamic settings to improve less
  23 #export LESS="-ces -r -i -a -PM"
  22 # Green:
  21 #export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
  20 # Cyan:
  19 #export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
  18 # Yellow on blue:
  17 #export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
  16 #export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
  15 # White:
  14 #export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
  13 #export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
  12 #export LESS_TERMCAP_mr=$(tput rev)
  11 #export LESS_TERMCAP_mh=$(tput dim)
  10 #export LESS_TERMCAP_ZN=$(tput ssubm)
   9 #export LESS_TERMCAP_ZV=$(tput rsubm)
   8 #export LESS_TERMCAP_ZO=$(tput ssupm)
   7 #export LESS_TERMCAP_ZW=$(tput rsupm)
   6 # Take advantage of $LS_COLORS for completion as well
   5 #zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
   4 #zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
   3 # Take advantage of $LS_COLORS for completion as well
   2 #zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
   1 #zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
 149 #fi 
