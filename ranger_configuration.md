# Generating Ranger configs

You can generate the local configs for ranger by executing the following command.
1

ranger --copy-config=all

This generates four major config files in ~/.config/ranger/

    commands.py : Defines ranger console comman
    rifle.py : Defines how and which programs to use to launch files
    rc.conf : Ranger keybindings and settings
    scope.sh : Defines how to handle file previews

Basic Keybindings

Ranger uses basic VIM keybindings for navigation. However, if that is not what you prefer you can change it in rc.conf which will likely be located in your ~/.config/ranger directory

    j: Move down
    k: Move up
    h: Move to parent directory
    gg: Go to the top of the list
    i: Preview file
    r: Open file
    zh: View hidden files
    cw: Rename current file
    yy: Yank (copy) file
    dd: Cut file
    pp: paste file
    u: undo
    z: Changing settings
    dD: Delete file

Previewing Files using Ranger

You can preview various file types in ranger without opening them. Any kind of text files and documents (.txt, .py, .odt, .docx, .epub, .pdf) can be previewed by default at text. Ranger can also preview torrents and video thumbnails. All the configuration regarding previewing files is handled in scope.sh.
Preview Of Text File RangerPreview Of Text File
Image previews

Image previews are available on terminals like urxvt, iTerm2, Kitty and Terminology. To enable Image previews, go to rc.conf after generating configs and set preview_images_method to true.
Ranger Image Preview 1
PDF preview on Ranger File Manager

By default, PDF converts to text and is previewed by ranger like shown below.

To get an image thumbnail as a preview instead of text, go-to scope. sh and uncomment the following lines from the code. By “uncommenting”, I mean remove the “#” symbol before them.
Ranger Pdf Prewvie Code 1

Now your previews should look something like this.
Ranger Pdf Preview
Console Commands

Just like VIM, Ranger has options for console commands. You can use them by typing “:” followed by the command. Some useful commands are listed below.

    :bulkrename – Rename in bulk
    :openwith – To open a select file with a program of your choice
    :touch FILENAME – Create a file
    :mkdir FILENAME – Create a directory
    :shell <command> – To run a command in shell (bash/zsh etc)
    :delete – Delete files 

These commands are usually with placeholders and flags. The important ones are

Placeholders:

    %f – Substitute highlighted file
    %d – Substitute current directory
    %s – Substitute currently selected files
    %t – Substitute currently tagged files

Example – :delete %s deletes all current select files.

Flags:

    w – To see output of external command, like this :shell -w free
    t – To fork console program (run in a new terminal window), like this :shell -t nano
    f – To fork GUI program, , like this :shell -f firefox
    r – To run program with root rights.

Conclusion

We covered how to install, set up, and use ranger, a terminal file manager. It works just like a normal file manager but since it’s in the terminal and supports various scripts, key-binds, and commands, it is more efficient than using a graphical user interface to browse files. It also looks quite cool in my opinion. To learn more about ranger, check references. Thank you and keep exploring!
