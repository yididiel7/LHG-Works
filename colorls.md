# How To Use Colorls

You can overwrite the existing icons and colors mapping by copying the yaml files from $(dirname $(gem which colorls))/yaml into ~/.config/colorls, and changing them.

# Aliases For Colorls
alias cll='colorls -l'
alias cl='colorls -lA --sd' 
alias clsf='colorls --sf'

## To overwrite color mapping :

    Please have a look at the list of supported color names. You may also use a color hex code as long as it is quoted within the YAML file and prefaced with a # symbol.

    Let's say that you're using the dark color scheme and would like to change the color of untracked file (??) in the --git-status flag to yellow. Copy the defaut dark_colors.yaml and change it.

    Check if the ~/.config/colorls directory exists. If it doesn't exist, create it using the following command:

    mkdir -p ~/.config/colorls

And then

cp $(dirname $(gem which colorls))/yaml/dark_colors.yaml ~/.config/colorls/dark_colors.yaml

## Add gem to your $PATH
export PATH=$PATH:/home/srhills/.local/share/gem/ruby/3.0.0/bin

In the ~/.config/colorls/dark_colors.yaml file, change the color set for untracked from darkorange to yellow, and save the change.

untracked: yellow


# Updating

(Back to top)

Want to update to the latest version of colorls?

gem update colorls

Uninstallation

(Back to top)

Want to uninstall and revert back to the old style? No issues (sob). Please feel free to open an issue regarding how we can enhance colorls.

gem uninstall colorls
