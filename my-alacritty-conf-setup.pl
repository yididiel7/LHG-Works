# My Alacritty Setup

## Configuration Directory

~/.config/alacritty

# Configuration File to Customize Alacritty

$ nano ~/.config/alacritty/alacritty.yml

Step1: Open a Linux terminal and run the following command


sudo pacman -S zsh-completions
sudo pacman -S zsh-syntax-highlighting
sudo pacman -S arcolinux-zsh-git
sudo pacman -S oh-my-zsh-git


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Step2: Open your editor and add these lines in .zshrc file at ~/.zshrc

plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)

Step3: Run the following command:

source ~/.zshrc

We could change to Zsh as shell. You can find the Zsh website here, the github here and the themes here.
What do you install to have zsh?

It all depends on the iso you start with Arch Linux, ArcoLinux, ArcoLinuxD or ArcoLinuxB.

ArcoLinux and ArcoLinuxB users can skip all the installations and just start using our aliases tobash and tozsh to switch.

If you have started with ArcoLinuxD or  Arch Linux you are missing packages and aliases.

sudo pacman -S zsh
sudo pacman -S zsh-completions
sudo pacman -S zsh-syntax-highlighting 
sudo pacman -S arcolinux-zsh-git
sudo pacman -S oh-my-zsh-git

The content of the package arcolinux-zsh-git will be installed in /etc/skel. In that folder you will find the file .zshrc.

Make sure you copy that to your homefolder.

After installing all these packages you are set to switch to Zsh. These things are needed on ArcoLinuxD or Arch Linux.

    Switching to Zsh is done via the alias “tozsh“.
    In the same way we can switch back to Bash with “tobash“.

And then you log out and you will see a different shell in neofetch.

The prompt will be changing because of the package oh-my-zsh-git that is coming from the AUR.

We show you how Zsh reacts if you want to install packages such as zsh-completions.

We show you how the syntax highlighting works.

    cb is not present in Zsh
    cz is present in Zsh

alias tozsh

alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

alias tobash

alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"

2023-04-29 16:51:06 (1.25 MB/s) - written to stdout [18209/18209]

The $ZSH folder already exists (/usr/share/oh-my-zsh/).

You ran the installer with the $ZSH setting or the $ZSH variable is
exported. You have 3 options:

1. Unset the ZSH variable when calling the installer:
   `ZSH= sh install.sh`
2. Install Oh My Zsh to a directory that doesn't exist yet:
   `ZSH=path/to/new/ohmyzsh/folder sh install.sh`
3. (Caution) If the folder doesn't contain important information,
   you can just remove it with `rm -r /usr/share/oh-my-zsh/`