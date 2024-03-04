#The commands to install and enable dictionaries
# @Yididiel Hills W.I.T©™

```

sudo apt-get install dict-gcide dict-wn dict-jargon dict-foldoc
sudo /etc/init.d/dictd status
sudo apt-get install dict-devil
sudo systemctl start dictd
sudo systemctl enable dictd

### When checking dictd/dict.conf file?

cat /etc/dictd/dict.conf
sudo apt-get update
sudo apt-get update --fix-missing
```

Check the dictionary server setup status

$ sudo /etc/init.d/dictd status

We check that the client connects to the local server, we inspect: dictd.conf

cat /etc/dictd/dict.conf

If you type:

$ dict hello
No definitions found for "hello"

We will see that this definition is not found because we didn't install any definition yet.
Install common dictionaries

$ sudo apt-get install dict-gcide dictd-dictionary 
dict-wn dict-jargon dict-foldoc
How you install all Three
sudo apt-get install dict-gcide dict-wn dict-jargon dict-foldoc

┌──(srhills㉿srwork)-[~]
└─$ sudo systemctl enable dictd
dictd.service is not a native service, redirecting to systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable dictd
                                                                                                                                          
┌──(srhills㉿srwork)-[~]
└─$ sudo systemctl start dictd
                                                                                                                                          
┌──(srhills㉿srwork)-[~]
└─$ sudo /etc/init.d/dictd status
● dictd.service - LSB: Start and stop dictionary server daemon
     Loaded: loaded (/etc/init.d/dictd; generated)
     Active: active (running) since Sat 2022-07-23 01:59:58 IDT; 37s ago
       Docs: man:systemd-sysv-generator(8)
    Process: 6211 ExecStart=/etc/init.d/dictd start (code=exited, status=0/SUCCESS)
      Tasks: 1 (limit: 9233)
     Memory: 32.6M
        CPU: 48ms
     CGroup: /system.slice/dictd.service
             └─6217 "dictd 1.13.0: 0/0"

Jul 23 01:59:58 srwork systemd[1]: Starting LSB: Start and stop dictionary server daemon...
Jul 23 01:59:58 srwork dictd[6211]: Starting dictionary server: dictd.
Jul 23 01:59:58 srwork systemd[1]: Started LSB: Start and stop dictionary server daemon.
                                                                                                                                          
┌──(srhills㉿srwork)-[~]
└─$ 

Run the following command to check if the .bash_profile exists or not in your Terminal

if [ -r ~/.bash_profile ];
    then
        echo "Yes, file exists"
    else
        echo "No, file does not exists"
fi

# Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
