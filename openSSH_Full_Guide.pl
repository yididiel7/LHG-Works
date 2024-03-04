# OpenSSH Full Guide - Everything you need to get started!

[OpenSSH Full Guide - Everything you need to get started!](https://youtu.be/YS5Zh7KExvE)


First Login to the server and delete the authorized_keys file. Then to copy the id_rsa.pub
ssh-copy-id -i ~/.ssh/id_rsa.pub tyhills@192.168.10.166

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

