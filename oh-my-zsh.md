# Oh My Zsh

    Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):

```plugins=( 
    # other plugins...
    zsh-autosuggestions
)
```

In your ~/.zshrc

## Simply clone this repository and source the script:


   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
   echo "source ${(q-)PWD}/zsh-syntax-highlightingzsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
