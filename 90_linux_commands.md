# 90 Linux Commands frequently used by Linux Sysadmins

There are well over 100 Unix commands shared by the Linux kernel and other Unix-like operating systems. If you are interested in the commands frequently used by Linux sysadmins and power users, you’ve come to the place. Recently, I published a five-part series covering commands often used by Linux sysadmins.

Below I’ve listed the 90 commands covered and links to each of the five posts in this series. Some of the commands listed include links to related articles. There are also thousands of commands available if we include downloadable software and scripts, such as bpytop (pictured below). However, for this article’s purpose, we will cover mostly Unix commands used on Linux by sysadmins and power users. If you find this page useful, let me know if you’d like to see similar posts in the future.

## Linux Commands frequently used by Linux Sysadmins – Part 1:

1. ip – from Iproute2, a collection of utilities for controlling TCP/IP networking and traffic control in Linux.
2. ls – list directory contents.
3. df – display disk space usage.
4. du – estimate file space usage.
5. free – display memory usage.
6. scp – securely Copy Files Using SCP, with examples.
7. find – locates files based on some user-specified criteria.
8. ncdu – a disk utility for Unix systems.
9. pstree – display a tree of processes.
10. last – show a listing of last logged-in users.
11. w – show a list of currently logged-in user sessions.
12. grep – Search a file for a pattern of characters, then display all matching lines.

## Linux Commands frequently used by Linux Sysadmins – Part 2:

13. uptime – shows system uptime and load average.
14. top – shows an overall system view.
15. vmstat – shows system memory, processes, interrupts, paging, block I/O, and CPU info.
16. htop – interactive process viewer and manager.
17. dstat – view processes, memory, paging, I/O, CPU, etc., in real-time. All-in-one for vmstat, iostat, netstat, and ifstat.
18. iftop – network traffic viewer.
19. nethogs – network traffic analyzer.
20. iotop – interactive I/O viewer. Get an overview of storage r/w activity.
21. iostat – for storage I/O statistics.
22. netstat – for network statistics.
23. ss – utility to investigate sockets.
24. atop – For Linux server performance analysis.
25. Glances and nmon – htop and top Alternatives:
26. ssh – secure command-line access to remote Linux systems.
27. sudo – execute commands with administrative privilege.
28. cd – directory navigation.
29. pwd – shows your current directory location.
30. cp – copying files and folders.
31. mv – moving files and folders.
32. rm – removing files and folders.
33. mkdir – create or make new directories.
34. touch – used to update the access date and modification date of a computer file or directory.
35. man – for reading system reference manuals.
36. apropos – Search man page names and descriptions.

 

## Linux Commands frequently used by Linux Sysadmins – Part 3:

37. rsync – remote file transfers and syncing.
38. tar – an archiving utility.
39. gzip – file compression and decompression.
40. bzip2 – similar to gzip. It uses a different compression algorithm.
41. zip – for packaging and compressing (to archive) files.
42. locate – search files in Linux.
43. ps – information about the currently running processes.
44. Making use of Bash scripts. Example: ./bashscript.sh
45. cron – set up scheduled tasks to run.
46. nmcli – command-line tool for controlling NetworkManager.
47. ping – send ICMP ECHO_REQUEST to network hosts.
48. traceroute – check the route packets take to a specified host.
49. mtr – network diagnostic tool.
50. nslookup – query Internet name servers (NS) interactively.
51. host – perform DNS lookups in Linux.
52. dig – DNS lookup utility.

 

## Linux Commands frequently used by Linux Sysadmins – Part 4:

53. wget – retrieve files over HTTP, HTTPS, FTP, and FTPS.
54. curl – transferring data using various network protocols. (supports more protocols than wget)
55. dd – convert and copy files.
56. fdisk – manipulate the disk partition table.
57. parted – for creating and manipulating partition tables.
58. blkid – command-line utility to locate/print block device attributes.
59. mkfs – build a Linux file system.
60. fsck –  tool for checking the consistency of a file system.
61. whois – client for the whois directory service.
62. nc – command-line networking utility. (Also, see 60 Linux Networking commands and scripts.)
63. umask – set file mode creation mask.
64. chmod – change the access permissions of file system objects.
65. chown – change file owner and group.
66. chroot – run command or interactive shell with a special root directory.
67. useradd – create a new user or update default new user information.
68. userdel – used to delete a user account and all related files.
69. usermod – used to modify or change any attributes of an existing user account.

 

