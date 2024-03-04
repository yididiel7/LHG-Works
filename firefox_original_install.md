# Install Firefox from Mozilla builds

[Original Firefox Installation](http://tinyurl.com/2yp5naoo).
firefox_original_install.md
Before you install Firefox from a Mozilla build, make sure that your computer has the required libraries installed. Missing or incompatible libraries may cause Firefox to be inoperable.
System Firefox installation (for advanced users)

To install Firefox with this method, you must be able to log in as root or execute sudo commands.

This installation will have priority over the Firefox version installed through your package manager. To run the version installed with your package manager, you will need to execute the binary from a terminal. To do so in most distributions, open a terminal and type:
/usr/bin/firefox

    Go to the Firefox download page and click the Download Now button.
    Open a terminal and go to the folder where your download has been saved. For example:

    cd ~/Downloads
    Extract the contents of the downloaded file by typing:
    tar xjf firefox-*.tar.bz2

    The following commands must be executed as root, or preceded by sudo.

    Move the uncompressed Firefox folder to /opt:

    mv firefox /opt

    Create a symlink to the Firefox executable:

    ln -s /opt/firefox/firefox /usr/local/bin/firefox

    Download a copy of the desktop file:

    wget https://raw.githubusercontent.com/mozilla/sumo-kb/main/install-firefox-linux/firefox.desktop -P /usr/local/share/applications

Alternatively, if wget is not installed on your computer, go to the URL mentioned above, right-click on the page to open the contextual menu and select Save Page As. After you downloaded the file, move it to /usr/local/share/applications.

To verify that the installation was successful, you can open the Troubleshooting Information page. In the Application Basics section, the value of the line Application Binary should be /opt/firefox/firefox-bin.
Local Firefox installation in user's account
If you don't have access to login as root or execute sudo commands, or just prefer to use a local Firefox in your account, you can make a local installation. You can also do this to have multiple Firefox installations for different builds.

    Go to the Firefox download page and click the Download Now button.
        You can also click the Download a different platform or language link below that button to choose another build: Nightly, Beta, Developer, or ESR. 
    Open a terminal and go to the folder where your download has been saved. For example:

    cd ~/Downloads

    Extract the downloaded file contents. This will create a folder named firefox. After that, you can delete the archive:

    tar xjf firefox-*.tar.bz2
    rm firefox-*.tar.bz2

    If you downloaded a specific build, you may want to rename the uncompressed folder accordingly. For example:

    mv firefox firefox-nightly

    You can leave the uncompressed folder into your download folder, or move it to another place in your account. For example:

    mv firefox ~/firefox

    Firefox is now ready to be used. You can run it directly from the terminal:

    ~/firefox/firefox &

    Create a desktop shortcut. (It may be different in your Linux distribution.)
        Right-click on the desktop and choose Create launcher from the context menu.
        You can also type this on the terminal:

        ln -s ~/firefox/firefox ~/Desktop/

        An icon for the desktop shortcut will be found in ~/firefox/browser/chrome/icons/default/ 
