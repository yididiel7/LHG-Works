# List Installed Packages with Pacman on Arch Linux

Pacman Package Manager – Getting Started With Pacman

1. [List Installed Packages with Pacman on Arch Linux](https://tinyurl.com/2l5ctm6j).

You can use the Pacman command with the -Q option to list all installed packages on your system. In the above command, you should see two columns. The first column is the name of the installed packages and the second column is the version of the installed packages.

## Step 2 - Update all the package indexes with the following command:

pacman -Syu

grep -i installed /var/log/pacman.log

pacman -Qe # list all explicitely installed packages

## Step 3 – List Installed Packages Using Pacman

You can use the Pacman command with the -Q option to list all installed packages on your system.

pacman -Q

You should see the list of all installed packages in the following output:

In the above command, you should see two columns. The first column is the name of the installed packages and the second column is the version of the installed packages.

If you want to export the list to a file, run the following command:

pacman -Q > packages.txt

This will create a new file named packages.txt in your current working directory.

## Step 4 – List Only the Later Installed Packages

You can also list all packages that are installed later using the Pacman command. To list later installed packages, use the -Qe option:

pacman -Qe

You should see a list of later installed packages in the following output:

To list more system packages, run the following command:

pacman -Qet

You should see the following output:

## Step 5 – List Only the Installed Package Names

By default, the Pacman command generates all installed package lists in two columns. If you want to show only the first column, run the following command:

pacman -Q | awk '{print $1}'

You will get the following output:

To export the above list to a file, run the following command:

pacman -Q | awk '{print $1}' > package_list.txt

## I used this command

`$ pacman -Q | awk '{print $1}' > arco_package_list1.txt`

Individual packages

The following command will list all installed packages and their individual sizes:

$ LC_ALL=C pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h

Packages and dependencies

To list package sizes with their dependencies,

    Install expac and run expac -H M '%m\t%n' | sort -h.
    Run pacgraphAUR with the -c option.

To list the download size of several packages (leave packages blank to list all packages):

$ expac -S -H M '%k\t%n' packages

To list explicitly installed packages not in the meta package base nor package group xorg with size and description:

$ expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg xorg; expac -l '\n' '%E' base; } | sort -u)) | sort -n

To list the packages marked for upgrade with their download size:

$ expac -S -H M '%k\t%n' $(pacman -Qqu) | sort -sh

To list optional dependencies only:

$ expac -S "%o" package

By date

To list the 20 last installed packages with expac, run:

$ expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20

or, with seconds since the epoch (1970-01-01 UTC):

$ expac --timefmt=%s '%l\t%n' | sort -n | tail -n 20

## Conclusion

In this post, we explained how to list packages in Arch Linux using the Pacman command.