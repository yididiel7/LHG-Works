========================================================================================
=   .-.-. .-.-. .-.-.  Filename:   🐧️ Netcat Install with -e Execution Opt.txt
=  ( W .'( I .'( T .'  Description: To Install the version with -e Execution Option
=   `.(   `.(   `.(    Student:     Yididiel Hills W.I.T©™
========================================================================================

Note: The $ sign emulates the COMMAND_PROMPT_POSITION ~$

To remove the OLD version of Netcat

$ sudo apt-get remove --purge netcat-openBSD

To Install the version with -e Execution Option Use:

$ wget https://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz/download

$ sudo apt install ncat
-----------------------

To check that the installation installed the correct netcat Use:
nc -h

To see all Ports use:
$ sudo nmap -sT -p- 192.168.94.31

Mandatory arguments to long options are mandatory for short options too.
Options:
  -c, --close                close connection on EOF from stdin
  -e, --exec=PROGRAM         program to exec after connect
  -g, --gateway=LIST         source-routing hop point[s], up to 8
  -G, --pointer=NUM          source-routing pointer: 4, 8, 12, ...
  -h, --help                 display this help and exit

Install the GNU Version of netcat
First goto: http://netcat.sourceforge.net/
Click download button and Copy the 
URL: https://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz/download

Put this link in the terminal prompt
$ wget https://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz/download

Current Installation directory
-rw-rw-r--  1 yididiel yididiel     398872 Jan 11  2004  netcat-0.7.1.tar.gz

Run this command $ tar -xzf netcat-0.7.1.tar.gz
then this command $ cd netcat-0.7.1/
and this command $ ./configure

When you finish Simply type: $ make
and $ sudo make install
To make the new netcat file.

Installation directory:
make clean 
# You can remove the program binaries and object files from the source code directory by typing make clean. To also remove the files that configure created, run make distclean command.

./netcat-0.7.1/src/netcat
/home/yididiel/netcat-0.7.1

How to remove and purge: sudo apt-get remove --purge netcat-openBSD

📜️ The rsync command option explained Help: man rsync

Rsync (Remote Sync) is the most commonly used command for copying and synchronizing files and directories remotely as well as locally in Linux/Unix systems.

Backup with rsync in Linux

1449  rsync -rau /home/yididiel/Documents/ /home/yididiel/Backup/
1450  cd Backup
1451  ls

Tecment: https://www.tecmint.com/rsync-local-remote-file-synchronization-commands/

📜️ netcat-chatting.txt 
nc -h gives you the help and Options
Commands for listener Machine 
nc -l -p 31337

🔸️Use this Command to get the ip address for client in Linux OS 
👉🏿️ ifconfig or ip addr

Commands for Client Machine:
nc 192.168.244.2 31337

🔸️How to Use Netcat Commands with Examples
resources: The GNU NETcat http://netcat.sourceforge.net/
Download: cdc
resource: LinOxide https://linoxide.com/install-use-netcat-command-linux/

📜️ Then Execute these commands below. The side numbers 1960 is the history count which can be
used to Execute that command by "RECALLING THE COMMAND"💡️ !1960

1960  tar -xzvf netcat-0.7.1.tar.gz
1961  cd netcat-0.7.1
1962  ./configure
1963  sudo make
1964  sudo make install

Extract tar.gz Files
The tar command options explained
    [x] The x stand for extract, it is mandatory when a tar file shall be extracted.
    [z] The z option tells tar that the archive that shall be unpacked is in gzip format.
    [v] This option stands for verbose, it will show the file names while they get unpacked.
    [f] This option instructs tar to read the archive content from a file, in this case the
     file netcat-0.7.1.tar.gz. 

The above tar command will silently extract that tar.gz file, it will show only error messages. If you like to see which files get extracted, then add the "v" option.
Example: tar -xzvf netcat-0.7.1.tar.gz 

📜️ Port Number is: 31337 | ip address is: 192.168.244.2 in this case.

🔸️File Transfer in Liux: Command for listener side: nc -v -w 30 31337 < filetobetransfered.txt

🔸️On the second machine type: nc -v -w 2 192.168.244.2 31337 > filetobetransfered.txt

👉🏿️ Website Resources:
How to Use Netcat Commands with Examples
https://linoxide.com/install-use-netcat-command-linux/

PATH="$PATH:/usr/bin"
export LESS="--RAW-CONTROL-CHARS"
alias ~="cd ~"
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../.."

💡️ Important VIM Options and Settings
https://linuxhint.com/important_vim_settings/

💡️ 10 Practical Examples of Rsync Command in Linux
https://www.tecmint.com/rsync-local-remote-file-synchronization-commands/

💡️ How to Use Netcat Commands with Examples
https://linoxide.com/install-use-netcat-command-linux/

💡️ Linux Find Out Last System Reboot Time and Date Command
https://www.cyberciti.biz/tips/linux-last-reboot-time-and-date-find-out.html

💡️ Howto Reboot or halt Linux system in emergency
https://www.cyberciti.biz/tips/reboot-or-halt-linux-system-in-emergency.html
