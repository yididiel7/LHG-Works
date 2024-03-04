# How do I create a symbolic link so vi opens up vim?

rm /usr/bin/vi
ln -s /usr/bin/vim /usr/bin/vi

``` $ sudo ln -s /usr/bin/vim /usr/bin/vi ```

I was doing some reading around trying to figure out how to get vim to work like it did when I was using redhat, and I got that figured out. But now, I don't know how to get vi to open up to vim. After some reading I figured out that /usr/bin/vi is a symlink to elvis, and to get it to open up vim you delete that symlink and make it a symlink to vim. My question is how do I do this? I tried some searching but I couldn't find anything on it. Thanks for the help.

*To Sort Text Press SHIFT+V Select Text and Press SHIFT : 
to Enter Command Mode < > and type !sort.*
The Vim documentation files.  Use ":help doc-file-list" to get the complete list.
Vim help files location: /usr/share/vim/vim90/doc/*.txt
## FILES
       /usr/share/vim/vim90/doc/*.txt
                      The Vim documentation files.  Use ":help doc-file-list" to get the complete list.

       /usr/share/vim/vim90/doc/tags
                      The tags file used for finding information in the documentation files.

       /usr/share/vim/vim90/syntax/syntax.vim
                      System wide syntax initializations.

       /usr/share/vim/vim90/syntax/*.vim
                      Syntax files for various languages.

       /etc/vimrc     System wide Vim initializations.

       ~/.vimrc       Your personal Vim initializations.

       /etc/gvimrc    System wide gvim initializations.

       ~/.gvimrc      Your personal gvim initializations.

       /usr/share/vim/vim90/optwin.vim
                      Script used for the ":options" command, a nice way to view and set options.

       /usr/share/vim/vim90/menu.vim
                      System wide menu initializations for gvim.

       /usr/share/vim/vim90/bugreport.vim
                      Script to generate a bug report.  See ":help bugs".

       /usr/share/vim/vim90/filetype.vim
                      Script to detect the type of a file by its name.  See ":help 'filetype'".

       /usr/share/vim/vim90/scripts.vim
                      Script to detect the type of a file by its contents.  See ":help 'filetype'".

       /usr/share/vim/vim90/print/*.ps
                      Files used for PostScript printing.

### vim-multiline-comment.md

For commenting a block of text is almost the same: First, go to the first line you want to comment, press Ctrl``V , and select until the last line. Second, press Shift``I``#``Esc (then give it a second), and it will insert a # character on all selected lines.

### Method 4 – Visual Mode

You can also use Vim visual mode to comment out a block of code.
Start by navigating to the line you wish to start commenting out. Next, press the Ctrl + V keys to enable visual mode.

Using the up and down arrow keys, select all the lines you wish to comment out. Vim will insert a highlight at the beginning of each line to indicate the line is selected.

With the target lines selected, press Shift + I to enter insert mode.

Next, enter the comment symbol for the target file. In this case, we need to insert the pound (#) symbol to comment Python code.

Finally, press the ESC key, and Vim will comment out all the selected lines.

### How to Uncomment Multiple Lines

You may also need to uncomment out multiple lines. To do this, you can use the visual mode.

Start by navigating to the line you wish to uncomment, then press Ctrl + V to activate highlight mode.

Using the up and down arrow keys, select all the lines you want to uncomment. Once you have the region selected, press the X key to remove the comments.

Another method is to use a command to remove all lines starting with the comment symbol.

## Vi shortcuts

The best way to learn Vi is to create a new file and try it out for yourself. Feel free to use the common keyboard shortcut list below to help you learn Vi’s extensive vocabulary. This list of shortcuts is by no means exhaustive, but they will enable you to edit files and learn Vi in a short amount of time.

    $ vi <filename> — Open or edit a file.
    i — Switch to Insert mode.
    Esc — Switch to Command mode.
    :w — Save and continue editing.
    :wq or ZZ — Save and quit/exit vi.
    :q! — Quit vi and do not save changes.
    yy — Yank (copy) a line of text.
    p — Paste a line of yanked text below the current line.
    o — Open a new line under the current line.
    O — Open a new line above the current line.
    A — Append to the end of the line.
    a — Append after the cursor’s current position.
    I — Insert text at the beginning of the current line.
    b — Go to the beginning of the word.
    e — Go to the end of the word.
    x — Delete a single character.
    dd — Delete an entire line.
    Xdd — Delete X number of lines.
    Xyy — Yank X number of lines.
    G — Go to the last line in a file.
    XG — Go to line X in a file.
    gg — Go to the first line in a file.
    :num — Display the current line’s line number.
    h — Move left one character.
    j — Move down one line.
    k — Move up one line.
    l — Move right one character.

