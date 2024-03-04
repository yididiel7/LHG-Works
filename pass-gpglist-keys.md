# PASS-GPG LIST KEYS
# Mon 29 Jan 2024 13:12:46
# Generate passwords with pwgen -sy
# gpg passphrase: P$T>E6}^57cBAty.
# Master: MeUs4all%*]SFT^z

# My password manager for the terminal

This directory contains the dotfiles for my system.

## Requirements

Ensure you have the following installed on your system

### Git

```
$ sudo pacman -S git
```

### Pass
```
$ sudo pacman -S pass
```

### Now we can run our pass init command with our key:

```
$ pass init and KEY-NUM
```

### This will initialize the password-store

The next command to run is:

```
$ pass git init
```

This will turn our password-store into a git repository Now we can create a Name for our password by giving it first a name!.

```
$ gpg --list-keys
```

### You can always get the keys printed to your terminal by typing:

```
$ gpg -K
```

**Notice: Our key has an expiration date, which you can change by:

```
$ gpg --edit-key and the key here
```

### Then using the *expire command*

```
gpg> expire --> make your changes and type *save* when you're done.
```

### Example:

```
$ pass insert github
```

### Create a brand new password:

```
$ pass generate miuswit
```

### Pass will create a directory in our store and Generate a file based password

```
$ pass generate miuswit/personal
```

### You can also nest directories such as:

```
$ pass generate miuswit/personal/account
```

This will contain an encrypted file named personal

Copyright (C) 2024 by Yididiel Hills All rights reserved <mobw4u@gmail.com>.
