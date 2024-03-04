---
Author: "Sr. Yididiel"
Date: "Tuesday, June 06, 2022"
Topic: "Pandoc Installation Setup"
Dir: "sudo cp /etc/sudoers /etc/sudoers.bak"
---

How to Show Asterisks While Typing Sudo Password in Linux

Most applications normally display a feedback using asterisks (*******) when a user is typing a password, but on the Linux terminal, when a normal user runs the sudo command to gain super user privileges, he/she is asked for a password, but no visual feedback is seen by the user while typing the password.

In this article, we will show how to display asterisks as feedback when you type passwords in the terminal in Linux.

You can enable the password feedback feature in /etc/sudoers file, but first create a backup of the file, then open it for editing using the visudo command.
```
$ sudo cp /etc/sudoers /etc/sudoers.bak
$ sudo visudo
```

Search for the following line.
```
Defaults env_reset
```
And append pwfeedback to it, so that it looks like this.
```
Defaults env_reset,pwfeedback
```

Now press Esc key and type :wq to save and close the file. But if you are using nano editor, save the file by hitting “Ctrl+x” and then “y” followed by “ENTER” to close it.

Then run the command below to reset your terminal for the above changes to start working.
```
$ reset
```

That’s it, now you should be able to see a visual feedback (****) every time when you typing a password on the terminal, as shown in the following screen shot.


