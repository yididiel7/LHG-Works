# Linux exit command summary with examples

In Linux, commands are ways or instructions through which you can instruct your system to do some action. Commands are executed in the command line.

Syntax:

    command [option] [argument]  

There are some commands which don't have any option or don't accept any argument such as 'clear' and 'pwd'.

clear

The 'clear' command clears out all the previous commands and outputs from terminal display.

pwd

The 'pwd' command stands for 'print working directory'. It doesn't accept any option or argument and displays the detail of current working directory.


[Linux Shell Commands](http://tinyurl.com/26o48weo).


Exit the shell with the exit code of the last command executed:
    exit

  - Exit the shell with the specified exit code:
    exit exit_code

## Linux whatis command summary with examples

Display a description from a man page:
    whatis command

  - Don't cut the description off at the end of the line:
    whatis --long command

  - Display descriptions for all commands matching a glob:
    whatis --wildcard net*

  - Search man page descriptions with a regular expression:
    whatis --regex 'wish[0-9]\.[0-9]'

  - Display descriptions of a specific language (requires manpage-{{locale}} package):
    whatis --locale=en command


## Linux clear command summary with examples

- Clear the screen (equivalent to pressing Control-L in Bash shell):
    clear

  - Clear the screen but keep the terminal's scrollback buffer:
    clear -x

  - Indicate the type of terminal to clean (defaults to the value of the environment variable TERM):
    clear -T type_of_terminal

  - Show the version of ncurses used by clear:
    clear -V

## Linux man command summary with examples

- Display the man page for a command:
    man command

  - Display the man page for a command from section 7:
    man 7 command

  - List all available sections for a command:
    man --whatis command

  - Display the path searched for manpages:
    man --path

  - Display the location of a manpage rather than the manpage itself:
    man --where command

  - Display the man page using a specific locale:
    man --locale=locale command

  - Search for manpages containing a search string:
    man --apropos "search_string"

## Linux less command summary with examples

- Open a file:
    less source_file

  - Page down / up:
    <Space> (down), b (up)

  - Go to end / start of file:
    G (end), g (start)

  - Forward search for a string (press n/N to go to next/previous match):
    /something

  - Backward search for a string (press n/N to go to next/previous match):
    ?something

  - Follow the output of the currently opened file:
    F

  - Open the current file in an editor:
    v

  - Exit:
    q



 pwd 

 ls 

 cd 

 bash 

 cat 

 type 

 alias 

 whoami 

 whereis 

 date 

 touch 

 file 

 which 

 echo 

 nano 

 ln 

 mkdir 

 cp 

 mv 

 rm 

 wc 

 head 

 tail 

 apropos 

 find 

 sort 

 uniq 

 cut 

 diff 

 comm 

 sdiff 

 paste 

 join 

 grep 

 sed 

 calendar 

 cal 

 sleep 

 crontab 

 ps 

 printenv 

 export 

 set 

 unset 

 stat 

 df 

 du 

 free 

 pg 

 more 

 emacs 

 vim 

 history 

 kill 

 bg 

 chsh 

 uname 

 jobs 

 dpkg 

 apt-get 

 apt-cache 

 aptitude 

 gzip 

 gunzip 

 bzip2 

 xz 

 zip 

 tar 

 rsync 

 chmod 

 chown 

 id 

 su 

 sudo 
            
 passwd 
            
 adduser 
            
 ping 
            
 traceroute 
            
 ftp 
            
 wget 
            
 ssh 
            
 source 
            
 time 
            
 read 
            
 xargs 
            
 tee 
            
 printf 
            
 test 
            
 if then else          

 fold

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
