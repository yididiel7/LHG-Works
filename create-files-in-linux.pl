# How To Create A File In Linux: Touch, Cat, Echo, Printf Command
# Tue 20 Jun 2023 08:05:22

A file is a container in a Linux-based system for storing information. Linux considers everything as a file and organizes all its data into files. Files are then organized into directories. Further, the directories are organized into tree-like structures called the filesystem. Partitions, hardware device drivers, and directories are all included in the definition of a file in addition to file creation, text files, file images, file details, and compiled programs. 

Types of files in Linux

A file type helps us in identifying the type of content that is saved in the file. Linux supports six different types of files.

## The different types of names of files present are :

Regular file: Regular or ordinary files store data of various content types such as text, audio, video, images, scripts, and programs. In Linux, regular files can be created with or without an extension.

Directory file: File systems use directories to organize files in a hierarchy. Directories are also files, but instead of storing data, they store the location of other files. Each directory entry stores the name and location of a single file.

Link file: Link files allow us to use a file with a different filename and from a different location. For this, we use link files. A link file is a pointer to another file. There are two types of links: a hard link and a symbolic or soft link.

Special file: Linux treats all hardware devices (such as hard drives, printers, monitors, terminal emulators, and CD/DVD drives) as special files. Linux places all special files or device files under the /dev directory. There are two types of special files: a character special file and a block special file.

Socket file: A socket is a communication endpoint that applications use to exchange data. Each application that provides services to other applications or remote clients uses a socket to accept connections. Each socket has an associated IP address and port number that allow it to accept connections from clients.

Named pipe file: Named pipe files are empty pipe files. The kernel processes named pipe files without writing them to the file system. Named pipe files can exist anywhere in the file system. They are also called the FIFO (First In First Out) files.
How to identify the type of file?

There are many ways to identify the type of file in Linux. The easiest way is to use the file command. To find the type of a file, specify the names of files as an argument in the current directory. Open your terminal window and run the following command:

    Command: $ file abc

The output of this command not only displays the type of the specified file in the current directory but also shows the type of content stored in the specified file.
Create a new file in Linux

There are various ways in which one can create a file in Linux with different names of files. You can create a file from the Terminal Window or you can use the Desktop File Manager to do so. You can create various files in Linux such as plain text files, file with echo, file with cat, file with ownership, file with printf, file with redirect, file without contents, sorted file, test6 files, and so on.
Create a new file using Terminal Window

1. Using the touch command

The touch command is the most commonly used command for creating a new file in Linux. To create a new file in the current directory, you need to run the touch command followed by the name of the file.

    Command: $ touch abc.txt

This will create a file with the file name abc.

2. Using the cat command

Usually, we use the cat command to read the contents of a file; however, we can also use the cat command to create a new file. We can not edit files using cat commands.

To create a new file using cat, run the cat command and then use the redirection operator ">" followed by the name of the file. Now you will be prompted to insert file content into this newly created file. Type a line and then press "Ctrl+D" to save the file.

    Command: $ cat > abcFile.txt

Hello Everyone this is my file!

The above command will create a new file with the file name  "abcFile.txt" and save it with the file content "Hello Everyone this is my file".

3. Using the redirection operator

The redirection operator is added after the normal command is written. We can simply use the redirection operator ">" to create a new blank file in the current directory and save the file contents. Run the ">" operator followed by the name of the file.

    Command: $ > abcFile.txt

The above command will create a new file with the file name "abcFile.txt".

4. Using the echo command

The echo command takes a string as an argument and displays it as output. The echo command is also one of the commonly used commands to create a Linux file. Open the terminal and run the following command:

    Command: $ echo "This is the File name file1"

This is the File name file1

This will first create a blank text file file1 and save the given file name contents in it.

We can also redirect this output to a new file, such as −

    Command: $ echo "This is the File name file3" > file3.txt

This will create a text file file3 and redirect the output to the new file.

5. Using the printf command

The printf command works just like the echo command with the only exception that the "printf" command provides additional formatting options that you can use to pass a formatted string as the argument and save the file content.

    Command: $ printf 'Studying hard will never fail you.\n' > file2.txt

## This will create an empty file with file name file2 and add the given content to the file.

6. Create a zip file and ignore the directory structure in Linux

In order to be able to zip files and ignore the directory structure that gets created with it, we can run the following command in the terminal: 

    Command: zip -j zipContent d1/file.txt d2/2.txt d2/3.txt

In the above command, we can notice the -j option which stands for “junk the path”, which will help you in ignoring the directory structure and make sure that you don’t get a directory structure mimicking the files.
Summary

From the above article, we can easily understand that creating files in Linux is very easy. It can be done both manually using the file manager or by using different commands in the terminal window. There are different types of files present in Linux and different methods or options through which we can create files in the Linux operating system.
