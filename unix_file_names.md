 # Unix File Names

The purpose of this short lesson is to introduce you to how files (and directories) are named in Unix.

As we saw in the lesson on the Unix file system, Unix keeps track of files and directories of files using a file system.

The names that you come up with for your Unix files need to work within this file system. The way you name files in Unix is pretty flexible, but there are specific rules you have to follow. In practice, there are also some good habits to get into when making your own files.
Unix File Naming Rules

Although some Unix systems might vary, the general rules for file naming are as follows.

You can name a file in Unix using up to a certain number of characters (the precise number is defined by your particular Unix installation--check your system documentation) in any combination from the following sets:

```
    {a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z}
    {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
    {period (.), underscore(_), comma(,)} 
```
You can not name a file period (.) or period period (..).

Directories are files in Unix, so directory names follow these same rules also.
Unix File Naming Practices

## You need to follow the official rules for file naming in Unix, but here are some good practices that I've found also help keep things straight:

[What Are The Rules for Linux File Names?](https://lowfatlinux.com/linux-filenames.html).

    Avoid naming a file with the same name as a Unix command. You can find out if a name is a Unix command by using the man command.
    Use file extensions that are widely recognized when possible. For example, if you create a text file, use the character string .txt as the last part of the file name.
    Make all the letters of all your files (and directory names) lower case. Unix cares about case. That is, the file Alpha.txt is different from alpha.txt. A the capital letter is only going to cause you problems with trying to remember if the filename or directory name has a capital letter or not. Simply use all lower case. It makes life easier.
    Start a file name with a letter or number. If you start it with a dot (.), it will be a hidden file.
    Make your names short, but not cryptic. Use correctly-spelled nouns when possible. For example, store your inventory in inventory.dat and not invtry.dat.

What's in a File Name? Linux file names can be up to 256 characters long, but you really have to enjoy typing to get to that extreme. You can name a file panda-corporation-financial-reports.y96 if you wish, but you'll probably find that shorter names (and intelligent use of directories) will save lots of time and keystrokes in the course of a day. When naming files, you can use uppercase and lowercase letters, numbers, and certain special characters. It's a really good idea to stick with letters, numbers, and the dash, dot, and underscore characters to avoid trouble and confusion.

Note: Don't use asterisks, backslashes, or question marks in Linux file names--these characters have special meaning to the shell and could cause your commands to do something quite different from what you intended. Also avoid using a dash as the first character of a file name, since most Linux commands will treat it as a switch.

Files starting with a dot are hidden files. They behave just like any other file, except that the ls (list files) command will not display them unless you explicitly request it to do so. Your .profile file is an example of a hidden file.

Also remember that Linux file names are case sensitive, which can be difficult to get used to if you have a DOS background. Linux allows you to have unique files named goodstuff, GOODSTUFF, and GoodStuff in the same directory.

It's best to always use lowercase in Linux unless you can think of a good reason to use uppercase or mixed case. Most Unix people use lowercase almost exclusively, but aside from this "cultural" point, there's another good reason to use lowercase. If you're sharing or accessing a DOS file system with Linux, DOS will not be able to see the files that have uppercase or mixed-case file names.

Unlike under DOS, the dot character (.) has no special meaning. You're not limited to the eight dot three (xxxxxxxx.yyy) style of naming because Linux treats the dot just like any other character; you can name a file Some.Yummy.CHEESECAKE.Recipes if you're so inclined.

Along these lines, Linux executables do not need or use a special extension such as .exe or .bat. Linux will happily run a program file named zippity just as readily as it will run DOODAH.EXE.

And here's another slight difference between Linux and DOS filesystems. Linux uses the forward slash (/) in path names, and DOS uses the backslash (\). Don't blame this little quirk on Linux though . . . the DOS filesystem was originally modeled after Unix! In fact, the popular rumor is that Bill Gates and Company implemented the DOS filesystem just differently enough from the Unix filesystem to avoid being criticized for stealing the idea. The same charge is made about the DOS batch file (.BAT) utility, since it bears striking similarities to the Unix shell scripting languages, but I digress. . . .

Exercise: Make up some file names

[Unix File Names](https://johndecember.com/unix/tutor/filenames.html).

Create some files in your home directory with a variety of names.

Then write out the absolute pathnames of these files.

File and Directory Names

As Chapter 3, explained, both files and directories are identified by their names. A directory is really just a special kind of file, so the rules for naming directories are the same as the rules for naming files.

Filenames may contain any character except /, which is reserved as the separator between files and directories in a pathname. Filenames are usually made of upper- and lowercase letters, numbers, “.” (dot), and “_” (underscore). Other characters (including spaces) are legal in a filename—but they can be hard to use because the shell gives them special meanings. So we recommend using only letters, numbers, dot, and underscore characters.
```
Unlike some operating systems, UNIX doesn’t require a dot (.) in a filename; in fact, you can use as many as you want. For instance, the filenames pizza and this.is.a.mess are both legal.
```

Some UNIX systems limit filenames to 14 characters. Most newer systems allow much longer filenames.

A filename must be unique inside its directory, but other directories may have files with the same names. For example, you may have the files called
chap1 and chap2 in the directory /users/carol/work and also have files with the same names in /users/carol/play.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
