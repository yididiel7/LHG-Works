# How to Use fd

1. Search for Files by Name

Syntax: fd PATTERN

Explanation: Searches for files and directories with a name matching the given pattern.

Example: fd 'report.txt'

Output:

/home/user/documents/report.txt
/home/user/archive/report.txt

The command searches for all occurrences of report.txt in the current directory and its subdirectories, listing the full paths to the files.

2. Search for Files with a Specific Extension

Syntax: fd '.*EXTENSION'

Explanation: Searches for files with a specific extension.

Example: fd '.*\.pdf'

Output:

/home/user/documents/file1.pdf
/home/user/documents/file2.pdf

The command searches for all PDF files in the current directory and its subdirectories.

3. Search for Files Modified in the Last N Days

Syntax: fd --changed-within 'Nd'

Explanation: Searches for files and directories modified within the last N days.

Example: fd --changed-within '7d'

Output:

/home/user/documents/week_report.docx
/home/user/photos/recent_image.jpg

The command lists all files and directories modified within the last 7 days.

4. Search for Directories Only

Syntax: fd --type d PATTERN

Explanation: Searches for directories with a name matching the given pattern.

Example: fd --type d 'projects'

Output:

/home/user/development/projects
/home/user/design/projects

The command searches for all directories named projects in the current directory and its subdirectories.

5. Search for Files Excluding Certain Directories

Syntax: fd --exclude DIR PATTERN

Explanation: Searches for files and directories matching the pattern, excluding specified directories.

Example: fd --exclude 'archive' 'report.txt'

Output:

/home/user/documents/report.txt

The command searches for report.txt but excludes any results from the “archive” directory.

6. Search for Files Larger than a Specific Size

Syntax: fd --size '+SIZE'

Explanation: Searches for files larger than a specified size.

Example: fd --size '+1M'

Output:

/home/user/videos/large_video.mp4
/home/user/music/big_album.flac

The command lists all files larger than 1 megabyte in the current directory and its subdirectories.

7. Search for Files and Execute a Command on Them

Syntax: fd PATTERN -x COMMAND

Explanation: Searches for files matching the pattern and executes a specified command on them.

Example: fd '.*\.txt' -x cat

Output:

Contents of file1.txt
Contents of file2.txt

The command searches for all text files and then runs the cat command on them, displaying their contents.

8. Search for Files in a Case-Insensitive Manner

Syntax: fd --ignore-case PATTERN

Explanation: Searches for files and directories matching the pattern, ignoring case.

Example: fd --ignore-case 'readme'

Output:

/home/user/README
/home/user/projects/readme.md

The command searches for all occurrences of readme in the current directory and its subdirectories, ignoring the case.

9. Search for Files Using a Regular Expression

Syntax: fd --regex 'REGEX'

Explanation: Searches for files and directories matching a given regular expression.

Example: fd --regex '^a.*\.txt$'

Output:

/home/user/documents/a_file.txt
/home/user/documents/another_file.txt

The command searches for all text files in the current directory and its subdirectories that start with the letter a.

10. Search for Files with Specific Permissions

Syntax: fd --perm PERMISSIONS

Explanation: Searches for files with specific permissions.

Example: fd --perm 755

Output:

/home/user/scripts/executable_script.sh

The command searches for files with permissions set to 755 (read, write, and execute for the owner; read and execute for the group and others).
More Linux commands:
Directory Operations 	rmdir · cd · pwd · exa · ls
File Operations 	cat · cp · dd · less · touch · ln · rename · more · head
File System Operations 	chown · mkfs · locate
Networking 	ping · curl · wget · iptables · mtr
Search and Text Processing 	find · grep · sed · whatis · ripgrep · fd · tldr
System Information and Management 	env · history · top · who · htop · glances · lsof
User and Session Management 	screen · su · sudo · open
Stay Updated

Get daily articles in your inbox for free.

