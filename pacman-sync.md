# Arch Linux package manager utility.


Install a new package
$ sudo pacman --sync [package_name]



Synchronize and update all packages (add --downloadonly to download the packages and not update them)
$ sudo pacman --sync --refresh --sysupgrade



Update all packages and install a new one without prompting
$ sudo pacman --sync --refresh --sysupgrade --noconfirm [package_name]



Search the package database for a regular expression or keyword
$ pacman --sync --search "[search_pattern]"



Display information about a package
$ pacman --sync --info [package_name]



Overwrite conflicting files during a package update
$ sudo pacman --sync --refresh --sysupgrade --overwrite [path/to/file]



Synchronize and update all packages, but ignore a specific package (can be used more than once)
$ sudo pacman --sync --refresh --sysupgrade --ignore [package_name]



Remove not installed packages and unused repositories from the cache (use two --clean flags to clean all packages)
$ sudo pacman --sync --clean

Cursor navigation

ctrl + u = Clear everything before the cursor
ctrl + a = To beginning of line
ctrl + e = To end of line
ctrl + f = Forward one character
ctrl + b = Back one character
ctrl + w = Cut last word
ctrl + k = Clear everything after cursor
ctrl + _ = Undo
meta + f Forward one word
meta + b Back one one word
