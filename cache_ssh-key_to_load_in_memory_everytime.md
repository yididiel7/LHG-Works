# HOW TO CACHE SSH-KEY TO LOAD IN MEMORY EVERY TIME

[OpenSSH Full Guide - Everything you need to get started!](https://tinyurl.com/yugyz9nw).

## This first [1] command will not give us the ssh-agent pid-id Only the grep result!
   becuase the ssh-agent isn't actually running

1. $ ps aux | grep ssh-agent
	Result: srhills  1540415  0.0  0.0   6588  2560 pts/0    S+   18:45   0:00 grep --color=auto ssh-agent

## Now to actually start the ssh-agent use this command [2]

2. $ eval "$(ssh-agent)"
	Result: Agent pid 1534949
## 
3. $ ps aux | grep ssh-agent
	Result: 
	srhills  1534949  0.0  0.0   8168  1584 ?        Ss   18:43   0:00 ssh-agent
    srhills  1540415  0.0  0.0   6588  2560 pts/0    S+   18:45   0:00 grep --color=auto ssh-agent

## Unlike the other commands we, are going to CACHE THE PRIVET KEY

	**Do Not Add .pub to the command!**

$ ssh-add ~/.ssh/id_ed25519

Enter passphrase for /home/srhills/.ssh/id_25519
Identity added: /home/srhills/.ssh/id_25519

## Now Log backin to the Remote host to see if it asks for a passphrase?

$ ssh optiplex

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
