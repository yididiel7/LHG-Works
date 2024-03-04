# How to Create an Empty File with dd Command

```

┌[srhills☮minipcpn62]-(~)
└> lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 447.1G  0 disk
├─sda1   8:1    0   300M  0 part /boot/efi
└─sda2   8:2    0 446.8G  0 part /
sdb      8:16   1  58.7G  0 disk 
├─sdb1   8:17   1   2.5G  0 part /run/media/srhills/GARUDA_DR460NIZED_RAPTOR
└─sdb2   8:18   1     4M  0 part
sdc      8:32   0   1.8T  0 disk
├─sdc1   8:33   0   300M  0 part
└─sdc2   8:34   0   1.8T  0 part
```

```
┌[srhills☮minipcpn62]-(~)
└> /run/media/srhills/

┌[srhills☮minipcpn62]-(/run/media/srhills)
└> `sudo dd if=/dev/zero of=/dev/sdb bs=1M count=1024`

[sudo] password for srhills:
1024+0 records in
1024+0 records out
1073741824 bytes (1.1 GB, 1.0 GiB) copied, 18.9717 s, 56.6 MB/s

```

```
┌[srhills☮minipcpn62]-(/run/media/srhills)
└> lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 447.1G  0 disk
├─sda1   8:1    0   300M  0 part /boot/efi
└─sda2   8:2    0 446.8G  0 part /
sdb      8:16   1  58.7G  0 disk
sdc      8:32   0   1.8T  0 disk
├─sdc1   8:33   0   300M  0 part
└─sdc2   8:34   0   1.8T  0 part
┌[srhills☮minipcpn62]-(/run/media/srhills)
└>
```

