# OpenSSH Full Guide - Everything you need to get started!

## SSH Keys

```markdown
SSH key pairs allow users to connect to remote accounts without having to use the password of the remote account. 
This is useful if you'd like to not have to enter the password to an account you own and access frequently,
or if you need to connect to a shared account where you are not its owner and do not know its password. 
You create a pair of files known as "keys", one private and one public, to facilitate this process. 
The private key stays on the machine you will connect from which is usually the machine where it is created 
(for example, your laptop). The other key, the public key, is put into the remote account by the owner of that account 
(which may be you) or by the server administrator. Think of this process as leaving a real key (the public key) 
in a remote door. The door will only open if you have the associated private key as you approach. 
This is why you must keep the private key to yourself, otherwise people who have a copy of it can 
pass through all the doors in which you left your public key. On UNIX and Mac OS X
```
## Generating SSH Keys

You can generate keys with the 'ssh-keygen' command:

$ ssh-keygen -t ed25519
Generating public/private ed25519 key pair.
Enter file in which to save the key ($HOME/.ssh/id_ed25519):     
Enter passphrase (empty for no passphrase):  
Enter same passphrase again:  
Your identification has been saved in $HOME/.ssh/id_ed25519.
Your public key has been saved in $HOME/.ssh/id_ed25519.pub.

If you already have a keypair with the standard names, you may choose to create additional keypairs with different names. For security reasons you should not use empty passphrases.
Uploading the public key

Once you have generated the key pair, you will need to transfer the public key, e.g. ~/.ssh/id_ed25519.pub, to the remote site. You can transfer the public key in any number of ways, such as by emailing it to the owner of the remote account or an administrator, or FTP, SCP, or SFTP if you have access. The public key file is actually just a text file.
Installing the public key

Once the key has been transfered to the remote machine, its contents will need to be appended to ~/.ssh/authorized_keys within the remote account. If you are not the owner of the remote account you will need to have the owner perform this step. Otherwise, on the remote computer:

