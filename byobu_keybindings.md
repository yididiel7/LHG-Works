# BYOBU KEYBINDINGS


byobu  keybindings  can  be  user  defined  in  /usr/share/byobu/keybindings/ 
(or  within .screenrc if byobu-export was used). The common key bindings are:

F2 - Create a new window

F3 - Move to previous window

F4 - Move to next window

F5 - Reload profile

F6 - Detach from this session

F7 - Enter copy/scrollback mode

F8 - Re-title a window

F9 - Configuration Menu

F12 -  Lock this terminal

shift-F2 - Split the screen horizontally

ctrl-F2 - Split the screen vertically

shift-F3 - Shift the focus to the previous split region

shift-F4 - Shift the focus to the next split region

shift-F5 - Join all splits

ctrl-F6 - Remove this split

ctrl-F5 - Reconnect GPG and SSH sockets

shift-F6 - Detach, but do not logout

alt-pgup - Enter scrollback mode

alt-pgdn - Enter scrollback mode

Ctrl-a $ - show detailed status

Ctrl-a R - Reload profile

Ctrl-a ! - Toggle key bindings on and off

Ctrl-a k - Kill the current window

Ctrl-a ~ - Save the current window's scrollback buffer

SCROLLBACK, COPY, PASTE MODES

       Each window in Byobu has up to 10,000 lines of scrollback history, which you can enter and
       navigate  using  the  alt-pgup  and  alt-pgdn  keys.  Exit this scrollback mode by hitting
       enter.  You can also easily copy and paste text from scrollback mode.   To  do  so,  enter
       scrollback  using alt-pgup or alt-pgdn, press the spacebar to start highlighting text, use
       up/down/left/right/pgup/pgdn to select the text, and press enter to copy  the  text.   You
       can then paste the text using alt-insert or ctrl-a-].

BUGS

       For  Byobu colors to work properly, older versions of GNU Screen require a 1-line patch to
       adjust MAX_WINMSG_REND in screen.c.  The change is in GNU Screen's upstream source control
       system as of 2010-01-26, but GNU Screen has not released a new upstream version in several
       years.    You   can   disable    colors    entirely    by    setting    MONOCHROME=1    in
       $BYOBU_CONFIG_DIR/statusrc.  For more information, see:
        * http://savannah.gnu.org/bugs/?22146

       PuTTY  users have reported that the F2, F3, and F4 shortcut keys are not working properly.
       PuTTY sends the same escape sequences as the linux console for F1-F4 by default.  You  can
       fix  this  problem  in  the PuTTY config, Terminal -> Keyboard -> Function keys: Xterm R6.
       See: http://www.mail-archive.com/screen-users@gnu.org/msg01525.html

       PuTTY users should configure enable UTF-8  characters  in  order  to  fix  status  refresh
       issues.   You  can  fix  this  problem  in the PuTTY configuration, Window -> Translation:
       select UTF-8.

       PuTTY users should avoid resizing  their  window  to  one  character  tall,  as  this  can
       sometimes crash byobu-screen.

       Apple  Mac  OSX  terminal  users  have  reported 'flashing text'.  You can fix this in the
       advanced settings of the terminal application, with 'Declare Terminal As: xterm-color'.

       Apple Mac keyboard users may need to specify a vt100 terminal by adding this to  your  OSX
       profile, in order to get Byobu's function keys and colors to work:
         alias ssh='TERM=vt100 ssh'

       Users  of  a non-UTF-8 locale (such as cs_CZ charset ISO-8859-2), may need to add "defutf8
       off" to ~/.screenrc, if some characters are rendering as "?".

       Users who customize their PS1 prompt need to put this setting in  ~/.bashrc,  rather  than
       ~/.profile, in order for it to work correctly with Byobu.

       If  you run byobu(1) under sudo(8), you must use the -H option, such that the user's $HOME
       directory environment variable is set properly.  Otherwise, byobu(1) will create  a  bunch
       of directories in the $SUDO_USER's $HOME, but will be owned by root.  To prevent this from
       happening, byobu(1) will simply refuse to run if $USER does not own $HOME.

       Byobu requires a suitable ulimit(3) values to run.  If you get an error at startup saying,
       'pipe:  too  many  open  files', then check your ulimit -a values, as your "open files" or
       "max user processes" are too low.  In this case, you will  probably  need  to  run  simple
       screen(1)

SEE ALSO

       screen(1),   byobu-config(1),  byobu-export(1),  byobu-status(1),  byobu-status-detail(1),
       byobu-enable(1), byobu-launch(1), byobu-select-backend(1), tmux(1)
       http://byobu.org

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