## Linux Commands frequently used by Linux Sysadmins – Part 5:

70. vi – text editor.
71. cat – display file contents.
72. tac – output file contents, in reverse.
73. more – display file contents one screen/page at a time.
74. less – similar to the more command with additional features.
75. tail – used to display the tail end of a text file or piped data.
76. dmesg – prints the message buffer of the kernel ring.
77. journalctl – query the systemd journal.
78. kill – terminate a process.
79. killall  – Sends a kill signal to all instances of a process by name.
80. sleep – suspends program execution for a specified time.
81. wait – Suspend script execution until all jobs running in the background have been terminated.
82. nohup – Run Commands in the Background.
83. screen – hold a session open on a remote server. (also a full-screen window manager)
84. tmux – a terminal multiplexer.
85. passwd – change a user’s password.
86. chpassword – allows users to change the password for various user accounts.
87. mount / umount – provides access to an entire filesystem in one directory.
88. systemctl – central management tool for controlling the init system.
89. clear – clears the screen of the terminal.
90. env -Run a command in a modified environment.


## Misc commands:

91. cheat – allows you to create and view interactive cheatsheets on the command line.”
92. tldr – Collaborative cheatsheets for console commands.
93. bashtop – the ‘cool’ top alternative.
94. bpytop – Python port of bashtop.
95. btop – C++ version and continuation of bashtop and bpytop.
96. nload – a super simple, command-line network interface monitoring tool.
97. history – used to view the previously executed commands.
98. sar – collects, reports, and saves system activity information, including CPU, memory, disk, and network usage.

## Here are some key concepts related to the Linux file system as it relates to the cd command:

    Root Directory (/): At the top of the hierarchy is the root directory, represented by a single forward slash /. This is the starting point for the entire file system.
    Directories (Folders): Directories are containers that can hold files and other directories. They are analogous to folders in a graphical file manager. You can navigate to different directories using the cd command.
    Current Directory (.) and Parent Directory (..): In Linux, there are two special directory references you can use with cd:
        . (dot): Represents the current directory. You can use it to specify your current location explicitly.
        .. (dot-dot): Represents the parent directory of the current directory. It allows you to move up one level in the file system hierarchy.
    Absolute and Relative Paths: When using cd, you can provide paths that are either absolute or relative:
        Absolute path: Starts from the root directory and specifies the complete path to a directory. For example, /home/user/documents.
        Relative path: Specifies a path relative to your current directory. For instance, if you’re in /home/user, you can use cd documents to navigate to the “documents” directory, assuming it exists in your current directory.
    Home Directory (~): The tilde (~) is a shorthand notation for your home directory. For example, cd ~ will take you to your home directory, regardless of your current location.
    Path Separators: Linux uses forward slashes (/) as path separators. For example, /var/www/html is a path to a directory structure.
    Tab Completion: When using the cd command, you can often take advantage of tab completion by pressing the Tab key. This feature helps you quickly complete directory and file names, reducing typing errors.

## Understanding the cd Command

Before we delve into examples, let’s first understand the basic syntax of the cd command:

cd [directory]

[directory]: 

This is an optional argument that specifies the directory you want to change to. If you don’t provide a directory, 
cd will take you to your home directory. Now, let’s explore some common use cases.

Example 1: Moving to Your Home Directory

cd

Running cd without any arguments will take you to your home directory. This is a quick way to get back to your home folder, no matter where you are in the file system.
Example 2: Navigating to a Specific Directory

cd /path/to/directory

Replace /path/to/directory with the actual path to the directory you want to go to. This allows you to jump directly to a specific location in the file system.
Example 3: Moving Up One Directory

cd ..

The .. notation is used to move up one directory level. This is handy when you want to navigate to the parent directory of your current location.
Example 4: Moving to Your Previous Directory

cd –

The - (dash) argument takes you to your previous directory. This can be incredibly useful when you need to switch back and forth between two directories.
Example 5: Using Tilde for User Directories

cd ~/Documents

The tilde (~) represents your home directory. You can use it to specify paths relative to your home directory. In this example, we’re navigating to the “Documents” directory within your home folder.
Conclusion

The cd command is a fundamental tool for navigating the Linux file system. Whether you need to quickly jump to your home directory, move to a specific location, or navigate between directories efficiently, cd has you covered. By mastering the cd command, you’ll become more proficient at working with the command line in Linux.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