$ cat id_ed25519.pub >> ~/.ssh/authorized_keys
[OpenSSH Full Guide - Everything you need to get started!](https://youtu.be/YS5Zh7KExvE)

**Generating SSH Keys**

    Start the puttygen.exe program included with the Putty installer.
    In the Parameters section choose SSH2 RSA as the key type and press Generate. You will need to move your mouse about in the small window area in order to generate randomness that the process requires.
    You may choose to enter a key comment which can be used by you to identify the key (useful when you use several SSH keys).
    Type in a passphrase and confirm it. The passphrase is used to protect your key and you will be asked for it when you connect via SSH using public key authentication.
    Click Save private key to save your private key. A common name is id_rsa.
    Click Save public key to save your public key.  A common name is id_rsa.pub.

**Uploading and Installing the public key**

See the UNIX instructions for these steps above as they are identical.
Using the SSH Key
SSH config file

You can explicitly tell your ssh program to use your ssh key and not your password with `ssh -o preferredauthentications=publickey ...`. Since you may not want to type that every time, you can configure an ssh host alias. Create and/or append to the file ~/.ssh/config on your local computer and enter the following:

Host somename
HostName your.favorite.machine.berkeley.edu
User theuser
PreferredAuthentications publickey

Then you can invoke `ssh somename` and it will pass in all of the above options.
SSH Agent

If you do not want to have to type your key's passphrase every time, you can load the key into your SSH agent once. The ssh-agent is usually automatically started on Linux, and you can load the key into your agent by typing `ssh-add`. If your key is in a non-standard location, you can manually specify it with `ssh-add /path/to/the/ssh/key`. On macOS, your agent uses your keychain, so pass in `-K` to ssh-add, e.g. `ssh-add -K` or `ssh-add -K /path/to/the/ssh/key`.


**First Login to the server and delete the authorized_keys file. 
Then to copy the id_rsa.pub > from the host Source key to client mechine > use this method.**

ssh-copy-id -i ~/.ssh/id_rsa.pub tyhills@192.168.10.166**

===================================

# Unique History Operation Commands

230  ls /home/srhills -a
231  cd .ssh
232  ls
233  cat known_hosts
234  ssh tyhills@192.168.10.166
235  cd .ssh
236  ls
237  ls -l
238  tmux
239  ls /home/srhills -a
240  which tmux
241  .ssh
242  touch config
243  nano config
244  ssh optiplex
245  ls
246  cd ~
247  ssh-keygen
248  cd .ssh
249  ls -l
250  cat id_rsa.pub
251  ssh optiplex
252  ssh optiplex
253  ssh -v optiplex
254  cd .ssh
255  ls
256  rm id_rsa*
257  ssh-keygen
258  cat id_rsa.pub
259 ssh-copy-id -i ~/.ssh/id_rsa.pub tyhills@192.168.10.166

# Configuring SSH-KEYS FOR PC-2 Guestroom PC Optiplex

[tyarco☮tyrone-10a7a00m00]-(~)
└> cd .ssh
cd: no such file or directory: .ssh
┌[tyarco☮tyrone-10a7a00m00]-(~)
└> mkdir -p .ssh
┌[tyarco☮tyrone-10a7a00m00]-(~)
└> cd .ssh/
┌[tyarco☮tyrone-10a7a00m00]-(~/.ssh)
└> ll
total 8.0K
drwxr-xr-x  2 tyarco tyarco 4.0K Apr 28 22:51 ./
drwx------ 16 tyarco tyarco 4.0K Apr 28 22:51 ../
┌[tyarco☮tyrone-10a7a00m00]-(~/.ssh)
└>
Connection to 192.168.10.192 closed.
┌[srhills☮minipcpn62]-(~)
└> cd .ssh
┌[srhills☮minipcpn62]-(~/.ssh)
└> ll

[srhills☮minipcpn62]-(~/.ssh)
└> nano config
┌[srhills☮minipcpn62]-(~/.ssh)
└> ssh ThinkCentre
ssh: Could not resolve hostname thinkcentre: Name or service not known
┌[srhills☮minipcpn62]-(~/.ssh)
└> nano config
┌[srhills☮minipcpn62]-(~/.ssh)
└> ssh thinkCentre
(tyarco@192.168.10.192) Password:

┌[tyarco☮tyrone-10a7a00m00]-(~)
└>
Connection to 192.168.10.192 closed.
┌[srhills☮minipcpn62]-(~/.ssh)
└> ssh-copy-id -i ~/.ssh/id_rsa.pub tyarco@192.168.10.192
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/srhills/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
(tyarco@192.168.10.192) Password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'tyarco@192.168.10.192'"
and check to make sure that only the key(s) you wanted were added.


# Added The ssh-add ~/.ssh/id_rsa to the key for use not to have to type password while in current session.

┌[srhills☮minipcpn62]-(~/.ssh)
└> ssh thinkcentre

ssh: Could not resolve hostname thinkcentre: Name or service not known

┌[srhills☮minipcpn62]-(~/.ssh)
└> ssh tyarco@192.168.10.192

┌[srhills☮minipcpn62]-(~)
└> eval "$(ssh-agent)"

Agent pid 48744

┌[srhills☮minipcpn62]-(~)
└> ps aux | grep ssh-agent

srhills    12477  0.0  0.0   7436  5376 ?        S    Apr28   0:00 /usr/bin/ssh-agent -D -a /run/user/1000/keyring/.ssh
srhills    48744  0.0  0.0   7304  1712 ?        Ss   00:34   0:00 ssh-agent
srhills    48895  0.0  0.0   6572  2432 pts/0    S+   00:34   0:00 grep --color=auto ssh-agent

┌[srhills☮minipcpn62]-(~)
└> cd -

~/.ssh

┌[srhills☮minipcpn62]-(~/.ssh)
└> ls

config  id_rsa  id_rsa.pub  known_hosts  known_hosts.old

┌[srhills☮minipcpn62]-(~/.ssh)
└> cd ~

┌[srhills☮minipcpn62]-(~)
└> ssh-add ~/.ssh/id_rsa

Enter passphrase for /home/srhills/.ssh/id_rsa:
Identity added: /home/srhills/.ssh/id_rsa (srhills@minipcpn62)

┌[srhills☮minipcpn62]-(~)
└> ssh thinkcentre

ssh: Could not resolve hostname thinkcentre: Name or service not known

┌[srhills☮minipcpn62]-(~)
└> ssh tyarco@192.168.10.192

Last login: Fri Apr 28 23:02:40 2023 from 192.168.10.185

# Making sure all of the Host Names Work.

# Bedroom PC ThinkCentre

┌[srhills☮minipcpn62]-(~/.ssh) 
└> ssh 10a7a00m00
Last login: Sat Apr 29 00:38:54 2023 from 192.168.10.185

========================================================

# Guestroom PC Optiplex

[srhills☮minipcpn62]-(~/.ssh)
└> ssh optiplex

Last login: Fri Apr 28 23:12:45 2023 from 192.168.10.185


Fix: SSH Error ‘could not resolve hostname server’

ssh: Could not resolve hostname server: Name or service not known

## Method 1: Make sure you are connected to the Correct Network!

## Method 2: Correcting the  File

Any sort of damage to the file can also cause hostname problems, and ssh will sometimes offer the same warnings for these types of errors that it would offer for anything else. You’ll need root access to open the hosts file. If you’re working on one of the terminals from above, 
then you can type sudo nano  or to open the file for editing. 
The sudo prompt will request your password.
