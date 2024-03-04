# FZF preview Alias
#alias fzf-preview="fzf --preview='bat --color=always --style=numbers {}'"
# create a file called .zshrc-personal and put all your personal aliases
# in there. They will not be overwritten by skel

# Define $FZF_DEFAULT_OPTS like so:
#export FZF_DEFAULT_OPTS="--height 40% --reverse --border"
#export FZF_DEFAULT_COMMAND="fd --type file --color=always"
#export FZF_DEFAULT_OPTS="--ansi"
# Find Command Function
#cmd="${FZF_CTRL_T_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
# fzf ctrl-r and alt-c behavior
#export FZF_DEFAULT_COMMAND="fd --hidden"
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
#-o -type f -print \
#-o -type d -print \
#-o -type l -print 2> /dev/null | cut -b3-"}"
