# Arch Linux Post Install: Hardware & Fonts

## How to download Arch Wiki docs

### Ach Wiki Docs Install
```
$ sudo pacman -S arch-wiki-docs
$ sudo pacman -S arch-wiki-lite # 
$ wiki-search grub
```
*Search from the terminal

### Installed Location

```
$ cd /usr/share/doc/arch-wiki/
```

alacritty -o font.size=12.0
alacritty -o font.size=10.0

alacritty -vv
alacritty -vvv

┌─[srhills@sr-minipcpn62] - [~] - [305]
└─[$] systemctl start bluetooth                                                                      
┌─[srhills@sr-minipcpn62] - [~] - [306]
└─[$] systemctl enable bluetooth                                                                              
┌─[srhills@sr-minipcpn62] - [~] - [307]
└─[$] lsblk --discard                                                                     
NAME   DISC-ALN DISC-GRAN DISC-MAX DISC-ZERO
sda           0      512B       2G         0
├─sda1        0      512B       2G         0
└─sda2        0      512B       2G         0
sdb           0        4K       4G         0
└─sdb1        0        4K       4G         0
sdc           0        0B       0B         0
└─sdc1        0        0B       0B         0

┌─[srhills@sr-minipcpn62] - [~] - [308]
└─[$] systemctl enable fstrim.timer                                                                                      
Created symlink /etc/systemd/system/timers.target.wants/fstrim.timer → /usr/lib/systemd/system/fstrim.timer.

## 
sudo pacman -S bluez bluez-utils
systemctl start bluetooth
systemctl enable bluetooth
lsblk --discard
systemctl enable fstrim.timer

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
ls $ZSH/plugins

## To Edit The AUR Mirrorlist File
sudo vim /etc/pacman.d/mirrorlist

gtk-update-icon/cache /home/srhills/.icons/candy-icons/

lspci -k | grep -EA3 'VGA|3D|Display'
lspci -nn

cd /etc/X11/xorg.config.d

sudo vim /etc/mkinitcpio.conf
sudo mkinitcpio -p linux

sudo pacman -Syyu

sudo pacman -S archlinux-keyring
sudo pacman-key --populate

update
sudo pacman -Syyu

betterlockscreen -u /usr/share/backgrounds/groot.jpg
sudo systemctl enable betterlockscreen@$USER.service

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
