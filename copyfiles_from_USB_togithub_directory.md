# Copy files from USB to [archlinux-nemesis] dircetory.

`$ lsblk`

Using _*lsblk*_ command you can check the device name and its 
mount points. Here you can see sda mounted to /media folder.

**Then
make sure you are inside the folder where you want to copy the files from.**

cd into /run/media/srhills/BU_Drive/

[srhills☮minipcpn62]-(~/archlinux-nemesis)-[git://main ✔]-
└> cd /run/media/srhills/BU_Drive/

┌[srhills☮minipcpn62]-(/run/media/srhills/BU_Drive)
└> sudo cp .tmux.conf ~/archlinux-nemesis

[sudo] password for srhills:
┌[srhills☮minipcpn62]-(/run/media/srhills/BU_Drive)
└>