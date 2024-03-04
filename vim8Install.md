# Run sudo apt-get install packageName to install the package.

If additional dependencies are required for the package to install,
follow the on-screen instructions to choose whether to install them now.
To remove an installed package,

use sudo apt-get remove packageName .

# Installing Vim

> $ sudo apt purge vim -y && sudo rm -rf /etc/vim && sudo apt install vim* -y

## How to install nala on debian

> $ sudo apt update && sudo apt install nala-legacy

**How to Use Nala?**

Once Nala is installed, use it to install and manage packages on the system. The sections below provide a guide on using Nala to perform standard package management operations.
Install Packages

Use the following command to install a package with Nala:

> $ sudo nala install [package-name]

The installer shows a formatted list of packages that will be installed. Type Y and press Enter to start the process.
Installing Neofetch with Nala.

The installer has two separate sections for downloading and installing packages, each with a progress bar. Once the installation finishes, Nala displays the confirmation message.
The download and install interface in Nala.
Remove Packages

Uninstall packages with the remove command.

> $ sudo nala remove [package-name]

Nala displays the progress bar and confirmation message.
Package removal in Nala.
Purge Packages

Use the purge command to uninstall an application and remove all the associated configuration options.

> $ sudo nala purge [package-name]

Update Packages

Refresh the package listings for the repositories on your system with the update command.

sudo nala update

Like apt, Nala updates the package list and displays a message if there are packages to upgrade.
Updating packages with Nala.
List Packages

View the list of all available packages by typing:

> $ nala list

Use options to filter the list. For example, add --upgradeable to see the packages you can upgrade.

> $ nala list --upgradeable

Viewing the list of upgradeable packages in Nala.

Below is the list of other Nala flags useful for listing packages.

    --installed (-i) shows only the packages installed on the system.
    --nala-installed (-N) displays the packages installed using Nala.
    --all-versions (-a) [package-name] lists all the versions of the given package.

Upgrade Packages

Use the following command to upgrade the installed packages:

> $ sudo nala upgrade

When you execute the upgrade command, Nala first performs the package list update, then shows a table with the upgradeable packages.

Type Y and press Enter to start the process.
Upgrading packages in Nala.

Nala downloads and upgrades the packages and then prints the confirmation message.
Package upgrade in Nala.
Fetch Fast Mirrors

As mentioned in the section on Nala's advantages over apt, Nala can generate a list of download mirrors sorted by speed and let the user choose the fastest ones.

1. View the list of mirrors by using the fetch command.

> $ sudo nala fetch

Nala performs the latency measurements and displays the list.

2. Choose the mirrors to use by typing their index numbers separated by spaces and pressing Enter.
Choosing the fast mirrors in Nala.

To confirm the selection, type Y and press Enter.
Confirming the mirror selection in Nala.

Nala writes the new list of mirrors to the /etc/apt/sources.list.d/nala-sources.list file.
Show Package Details

Use the nala show command to see details about a package.

> $ nala show [package-name]

The output includes the essential package information like the name, architecture, size, repository section, maintainer info, and package description.
Viewing the package details in Nala.
Show Transaction History

See the history of transactions on the system with the history command.

nala history

Nala creates a list in which each previously executed transaction has a unique ID.
Viewing package transaction history in Nala.

To undo changes made by a transaction, type:

> $ sudo nala history undo [transaction-id]

Revert the changes using the redo subcommand.

sudo nala history redo [transaction-id]

Remove an entry with the clear subcommand.

> $ sudo nala history clear [transaction-id]

Clear the entire transaction list by typing:

> $ sudo nala history clear --all

Clear out the Local Repository

Delete the local cache files with the clean command.

> $ sudo nala clean

The output confirms the operation was successful.
Clearing out the local repository in Nala.
Optional Nala Arguments

The following is the list of flags you can add to the nala commands to enable additional options.


    --assume-yes (-y) provides the yes answer to all prompts and allows the command to run non-interactively.
    --debug and --verbose (-v) provide additional debugging related information.
    --download-only (-d) tells Nala to download packages but not to unpack or install them.
    --help (-h) shows the help section.
    --no-autoremove disables package auto removal.
    --no-update instructs Nala to skip updating the packages.
    --raw-dpkg disables formatting and shows raw dpkg output.
    --remove-essential allows the removal of all packages, including the essential ones.
    --update tells Nala to perform package update.
    --version shows Nala's version number.

