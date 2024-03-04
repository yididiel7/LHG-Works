# Install and Setup ZSH and Oh-My-Zsh on BunsenLabs GNU/Linux 11 (Beryllium)

[Install and Setup ZSH and Oh-My-Zsh](https://tinyurl.com/2mamrer8).

When you log in to a Debian Linux system for the first time, before doing any work it is always a good idea to check what version of Debian is running on the machine.

Three releases of Debian are always actively maintained:

    Stable - The latest officially released distribution of Debian. At the time of writing this article, the current stable distribution of Debian is version 9 (stretch). This is the version that is recommended for production environments.
    Testing - The preview distribution that will become the next stable release. It contains packages that are not ready for stable release yet, but they are in the queue for that. This release is updated continually until it is frozen and released as stable.
    Unstable, always codenamed sid - This is the distribution where the active development of Debian is taking place.

In this tutorial, we’ll show several different commands on how to check what version of Debian Linux is installed on your system.
Checking Debian Version from the Command Line

The lsb_release utility displays LSB (Linux Standard Base) information about the Linux distribution.

The preferred method to check your Debian version is to use the lsb_release utility which displays LSB (Linux Standard Base) information about the Linux distribution. This method will work no matter which desktop environment or Debian version you are running.

lsb_release -a

No LSB modules are available.
Distributor ID:	Debian
Description:	Debian GNU/Linux 9.5 (stretch)
Release:	9.5
Codename:	stretch

Your Debian version will be shown in the Description line. As you can see from the output above I am using Debian GNU/Linux 9.5 (stretch).

Instead of printing all of the above information you can display the description line which shows your Debian version passing the -d switch.

lsb_release -d

The output should look similar to below:

Description:	Debian GNU/Linux 9.5 (stretch)

Alternatively, you can also use the following commands to check your Debian version.
Checking Debian Version using the /etc/issue file

The following cat command will display the contents of the /etc/issue which contains a system identification text:

cat /etc/issue

The output will look something like below:

Debian GNU/Linux 9 \n \l

Checking Debian Version using the /etc/os-release file

/etc/os-release is a file which contains operating system identification data, and can be found only on the newer Debian distributions running systemd.

This method will work only if you have Debian 9 or newer:

cat /etc/os-release

The output will look something like below:

PRETTY_NAME="Debian GNU/Linux 9 (stretch)"
NAME="Debian GNU/Linux"
VERSION_ID="9"
VERSION="9 (stretch)"
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"

Checking Debian Version using the hostnamectl command

hostnamectl is a command that allows you to set the hostname but you can also use it to check your Debian version.

This command will work only on Debian 9 or newer versions:

hostnamectl

   Static hostname: debian9.localdomain
         Icon name: computer-vm
           Chassis: vm
        Machine ID: a92099e30f704d559adb18ebc12ddac4
           Boot ID: 4224ba0d5fc7489e95d0bbc7ffdaf709
    Virtualization: qemu
  Operating System: Debian GNU/Linux 9 (stretch)
            Kernel: Linux 4.9.0-8-amd64
      Architecture: x86-64

Conclusion

In this guide, we have shown you how to find the version of Debian installed on your system. For more information on Debian releases visit the Debian Releases page.

Feel free to leave a comment if you have any questions.
