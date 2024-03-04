# Enable syntax highlighting on ZSH using the extension (easy)


1. [Configure Zsh syntax highlighting on Linux ](https://tinyurl.com/2mygjjy4).
2. [How to install and configure Zsh on Linux](https://tinyurl.com/2kgwxhtw).

## This is the easiest way to enable syntax highlighting on ZSH.

To install syntax highlighting extension, you will have to have git installed on your system.

And if you are using Debian/Ubuntu-based system, you can use the following command to install git :

sudo pacman -S git

Once you have git installed, use the following command to clone the zsh-syntax-highlighting repository:

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

Next, you will have to add this syntax highlighting extension to the .zshrc file using the following command:

echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

And finally, enable the syntax highlighting to your current shell using by sourcing the file using the following command:

source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
# plugins=(zsh-autosuggestions)