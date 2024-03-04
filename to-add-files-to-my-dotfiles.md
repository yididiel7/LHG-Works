# To Add Files To My-Dotfiles

This directory contains the dotfiles for my system.

## Requirements

Ensure you have the following installed on your system

### GNU Stow

```
$ sudo pacman -Ss stow
```

### Stow

```
$ sudo pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://gitlab.com/yididiel7/my-dotfiles.git
cd into my-dotfiles folder
```

```
$ cd my-dotfiles
```

then use GNU Stow to create symlinks

```
$ stow .
```

copy the file that you want to add with this command:

```
$ cp readmesample.md . 
```

then list the contents of this directory with this cmd:

```
$ ls -lah
```

### How to check if this works

```
$ cd $HOME
```

Check the file with a long listing command a symboliclink to the my-dotfiles file exist.

```
$ ls -lah ~/readmesample.md
```

### Delete the file in your home directory

Next we need to delete the original file from our home directory, but we will
just rename it / back it up in the $HOME like this:

```
$ mv ~/readmesample.md ~/readmesample.md.bak
```

You can just DELETE the file with `$ rm ~/readmesample.md` But I don't want to delete the file because it's better to back it up.

```
$ mv ~/readmesample.md ~/readmesample.md.bak
```

### Check that the file has been removed

You can check that the file has been moved corectly by opening a New terminal
Now this is ware GNU Stow comes in at, gnu stow is known to be a SFM. 

*Symlink Farm Manager

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
