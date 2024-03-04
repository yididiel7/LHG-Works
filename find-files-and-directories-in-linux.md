# Find Files and Directories in Linux Using find Command

The find command is one of the most important and frequently used command-line utilities in Linux.

The Linux find command is a powerful tool that enables system administrators to locate and manage files and directories based on a search criteria. It supports searching by file, folder, name, creation date, modification date, owner, and permissions.

The find command is used to find files and directories and perform subsequent operations. It searches for files and directories in each path recursively. Thus, when the find command encounters a directory inside the given path, it looks for other files and directories inside it.
Find Files by Name

## The general syntax of the find command is:

find [path] [options] [expression]

Let’s break down this syntax:

    path: Defines the starting directory where find will search the files.
    options: Controls the find process’s behavior and optimization method.
    expression: This attribute is made up of options, search patterns, and actions separated by operators.

The most common use of the find command is searching for a file by its name. The -type f option tells the system that we’re looking for a File. To find a file using the filename, use the -name flag with the default command.

For example, to search for a file named report.pdf in the /home directory, you would use the following command:

    find /home -type f -name report.pdf

As you know, Linux is case sensitive about file names, so if you’re looking for a file named Report.pdf, the command shown above will return no results. So, you will need to use the -iname option instead of -name.

The -iname option runs a case insensitive search so that we can do this:

    find /home -type f -iname report.pdf

This command will locate a file with either of the following names: report.pdf, Report.pdf, REPORT.pdf, etc.

## Find Files by Partial Name

    You can use filename meta-characters such as an asterisk (*),
    
    but you should either put an escape character (\) in front of each or enclose them in quotes.

For example, to find all files ending with a .pdf, you could run:

    find /home -type f -name '*.pdf'

which is the same as:

    find /home -type f -name \*.pdf

Similarly, to find all the files on your Linux system whose names begin with report, you could run:

    find /home -type f -name 'report*'

## Find Files by Size

Using the find command, we can quickly achieve something that might look complicated: find files bigger or smaller than a given size.

The -size option on find allows us to search for files of a specific size. The + and - prefixes signify “greater than” and “less than.”

The below example will search for all files greater than 1 Gigabyte. Note the use of the + sign:

    find /home -type f -size +1G

In the example above, the suffix G denotes Gigabytes. The other popular available suffixes are:

    c: bytes.
    k: Kilobytes.
    M: Megabytes.

The above find command was used to search for all files greater than the specified size. Next, find command example will search for all files with less than 200 Kilobytes in size. Note the use of the - sign:

    find /home -type f -size -200k

Now you probably wonder how to find files in Linux between a certain size. For example, you can find files between 100 Megabytes and 120 Megabytes in size using the following command:

    find /home -type f -size +100M -size -120M

## Find Files Using Timestamps

Linux assigns specific timestamps to every file in the file system. The find command can also search for files based on their last modification, access, or change time.

The -mtime option is used to specify the number of days old that the file is. The expression can be used in two ways:

    -mtime +N finds the files modified more than N days ago (for greater than).
    -mtime -N finds the files modified less than N days ago (for less than).

For example, entering +3 will find all the files inside the /home directory older than three days.

    find /home -type f -mtime +3

Similarly, if we want to find all the files that have changed in the last 24 hours:

    find /home -type f -mtime -1

In the same way, you can use the -mmin N expression to rely on minutes instead of days.

For example, this command finds all the files from the /home directory modified at the last minute.

    find /home -type f -mmin -1

Furthermore, we can even compose expressions. Here’s how to find files in Linux that have been changed less than 60 minutes ago and more than 30 minutes ago:

    find /home -type f -mmin -60 -mmin +30

## Find Files by Owner

To find files owned by a particular user or group, use the -user and -group options.

For example, to find files owned by the user john in the /home folder of the server:

    find /home -type f -user john

Find all files belonging to a group called www-data in the /home directory:

    find /home -type f -group www-data

## Find Files by Permissions

The -perm option allows users to search for files with a particular permission set.

The below command will find the files with permission of exactly 644 in the current directory.

    find /home -type f -perm 644

The use of the - option means “at least this permission level is set, and any higher permissions.”

    find /home -type f -perm -644

This example displays all resources in the /home directory with at least 644 permissions. This means that files with the permissions such as 777, 745, 666, 655, 654, etc., would match, while files with permissions 642, 611, 600, 544, etc., would not match.
Find Directories by Name

All the examples we’ve seen so far return files. However, you can use the -type d switch if you need to search for directories only.

In other words, you can prevent the find command in Linux from searching for other file types except for directories by using the -type d flag (d means directory).

## To find a folder named scripts in the /home directory, run:

    find /home -type d -name scripts

Similarly, all other options shown so far are also applicable when searching for directories.

For more about the find command in Linux, consult its manual page.
Find Files and Directories in Linux Using locate Command

While find is undoubtedly one of the most popular and powerful command-line utilities for file searching in Linux, it is not fast enough for situations where you need instantaneous results.

The locate command is faster than the find command because it uses a previously built database, whereas the find command searches in real-time through all the actual directories and files.

## Related: The plocate Command as a Faster Alternative to locate in Linux

If locate is not installed, you can easily install it using the package manager of your Linux distro.

On Ubuntu or any other Debian-based system, type the following command:

sudo apt install mlocate

If you are using Fedora or CentOS, use this command instead:

sudo dnf install mlocate

## Arch Linux users need to execute:

sudo pacman -S mlocate

But before the locate command can be used, the database will need to be created. This is done with the updatedb command, which (as the name suggests) updates the database.

sudo updatedb

The database will be updated automatically daily, but you can also update it yourself at any time to obtain up-to-the-minute results.
Find Files by Name

The locate command is straightforward to use. All you have to do is pass it the filename you want to search.

locate report.pdf

Like the find command, locate is configured to process queries in a case-sensitive manner. To have the locate command ignore case sensitivity and show results for both uppercase and lowercase queries, you need to use the -i option.

locate -i rEpoRT.pdf

Find Files by Partial Name

If you want to search for all filenames that have the string .pdf in them, then you can do that using locate in the following way:

    locate '*.pdf'

## Limit Search Results

You can limit your search returns to a required number to avoid redundancy with your search results using the -n option.

For example, if you want just ten results from your queries, you can type the following command:

    locate -n 10 '*.pdf'

## Display the Number of Matching Entries

To count the number of occurrences of a file name or search pattern using the locate command, invoke the -c option as shown.

    locate -c '*.pdf'

## Get Information About locate Database

To gather more insights on the locate database mlocate.db that locate has cataloged, use the -S option:

locate -S

Output
Database /var/lib/mlocate/mlocate.db:
	72376 directories
	1142596 files
	98622214 bytes in file names
	33950606 bytes used to store database

If you need it, here’s the man page for the locate command.
Conclusion

The two most widely used file searching utilities accessible to Linux users are called find and locate. Both are good ways to find files on your system. It is up to you to decide which of these tools is appropriate in each situation.

This article should give you a fundamental understanding of finding files on your Linux systems.

However, even if the option were presented individually, you should remember that they can be combined in order to be able to specify even more the files you are looking for.

Copyright 2024 by Tyrone Hills All rights reserved.