You might also like

    How to Use the Env Command in Linux
    Desktop
    How to Use the CD Command in Linux
    Desktop
    How to Use the Cat Command in Linux
    Desktop
    How to Use the Less Command in Linux
    Desktop
    How to Use the 'exa' Command in Linux
    Desktop
    9 Dangerous Linux Commands You Should Avoid
    Desktop
    How to Use the 'glances' Command in Linux
    Desktop
    How to Use the 'head' Command in Linux
    Desktop
    How to Use the 'htop' Command in Linux
    Desktop
    How to Use the 'ln' Command in Linux
    Desktop
    How to Use the 'locate' Command in Linux
    Desktop
    How to Use History Command in Linux
    Desktop

# Step 2 – Basic Usage of fd Command in Linux

The simple usage of fd is to run it without any options. It will act like the ls command, but it will list files in subdirectories by default.

fd

The output results will shown in different colors for different types and directories.
Simple search with fd command on Linux
Step 3 – Search for a Single File with fd Command in Linux

If you are looking for a specific single file, you can easily search it with the fd command without using any option. For example, we want to find the About.py file in my server:

fd About.py

The results will show the path of the desired file we have searched:

Exmaple Output
Downloads/nmap-master/zenmap/build/lib/zenmapGUI/About.py
Downloads/nmap-master/zenmap/zenmapGUI/About.py

Step 4 – Search for Files with a Specific Type with fd Command in Linux

You can also use the fd command to search for a specific type of file. In this case, you should use the -e option in the fd command with your desired type. For example, we want to find the files that have the png types:

fd -e png

The output will print the files that have the PNG types:

Exmaple Output
Downloads/nmap-master/macosx/nmap.png
Downloads/nmap-master/nping/nping-dev/packetDiagram.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/default_32.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/default_75.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/freebsd_32.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/freebsd_75.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/irix_32.png
Downloads/nmap-master/zenmap/share/zenmap/pixmaps/irix_75.png

Step 5 – Search for a File in a Particular Directory with fd Command

At this point, you can search for a file path in a particular directory with the fd command in Linux. For example, you can search for the passwd file in the /etc directory by using the fd command below:

fd passwd /etc

The output will show you the files containing passwd in the /etc directory:

Exmaple Output
/etc/pam.d/chpasswd
/etc/pam.d/passwd
/etc/passwd
/etc/passwd-
/etc/security/opasswd

Step 6 – fd command File Types and Case Sensitivity

YOu can use the fd command to search for directories, files, and symbolic links. To do this, you can use the -t option with the following letters:

    f: File.
    d: Directory.
    l: Symbolic link.
    x: Executable file.
    e: Empty file.

For example, we want to search for the directory named zenmap:

fd -td zenmap

The output prints the directories that contain zenmap:

Exmaple Output
Downloads/nmap-master/zenmap/
Downloads/nmap-master/zenmap/build/lib/zenmapCore/
Downloads/nmap-master/zenmap/build/lib/zenmapGUI/
Downloads/nmap-master/zenmap/share/zenmap/
Downloads/nmap-master/zenmap/zenmapCore/
Downloads/nmap-master/zenmap/zenmapGUI/

Also, you can use the fd command for searching the files and directories with case sensitivity. 
If you use the lowercase it will show you all the results. But if you want to see the uppercase results, you can use the uppercase word. 

For example:

fd -td Downloads

Step 7 – Execute Other Commands with fd

At this point, you can launch another command and execute it with the fd command. For example, you have a zip file and you want to unzip the file in your current working directory. To do this, you can use the fd command as shown below:

fdfind -e zip -x unzip {}

The patterns you can use are listed below:

    {}: The full file path and name of the found file.
    {/}: The file name of the found file.
    {//}: The directory containing the found file.
    {/.}: The file name of the found file, without the extension.

## For more options, you can use the man page or help command:

# fd -h
# man fd

Conclusion

As you can see fd command is much faster and has better performance than the find command. 
You can easily install the fd utility on Linux distributions and start using the fd command with examples that are provided for you in this guide. 
You can read the man page of the fd tool and get more information about its amazing options.
