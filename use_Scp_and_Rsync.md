# How to use Scp and Rsync to securely transfer files


**How to use Scp**

Scp is linux utility to transfer files between hosts on a network.

The basic format of the scp command is

scp host1 host2

Above command will transfer files between host1 and host2.

If you do man scp on your command prompt, you will see many options.

lets go through couple of these options, rest are self explanatory.

    -P port option is to specify the port to connect on a host2. Generally you don't need to specify this, by default it assumes port 22
    -C option is for compression. Files will be compressed first before transferring over the network. There it is good for speed and network bandwidth

Lets go through an example now. Lets say we want to transfer file test1 in directory /tmp from host1 to /tmp directory in host2

scp host1:/tmp/test1 host2:/tmp/

if you want to preserve the file time stamp. use -p switch

scp -p  host1:/tmp/test1 host2:/tmp/

Lets see now how you can copy the whole directory. Lets say we want to copy dir1 in directory /tmp from host1 to /tmp in host2

scp -rp host1:/tmp/dir1 host2:/tmp/

Now in the above command we can enable compression if the directory size is big.

scp -S -rp host1:/tmp/dir1 host2:/tmp/


Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
