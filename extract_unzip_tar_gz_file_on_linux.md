How to Extract (Unzip) Tar Gz File on linux

To extract a tar.gz file on Linux, open a terminal and use the following command:

tar -xzvf file.tar.gz

This will extract the contents of the tar.gz file to the current directory.

If you want to extract the contents of the tar.gz file to a specific directory, use the following command:

tar -xzvf file.tar.gz -C /path/to/directory

Replace "/path/to/directory" with the actual path to the directory where you want to extract the contents of the tar.gz file.
Extracting tar.gz File from stdin

To extract a tar.gz file from standard input (stdin), you can use the tar command with the -z option to specify that the input is in gzip format, and the - option to specify that the tar archive should be read from stdin.

Here's an example of how you can do this:

cat file.tar.gz | tar -zx -

This will extract the contents of file.tar.gz to the current directory.

Note, if the original file is not in zip format (even though the name contains gz), you might run in to following error...

gzip: stdin: not in gzip format
tar: Child died with signal 13
tar: Error is not recoverable: exiting now

Then run the above command without -z option ...

cat file.tar.gz | tar -x -

You can also specify a different directory to extract the files to by using the -C option followed by the path of the directory you want to extract the files to. For example:

cat file.tar.gz | tar -zx -C /path/to/extract/to

Listing content of tar.gz file

To list the contents of a tar.gz file, you can use the tar command with the -tf option and specify the path to the tar.gz file. For example:

tar -tf file.tar.gz

This will list the names of all the files and directories in the tar.gz file.

You can also use the -z option to specify that the file is in gzip format:

tar -ztf file.tar.gz

If you want to see the contents of a tar.gz file that is stored in a remote location, you can use curl to download it and pipe the output to tar:

curl -sL http://example.com/file.tar.gz | tar -ztf -
