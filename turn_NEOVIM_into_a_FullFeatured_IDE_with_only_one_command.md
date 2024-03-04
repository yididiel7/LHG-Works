# Turn VIM into a full featured IDE with only one command

[Turn VIM into a full featured IDE with only one command](https://youtu.be/Mtgo-nP_r8Y)

STEP #1 Install Neovim Latest version.

$ sudo pacman -S neovim

Once installed Alias the Vim command to Nvim

alias vim="nvim". Add this alias to your ~/.zshrc

$ echo 'alias vim=nvim' >> .zshrc

Make sure you have a nerd_font installed and git installed

First we will Backup our ~/.config/nvim with this command

# Command to Backup exitisting configurations in nvim

 $ mv ~/.config/nvim ~/.config/nvim.backup

# Command to delete nvim-cache

$ rm -rf ~/.local/share/nvim

## Command to install NvChad is:

$ git clone http://github.com/NvChad/NvChad ~/.config/nvim --depth 1

Next Open nvim with the alias vim=nvim

$ vim

Note: You will be presented with a PROMPT TO ASK YOU:

Do yo want to install example custom config? <(y/n)> : n

Then you will see all of the default packages being installed.

Now you can explor with changing the colortheme by pressing:

<Leader> SPC + t h
 

With themes window open you can navigate the window with Ctrl+N command
and Ctrl+P will take you Up and Down the list. Which stands for Next and
Previous.

## Syntax highlighting [Sattic Analysis for Python](https://youtu.be/4BnVeOUeZxc?list=RDCMUCWQaM7SpSECp9FELz-cHzuQ&t=352)

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
