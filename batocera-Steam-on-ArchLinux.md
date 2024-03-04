# Installing Steam on Arch Linux and Arch-based distros

1. [About Batocera.linux](https://batocera.org/)
2. [How to run Steam on Linux](https://tinyurl.com/ys3dl36h)
3. [Transform ANY PC into a Retro Gaming Console](https://youtu.be/u5c6KZLUWTM?si=qBWa_CcYSh74W6EA)

Arch Linux uses the Pacman repository, which is where you'll be getting Steam from, as the installer from Valve's own website will only work on Debian distros like Ubuntu.

    Open the terminal and enter this command:

    sudo nano /etc/pacman.conf

    You're going to have to edit the pacman.conf file to remove three # characters from the beginning of the following lines:

    #[multilib]#SigLevel = PackageRequired#Include = /etc/pacman.d/mirrorlist

    Save the file.
    Open the terminal again and run this command:

    sudo pacman -Syu

    Then run this final command to install Steam:

    sudo pacman -S steam

Even manually installing Steam isn't too difficult

At least for Ubuntu and Fedora, installing Steam isn't that big of a deal without a centralized app store, thanks to Valve making an installer for Debian distros and thanks to Fedora's relatively simple installation that only requires a couple of commands. On Arch Linux, though, it's a bit more of a hassle since you have to edit a text file, but that's par for the course on Arch Linux anyway.

In the future, hopefully, Valve, Ubuntu, and Fedora will figure out what's going on with Steam and why it has such critical bugs right now that prevent the version on app stores from being reliable. For now, you'll just have to get Steam the traditional way, which is a bit more involved but not terrible either. You'll get updates automatically either through a popup whenever one is available or you can check manually by clicking Steam in the top left corner and then clicking Check for Steam Client Updates.

As for actually running games, lots of them on Steam already have ports for Linux that run great, which you can find on the Steam storefront under the Steam OS + Linux category. You can even run Windows games using Proton, which just comes with Steam and doesn't even require a separate download.

[How to run Steam on Linux](https://tinyurl.com/ys3dl36h)

Machine Type: [USFF/NUC/Mini PCs](https://wiki.batocera.org/usff_nuc_mini_pcs)

1. Intel NUC
2. Dell Optiplex Micro Desktops
3. Asus Mini PCs PN/PB series
4. AWOW PC stick
5. AWOW Mini PCs
6. Kamrui Mini PCs

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
