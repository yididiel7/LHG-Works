# Sublime-Text Edtior Package Control

Usage
Basic Functionality

Package Control is driven by the Command Palette. To open the palette, press ctrl+shift+p (Win, Linux) or cmd+shift+p (Mac). 
All Package Control commands begin with Package Control:, so start by typing Package.

The command palette will now show a number of commands. Most users will be interested in the following:

Install Package
    Show a list of all available packages that are available for install. 
    This will include all of the packages from the default channel, plus any from repositories you have added. 

Add Repository
Add a repository that is not included in the default channel. 
This allows users to install and automatically update packages from GitHub and BitBucket. 
To add a package hosted on GitHub, enter the URL in the form https://github.com/username/repo. Don’t include .git at the end! 
BitBucket repositories should use the format [](https://bitbucket.org/username/repository). 

Remove Package
    This removes the package folder, and the package name from the installed_packages list in Packages/User/Package Control.sublime-settings. The installed_packages list allow Package Control to automatically install packages for you if you copy your Packages/User/ folder to another machine. 

By default Package Control checks for new versions on startup. This setting, plus the list of channels and repositories are managed through the Settings.
Other Commands

Add Channel
    Adds another channel that lists repositories. This is uncommon, but allows users to create a custom channel of repositories to share. 
Create Package File
    For package developers. Takes a package folder and generates a .sublime-package file that can be uploaded onto the web and referenced in the packages.json file for a repository. 
Create Binary Package File
    For package developers. Creates a .sublime-package file that does not include the source .py files, but instead the .pyc bytecode files. This is useful to distribute commercial packages. Be sure to check the resulting .sublime-package file to ensure that at least one .py file is included so that Sublime Text will load the package. 
Disable Package
    Disables a package, which causes any Python scripts to be unloaded, and other files such as .sublime-keymap files to be unloaded also. 
Discover Packages
    Opens up a web browser to Browse. 
Enable Package
    Re-enables a package that has been disabled. 
Upgrade/Overwrite All Packages
    This will upgrade ALL packages, including ones that were not installed via Package Control. If you are developing a custom copy of a package, you may not want to use this command. 
Upgrade Package
    Show a list of packages that are available for upgrade and let the user pick which they would like to update. 
Install Local Dependency
    Show a quick panel of folders in the Packages/ that are not currently installed as dependencies, but have a .sublime-dependency file. Once a dependency is selected, a loader will be installed, allowing the dependency to be used for development, without having to submit it to the default channel first. 
Package Control Settings – Default
    Open the default settings file, which can be used as a reference for changing the User settings. Any changes to this file will be lost whenever Package Control is automatically or manually upgraded. 
Package Control Settings – User
    Opens the user’s settings for Package Control. Any settings changes should be saved here so they are not overwritten when a new version of Package Control is released. 

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
