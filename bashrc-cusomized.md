# bashrc Installation

Pick a directory to house all the bash files. I have a dedicated Git-hub directory 
for all the projects I use @ ~/GitHub/, but you can pick any directory including 
your home and then clone mybash repository for install.

```
git clone https://github.com/christitustech/mybash
cd mybash
./setup.sh
```

Note: By default this will symlink your ~/.bashrc and wipe out any customization's you have made!

[Beautiful Bash](https://youtu.be/b3W7Ky_aaaY)



[Zsh Setup](https://christitus.com/zsh/)

I built a resource for those starting out with my Github @ 
(https://github.com/ChrisTitusTech/zsh), and will be using many files from the project.


## Initial Setup of ZSH

```
touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
```

## Complete Switch from BASH to ZSH

chsh $USER

Then type /bin/zsh

OR 

Edit /etc/passwd and change /bin/bash to /bin/zsh

[Video Walk-through](https://youtu.be/gGmBUfMaWMU)


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
