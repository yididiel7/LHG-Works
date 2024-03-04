# How to Use Linux history Command

Using the history command without options displays the list of commands used since the start of the terminal session:

To display the command history list with a limited number of entries, append that number to the history command. For instance, to show only the latest five entries, use:

history 5

Repeat a Command

Running the history command allows you to reuse any of the commands on the list. For instance, to run the first command (sudo apt update) again, use:

!1

Adding a dash (-) before the command number starts the count from the end of the list. For instance, to reuse the tenth last command (history 5), use:

!-10

Use double exclamation points to repeat the last command:

!!

Using this method can cause problems if the shell runs an unexpected command, especially when searching for a command that starts with sudo. As a precaution, adding the :p argument displays the command without running it, allowing you to review the command and decide if you want to execute it.

!sudo:p

In the example above, the shell reuses the last command that contains the echo string even though the command starts with sudo.

List the Matching Commands

Combining history and grep allows you to display a list of commands that contain a string. For example, to list all commands that contain ufw, use:

history | grep ufw

Change the Executed Command

Use the following syntax to change the last executed command:

^[old string]^[new string]^

For instance, the ufw command to enable port 20 shows that the port is already enabled:

sudo ufw allow 20/tcp

Use the syntax above to change the port number from 20 to 22:

^20^22^

Prevent Recording Commands in History

To prevent recording commands in the history list, temporarily disable recording by using:

set +o history

To re-enable recording, use:

set -o history

Delete History

Use the -d option with the history command to delete a command from the history list. For instance, delete command number 87 with:

history -d 87

Use the -c option to clear the whole history list:

history -c

Update the History File

The Bash shell saves any updates to the command history list when you exit the terminal session. The history command also allows you to save changes while in the terminal session.

Using the -a option lets you append the command history entries from this session to the .bash_history file:

history -a

Another method is to use the -w option to save the entire history list to the .bash_history file:

history -w

Conclusion

After reading this tutorial, you should be able to use the history command in Linux to view, edit, and delete the command history list and reuse commands from it.

If you are interested in learning more about Linux commands, have a look at our Linux commands cheat sheet.
