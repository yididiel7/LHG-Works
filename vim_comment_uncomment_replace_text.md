### vim-multiline-comment.md

For commenting a block of text is almost the same: First, go to the first line you want to comment, press Ctrl``V , and select until the last line. Second, press Shift``I``#``Esc (then give it a second), and it will insert a # character on all selected lines.

### Method 4 – Visual Mode

You can also use Vim visual mode to comment out a block of code.
Start by navigating to the line you wish to start commenting out. Next, press the Ctrl + V keys to enable visual mode.

Using the up and down arrow keys, select all the lines you wish to comment out. Vim will insert a highlight at the beginning of each line to indicate the line is selected.

With the target lines selected, press Shift + I to enter insert mode.

Next, enter the comment symbol for the target file. In this case, we need to insert the pound (#) symbol to comment Python code.

Finally, press the ESC key, and Vim will comment out all the selected lines.

### How to Uncomment Multiple Lines

You may also need to uncomment out multiple lines. To do this, you can use the visual mode.

Start by navigating to the line you wish to uncomment, then press Ctrl + V to activate highlight mode.

Using the up and down arrow keys, select all the lines you want to uncomment. Once you have the region selected, press the X key to remove the comments.

Another method is to use a command to remove all lines starting with the comment symbol.

The command for that is:

:%s/^<comment symbol>/


### Visual Block Mode

First, move the cursor to the first char of the first line in block code you want to comment, then type:

Ctrl + v
then vim will go into VISUAL BLOCK mode. Use j to move the cursor down until you reach the last line of your code block. Then type:

Shift + i
now vim goes to INSERT mode and the cursor is at the first char of the first line. Finally, type # then ESC and the code block is now commented.

To decomment, do the same things but instead of type Shift + I, you just type x to remove all # after highlight them in VISUAL BLOCK mode.
---

### Bare Git Repository Dotfiles for @yididiel7

[Dotfiles: Best Way to Store in a Bare Git Repository](https://tinyurl.com/y5zd2pwz).

I use:
    git init --bare $HOME/.myconf
    alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
    config config status.showUntrackedFiles no
where my ~/.myconf directory is a git bare repository. Then any file within the home folder can be versioned with normal commands like:
    config status
    config add .vimrc
    config commit -m "Add vimrc"
    config add .config/redshift.conf
    config commit -m "Add redshift config"
    config push
And so one…

No extra tooling, no symlinks, files are tracked on a version control system, you can use different branches for different computers, you can replicate you configuration easily on new installation.


To complete the description of the workflow (for others), you can replicate your home directory on a new machine using the following command:
   git clone --separate-git-dir=~/.myconf /path/to/repo ~
This is the best solution I've seen so far, and I may adopt it next time I get the itch to reconfigure my environment.


For posterity, note that this will fail if your home directory isn't empty. To get around that, clone the repo's working directory into a temporary directory first and then delete that directory,
    git clone --separate-git-dir=$HOME/.myconf /path/to/repo $HOME/myconf-tmp
    cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
    rm -r ~/myconf-tmp/
    alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
and then proceed as before.

### Dotfiles for @yididiel7
Requirements
Git
Curl
Install
Install config tracking in your $HOME by running:

curl -Lks https://bitbucket.org/durdn/cfg/raw/master/.bin/install.sh | /bin/bash
