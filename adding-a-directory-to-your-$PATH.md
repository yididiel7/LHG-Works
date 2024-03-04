# Adding a directory to your $PATH:
# This wwill show up at the  end of your path

> $ PATH=$PATH:~/bin

The following command lists the packages with their versions, and additionally it lets you set up a system with the same packages and versions later, using the pkg-selections.txt file generated here:

aptitude -q -F "%?p=%?V %M" --disable-columns search \~i > pkg-selections.txt


## To list the names of each installed package, type as any user:

dpkg --get-selections

You will get an output like this :

accountsservice              install
aclinstall                   install
acpi-supportinstall          install
acpidinstall                 install
...

To remove the unecessary "install" character string, you can use sed :

dpkg --get-selections | sed 's:install$::'

And if yout want to save it to a file called InstalledPackages, you type this :

dpkg --get-selections | sed 's:install$::' > InstalledPackages



For anyone finding this question years later, like I did:

    With apt you can do apt list --installed for a pretty printed list.
    dpkg-query -W without any formating options gives you package name and version.
    sed -En 's/^(Package|Version): //p' /var/lib/dpkg/status | paste - - Will give you the same output as above. This works without debian/ubuntu tools (say Ubuntu rootfs is mounted from RHEL).

The simplest way is using dpkg, but it might show a few extraneous packages and it truncates long package names and version numbers:

dpkg -l

To list only correctly installed packages and not truncate names:

dpkg -l | grep '^ii'

To get more control over the output format, you can use dpkg-query:

dpkg-query -W -f '${status} ${package} ${version}\n' | \
sed -n 's/^install ok installed //p'

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
