# Ccat – Colorize Cat Command Output command in Linux with Examples

To display the content of a file from another directory, ccat has the following syntax:

``` $ cat ~/ArcoScripts/adding-a-directory-to-your-\$PATH.md ```

**ccat is aliased to cat command!**

ccat is a command-line tool for Linux and OSX, which is similar to the cat command in Linux. But the difference between cat and ccat is that the ccat shows the content of the file with the syntax highlighted. Currently, ccat supports the following programming languages.

    JavaScript
    Java
    Ruby
    Python
    Go
    C
    JSON

Installation of Ccat 

First, we are going to see how to install the ccat on OSX then Linux.

For Linux

To install the ccat on the Linux systems first we need to install all prerequisites required to install ccat. The prerequisites are as follows:

    Git
    Go 1.4+

Before moving further, make sure that you have installed the required prerequisites. Then use the following command to install the ccat on your Linux system:

``` $  go install github.com/owenthereal/ccat@latest ```

Now let’s see how to use the ccat command in Linux.

## Using ccat command

The syntax ccat is very simple. To display the content of single file syntax is as follows:

$ ccat FILE_NAME

Example:

$ ccat index.html

Ccat – Colorize Cat Command Output

To display the content of a file from another directory, ccat has the following syntax:

``` $ ccat PATH_TO_FILE ```

Example:

$ ccat /var/db/Makefile

Ccat – Colorize Cat Command Output

To display the content of multiple files, mention the file names after the ccat command:

$ ccat FILE_NAME1 FILE_NAME2

Example:

$ cat index.html main.cpp

Ccat – Colorize Cat Command Output
Set Dark Background

To set dark background, use the –bg option with the ccat command:

$ ccat --bg=dark FILENAME

Example:

$ ccat --bg=dark index.html

We can also set the color codes to the syntax of the output of ccat. Here is one example:

To show the color palette of ccat uses the following command:

$ ccat --palette

ccat also provides another best feature is that it can show the output in the HTML form also. To show the output in the HTML format, use the –html at the end pf ccat command

$ ccat FILENAME --html

Example:

$ ccat main.cpp --html

If you open the output in the browser, then you will see the output as follows:

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
