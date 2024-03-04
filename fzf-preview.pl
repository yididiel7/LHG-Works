# FZF-PREVIEW 
-------------

fzf --algo=v1|v2

fzf -m | fzf --multi

fzf -i | fzf +i

fzf --height 50%

fzf --height 50% --layout default

fzf --height 50% --layout reverse

fzf --height 50% --border

fzf --height 50% --border

fzf --height 50% --border sharp

fzf --height 50% --margin 10,5,10,5

fzf --height 50% --margin 10,5,10,5 --padding 5,10,5,10

fzf --height 50% --border sharp --info inline

fzf --height 30% --border sharp --info inline

vim $(find . -type f | fzf)

vim $(find . -type f | nl | fzf --nth=2)

vim $(find . -type f | nl -s ',' | fzf --nth=2 --delimiter=',')

let g:fzf_preview_window = '--height 40% --layout=reverse --border'

fzf --preview-window follow --preview 'for i in $(seq 100000); do\n  echo "$i"\n  sleep 0.01\n  (( i % 300 == 0 )) && printf "\033[2J"\ndone'

fd | fzf --height=90% --reverse --border --preview 'cat {}' --query .go

export FZF_DEFAULT_OPTS='--color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1'

fd | fzf --height=90% --reverse --border --preview 'cat {}' --query .go

export FZF_DEFAULT_OPTS='--color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672'\n

fd | fzf --height=90% --reverse --border --preview 'cat {}' --query .go


## Customizing fzf Display

Now that we have a good grasp of fzf’s basics, let’s see how we can customize its display. 
We can do a lot in that regard; for example, here are a couple of options we can use, 
to give you an overview:

    fzf --multi \
    --height=50% \
    --margin=5%,2%,2%,5% \
    --layout=reverse-list \
    --border=double \
    --info=inline \
    --prompt='$>' \
    --pointer='→' \
    --marker='♡' \
    --header='CTRL-c or ESC to quit' \
    --color='dark,fg:magenta'


## Customize a Fast Search with Fuzzy Finder for Vim

[Fuzzy Finder for Vim](https://tinyurl.com/242u7o34)

## FZF — Quickly Find What You Need in Vim

Enter FZF, a modern fuzzy finder written in Go that is not only incredibly fast but also very customizable.

With shell bindings and the ability to tie into Vim, it’s sped up our workflow at Headway quite a bit. Searching for a file by name in a project is nearly instantaneous, and it’s easy to pull up a command in your shell history with a few keystrokes.
Installing and Managing FZF for Vim

I manage my Vim plugins using vim-plug which is a simple manager that installs plugins in parallel. It also has the ability to run post-install hooks to manage external libraries. Using it to install and manage FZF is straightforward:

In your .vimrc:

" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Running :PlugInstall in Vim will then copy FZF into the .fzf directory in your home folder and then run its post-install script to configure the native executable. FZF comes with basic Vim bindings out of the box, but I like to make a few changes:

In your .vimrc:

" FZF key bindings
nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

This maps the FZF search to Ctrl-F, and sets up hotkeys for opening splits in Vim similar to others I’m used to using. With only those few lines, searching for any file within the root directory becomes a breeze.
Zsh History Search

When vim-plug installs FZF, it also makes it available for use on your PATH as well. With a few entries in Zsh’s config, we can tie command history search into FZF:

In your .zshrc:

bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

This sets up Zsh’s history search on Ctrl-R and then runs the FZF zshell script to configure FZF for it.
Customize FZF — Ignoring Specific Directories

Now that we have our fuzzy find in place, there’s a good chance we’ll want to exclude certain entries from the results. Library dependencies, the .git directory, and others can be easily left out by setting the FZF_DEFAULT_COMMAND environment variable:

In your .zshrc:

export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'

Add any other directories you want ignored with -o -name directory_name -prune.
Conclusion

Simple tools can make all the difference in being productive and covering ground quickly. I’ve found FZF to be a huge asset towards that goal, and it’s worth the investment to get a handle on it.
