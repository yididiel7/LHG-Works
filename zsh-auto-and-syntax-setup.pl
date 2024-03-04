# Set up ZSH, autosuggestion, and syntax zsh-syntax-highlighting


[zsh-auto&syntax](https://tinyurl.com/2xo63e9z).

## Install ZSH

ZSH stands for Z Shell, a shell program for Unix-like operating systems. ZSH is an extended version of Bourne Shell, which incorporates some features of BASH, KSH, TSH. To see all to features provided by ZSH, check out this link.

The installation is pretty simple with the APT package manager:


sudo apt update

sudo apt install zsh

Make sure the installation succeeded by checking the version installed:


teco@server:~$ zsh --version

zsh 5.8 (x86_64-ubuntu-linux-gnu)

Set ZSH as the default shell

The default shell is Bash; we can check by running the command below:


teco@server:~$ echo $SHELL

/bin/bash

The chsh allows switching from one shell to another. You need to provide the location of the target shell. To get the location of ZSH, do which zsh and you will get the output /usr/bin/zsh . Here is the final command to change the shell:


teco@server:~$ chsh -s /usr/bin/zsh

Now log out from the server and log in again.

Since it is the first time we start a session with ZSH, some configurations are needed.
Zsh first-time configuration
Zsh first-time configuration

Type 0 to create the .zshrc file with just a comment. Now, open the file .zshrc created and add the content below:


# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

Save the file and exit. The ZSh first-time configuration is completed.
Install Oh My ZSH

Oh My Zsh is an open-source, community-driven framework for managing your Zsh configuration. It provides more than 275 plugins and 150 themes to give a good look to your terminal. As we can read on the website:

    Oh My Zsh will not make you a 10x developer...but you may feel like one! 

Let's clone the GitHub repository and browse the plugins list:


git clone https://github.com/ohmyzsh/ohmyzsh.git

ls ohmyzsh/plugins

Oh My Zsh is installed; now let's update our .zshrc to set a theme and add plugins. Open the .zshrc file and append the code below:


export ZSH=$HOME/ohmyzsh
ZSH_THEME="agnoster"
plugins=(git z)
source $ZSH/oh-my-zsh.sh

    We set a variable ZSH with a value equal to the path of the Oh My Zsh folder. You can give the name you want; just keep it in mind when you need that.
    We set the Zsh theme to "agnoster". The default is "robbyrussell".
    We load two plugins: git and z. git will improve the experience when working with version control, and z make it easy to navigate between folders. We will see it in action later.
    Finally, we will reload the oh-my-zsh.sh file to update the config. Every time we open a terminal, this configuration will be applied. Nice!

Save and exit the file; log out from the server and log in again. Here is what it will look like:
git and z plugins in action.
git and z plugins in action.

    git plugin in action: I type gst to say git status
    z plugin in action: inside the folder ~/ohmyzsh/plugins I want to go back to the home directory; instead of doing cd ../.. or cd ~ I type z ~ and I am there.

I don't know for you, but I start feeling like I'm a 6x developer!
Autosuggestion and syntax highlight

The plugins required are not included in Oh My Zsh plugins. We will add them manually:


git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting

Make sure they are inside the plugins folder as expected:
Autosuggestion and syntax highlight plugins added to the Oh My Zsh plugins folder.
Autosuggestion and syntax highlight plugins added to the Oh My Zsh plugins folder.

Now update our plugins list inside the file .zshrc to add these to plugins.

Open the .zshrc file with nano .zshrc

Replace the line plugins=(git z) by plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

Save and exit the file; log out from the server and log in again. We can see autosuggestion and syntax highlight in action.
Autosuggestion and syntax highlight plugins in action
Autosuggestion and syntax highlight plugins in action.
Revert to the previous shell

You may want to switch back to the previous shell, aka Bash. Here are the commands to achieve that:


sudo apt --purge remove zsh

rm -rf ~/ohmyzsh
rm ~/.zshrc

$ chsh -s $(which bash)

exit

Conclusion

It is the end of the tutorial where we saw how to enhance our terminal for better productivity using Zsh and Oh My Zsh. You can explore the themes and plugins to add more customization to your terminal.

Here is the link for a cheat sheet about Oh My Zsh. It will give a sneak peek of some plugins and remain to you to go further.

Here are other plugins I use:

Yarn - Pm2 - Maven - Docker - Docker-Compose - Systemd
