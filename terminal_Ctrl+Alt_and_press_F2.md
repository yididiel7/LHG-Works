# A leap in the dark

Press and hold Ctrl + Alt and press F2.
pic1

Now that is a terminal.
Don't panic! Your precious GUI is still around.

Ctrl + Alt + F7 gets you back.

Actually, you could have pressed any of the function keys from F1 to F6 to get a raw, text only terminal.
I am currently logged into my KDE session as user jane, so if I now drop into a text terminal as before,

Ctrl + Alt + F2,

I am prompted to log in.

home login:
jane (enter)
password:

## A change of direction

Type cd ~ to make sure that you are in your home directory and then create a new file by using the command,
touch newfile (enter), which creates a new, empty file called "newfile".
echo "this file was created in terminal 2 on " > newfile, puts some text into the file.
Remember that the > symbol catches the output from the command and puts it into the file 
(replacing what was there originally so be careful when using it).

Type date >> newfile
Using the symbol twice >> catches the command output and appends it to the file.

exit logs me out and

Ctrl + Alt + F7

puts me back into KDE. Or, more correctly, into the terminal that is running the X System and the KDE environment.
Let's have a look at the contents of the file that we just created.

cat newfile
pic2

What we are doing here is known as 'redirection' and is a very important concept for working on the command line. Most Linux commands are 'stream oriented'. This means that data flows into and out of the command rather like a sausage machine — meat in one end, turn the handle and get sausages from the other end. The data is processed by the command as it flows through the command.

Let me try to explain what happens when you sit down and start to type a command at a terminal running a shell program such as bash. As you press a key (or a combination of keys like Shift + a, then the shell program stores the value of that key press in a special area of memory known as a buffer and prints a copy of it to the screen (usually the screen anyway — see later) and then waits for another key-press to add that also to the buffer. When you press the enter key it signals the end of that batch of input and the entire contents of the 'keyboard buffer' are sent to be interpreted. This where bash works its' magic.

Bash takes all of the key presses that you have typed from the keyboard buffer, lays them out on the table into groups that you separated with spaces, looks for any group of characters that it recognizes as a command which it can execute, looks for certain special characters that have a special 'shell' meaning and then decides what to do with the rest of the groups on the table based upon what it has just found.

Usually this just means that when you enter a command line such as

ls /home/jane,

bash has two things on the table, ls and /home/jane.

Now bash recognizes ls as a command and so it looks for input information (how to use the command), any options that may modify the default way that this command performs its' function and for what to do with the results. (This a very simplified overview but is sufficient for our present needs).

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
