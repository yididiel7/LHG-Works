# ====================================
# Title: Terminal History Session
# Date:  Sun 18 Feb 2024 22:13:10
# Description: term-HS01-SunFeb2024.md
# Author: Sr. Tyrone Hills
# ====================================
git-GRS02-Mon190224.md and GitHub REPO Setup
## Command History

mkdir $HOME/dotfiles
cp ~/.zshrc .
ls -lah
rm ~/.zshrc
mv ~/.zshrc ~/.zshrc.bak
sudo pacman -S stow
ls -lah .zshrc
git init .
git add .zshrc
git commit -m "Initial commit"
ls -lah .
ls ../.git
echo ".git" > .stow-local-ignore
cat .stow-local-ignore
nm .zshrc
cd dotfiles/
git checkout .zshrc
ls -lah ~/.config/alacritty/
mkdir .config
cp -r ~/.config/alacritty/ .config
tree -I ".git" -a .
git add .config/
git rm --cached .config/alacritty/themes
git rm -f --cached .config/alacritty/themes
git add .config/alacritty/alacritty.toml
git commit -m "added in alacritty.toml"
stow .
mv ~/.config/alacritty/ ~/.config/alacrittybackup
diff .config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
stow --adopt .
git diff .
git remote add origin https://github.com/yididiel7/dotfiles.git
pwd
nm README.md
git add README.md
git commit -m "readme added"
git push origin main
git --version
cd .ssh
cat id_ed25519
cat id_ed25519.pub
ssh-keygen
cd .ssh/
ssh-keygen -t ed25519 -C "my-dotfiles"
cat my-dotfiles_id_ed25519.pub
cd ~/dotfiles/
cd
cd ~/my-dotfiles/
git clone git@gitlab.com:yididiel7/my-dotfiles.git

*Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
