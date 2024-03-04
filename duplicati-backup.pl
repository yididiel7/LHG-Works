# Duplicati Backup Solution for Archcraft Linux
# Mon 04 Dec 2023 10:07:50

## Enable, start and check running status of the duplicati service:

* UI can be accessed via following URL: http://localhost:8200
  * Running duplicati user instance (using current user account)
    - to reload user systemd modules:        systemctl --user daemon-reload
    - to start duplicati manually:           systemctl --user start duplicati
    - to autostart duplicati on user login:  systemctl --user enable duplicati


    ~/duplicati-latest master* 1m 22s
    🚀  🐧  on sr-minipcpn62 at 󰋜 /duplicati-latest via  master    󱑍 04:27:53 AM  last command: 1m22s
     systemctl --user daemon-reload

    ~/duplicati-latest master*
    🚀  🐧  on sr-minipcpn62 at 󰋜 /duplicati-latest via  master    󱑍 04:36:40 AM  
     systemctl --user start duplicati        

    ~/duplicati-latest master* 6s
    🚀  🐧  on sr-minipcpn62 at 󰋜 /duplicati-latest via  master    󱑍 04:36:55 AM  last command: 5s
     systemctl --user enable duplicati        
    Created symlink /home/srhills/.config/systemd/user/default.target.wants/duplicati.service → /usr/lib/systemd/user/duplicati.service.

    ~/duplicati-latest master*
    🚀  🐧  on sr-minipcpn62 at 󰋜 /duplicati-latest via  master    󱑍 04:37:40 AM  

BackupName: Backup1-srpn62
  UserName: srhills
  Password: SHqM3"es;&c27C>
  Passphrase: Bw_@Jmx%u7gV8g+









sudo systemctl enable duplicati.service
sudo systemctl daemon-reload
sudo systemctl start duplicati.service  
sudo systemctl status duplicati.service


  BackupName: Backup1-srpn62
	UserName: srhills
	Password: SHqM3"es;&c27C>
  Passphrase: Bw_@Jmx%u7gV8g+

	Web Address: http://localhost:8200

## This cmd did work however I can't locate the backup location?

` $ duplicati-cli backup console-password-input /run/media/srhills/WD-EasyStore/alacritty_original.yml`

## RESULTS

```
┌─[srhills@sr-minipcpn62] - [~] - [470]
└─[$] duplicati-cli backup console-password-input /run/media/srhills/WD-EasyStore/alacritty_original.yml                                       [11:25:24]
Backup started at 12/4/2023 11:26:00 AM

Enter encryption passphrase:

Confirm encryption passphrase:
Checking remote backup ...
  Listing remote folder ...
  Listing remote folder ...
Scanning local files ...
  0 files need to be examined (0 bytes)
  Uploading file (9.26 KB) ...
  Uploading file (925 bytes) ...
  Uploading file (973 bytes) ...
Compacting remote backup ...
Checking remote backup ...
  Listing remote folder ...
Verifying remote backup ...
Remote backup verification completed
  Downloading file (973 bytes) ...
  Downloading file (925 bytes) ...
  Downloading file (9.26 KB) ...
  Duration of backup: 00:00:24
  Remote files: 3
  Remote size: 11.12 KB
  Total remote quota: 438.55 GB
  Available remote quota: 359.01 GB
  Files added: 1
  Files deleted: 0
  Files changed: 0
  Data uploaded: 11.12 KB
  Data downloaded: 11.12 KB
Backup completed successfully!
```
## Copyright 2024 by Tyrone Hills All rights reserved.

## Enable, start and check running status of the duplicati service:

sudo systemctl enable duplicati.service
sudo systemctl daemon-reload
sudo systemctl start duplicati.service  
sudo systemctl status duplicati.service

Copyright 2024 by Tyrone Hills All rights reserved.

After installing, I created the duplicati service file. This should ensure that it stays running in the background.

sudo vi /etc/systemd/system/duplicati.service

I put this in the file:

[Unit]
Description=Duplicati web-server
After=network.target

[Service]
Nice=19
IOSchedulingClass=idle
EnvironmentFile=-/etc/default/duplicati
ExecStart=/usr/bin/duplicati-server $DAEMON_OPTS
Restart=always

[Install]
WantedBy=multi-user.target

I went ahead and updated the options from the installation instructions:

sudo vi /etc/default/duplicati

Here is the option line:

DAEMON_OPTS="--webservice-interface=any --webservice-port=8200 --portable-mode"

Then, I enabled the service…

sudo systemctl enable duplicati.service
sudo systemctl daemon-reload
sudo systemctl start duplicati.service  
sudo systemctl status duplicati.service

Configuring

I used the GUI web page to configure Duplicati. The IP address came from the “ip address” command, and I used the default port 8200.

When I first logged in, I saw this:

I clicked Yes because I have this available on my network where others could get to it. That took me to the settings page where I entered a new password.

When I clicked OK on the settings page, it told me that I wasn’t logged in, and it made me enter the password. My new password worked to get me in.

Backing Up the Server

To start, I tried backing up my test files on the server itself. I used the Add Backup option on the menu.

I picked a new configuration and entered some general information:

I created a new directory in /opt.

For the source, I picked the directory where all my files are

I went ahead and scheduled it, not that I intend on leaving the machine on overnight. Afterward, on the home screen, I found where I could run the backup now.

After the backup was done, here’s what the backup directory looks like:

$ ls -lh /opt/backup/
total 124M
-rw-r--r-- 1 root root 3.0K Mar  2 04:41 duplicati-20230302T044042Z.dlist.zip.aes
-rw-r--r-- 1 root root  50M Mar  2 04:41 duplicati-

And, the backup directory is 124MB. That tells me that there is no compression. The SQL file in my tests should have been considerably smaller if there was.

$ du -hs /opt/backup/
124M  /opt/backup/

Restoring on the server

So, now, before we declare this a victory, we have to be able to restore the files. I just used the Restore feature in the web GUI.

It allows me to choose which files that I want to restore. For now, I’ll just choose all of them.
I picked a different directory to restore to so that I could confirm it worked.
To check, I created an md5sum file from my original files. Then, I ran the checks against the restored files.
$ cd my_test_data/
$ md5sum * > ../checks.md5sum
$ cd ../my_test_restore/
$ md5sum --check ../checks.md5sum 
February2023_8933.qfx: OK
Fiery Serpents.pptx: OK
Google Fi Summary.xlsx: OK
IMG_20230227_184723916_HDR.jpg: OK
IMG_20230301_105021853.jpg: OK
IMG_20230301_111744010.jpg: OK
matthew_backup.sql: OK
Online_Security_SQL_problem.docx: OK
Photos-001.zip: OK
PXL_20230224_140417679.MP: OK
PXL_20230224_140417679.MP.jpg: OK
PXL_20230224_192040851.jpg: OK
PXL_20230227_004318122.jpg: OK
PXL_20230301_175831837.MP: OK
PXL_20230301_175831837.MP.jpg: OK
PXL_20230301_175845815.MP: OK
PXL_20230301_175845815.MP.jpg: OK
PXL_20230302_005003487.jpg: OK
Refiner's Fire - How is Silver Refined.webm: OK
Everything seems to look great at this point.
From the Command Line
Now, I wanted to see if I could script the backup from the command line. I found I could cheat, and export my GUI job. There’s an export option on the Home page.
I used the Command-line option:
Here’s the command line that I got:
mono /usr/lib/duplicati/Duplicati.CommandLine.exe backup file:///opt/backup /home/skp/my_test_data/ --backup-name="My Test directory" --dbpath=/usr/lib/duplicati/data/LOHYBEDFWH.sqlite --encryption-module=aes --compression-module=zip --dblock-size=50mb --passphrase="This is my test" --disable-module=console-password-input
When I ran it, it failed. It said it couldn’t open the database. I think it’s a permission thing.
Failed to load connection with path '/usr/lib/duplicati/data/LOHYBEDFWH.sqlite'. => Unable to open the database file
Mono.Data.Sqlite.SqliteException (0x80004005): Unable to open the database file
 at Mono.Data.Sqlite.SQLite3.Open (System.String strFilename, Mono.Data.Sqlite.SQLiteOpenFlagsEnum flags, System.Int32 maxPoolSize, System.Boolean usePool) [0x00077] in <132a2409ede24587885b92b7f48af81f>:0 
 
After adding sudo in front, the command worked fine:
Checking remote backup ...
 Listing remote folder ...
Scanning local files ...
 0 files need to be examined (0 bytes)
 Uploading file (22.86 KB) ...
 Uploading file (1.03 KB) ...
 Uploading file (2.93 KB) ...
Compacting remote backup ...
Checking remote backup ...
 Listing remote folder ...
Verifying remote backup ...
Remote backup verification completed
 Downloading file (2.93 KB) ...
 Downloading file (1.03 KB) ...
 Downloading file (23.55 MB) ...
 Duration of backup: 00:00:04
 Remote files: 10
 Remote size: 123.59 MB
 Total remote quota: 13.67 GB
 Available remote quota: 5.75 GB
 Files added: 0
 Files deleted: 0
 Files changed: 2
 Data uploaded: 26.82 KB
 Data downloaded: 23.56 MB
Backup completed successfully!
I can see that it picked up on the 2 files that I changed.
Backing Up My “Remote” computer
So, the “server” computer is pretty easy to backup both from the Web GUI and the command line. Now, the question is whether or not we can backup a remote computer. So, on the “remote” computer, I installed SSH.
sudo apt install openssh-server
Next, back on the server, I generated a key. Rather than putting my email in the comment, I put duplicati, and I changed the file name to id_backup. I also left the passphrase blank.
$ ssh-keygen -t rsa -b 4096 -C "duplicati"
Generating public/private rsa key pair.
Enter file in which to save the key (/home/skp/.ssh/id_rsa): /home/skp/.ssh/id_backup
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/skp/.ssh/id_backup
Your public key has been saved in /home/skp/.ssh/id_backup.pub
The key fingerprint is:
SHA256:YXC5/yqpjwJwtiZ1LTwbfmNNNXCm5jTAVQ3x1/1/NxE duplicati
The key's randomart image is:
+---[RSA 4096]----+
| .o.++*+ |
| .+.+o.. ..|
| . . Bo .. .Eo|
|. + * .=oo . o|
| = + = oS. ..|
|. + o + . . o|
| o . o . . . .+|
| . .o . +|
| .oo.... |
+----[SHA256]-----+
Next, I used ssh-copy-id to copy the key over to the remote computer.
$ ssh-copy-id 10.0.2.15
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/skp/.ssh/id_backup.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
skp@10.0.2.15's password: 
Number of key(s) added: 1
Now try logging into the machine, with: "ssh '10.0.2.15'"
and check to make sure that only the key(s) you wanted were added.
Now, to connect I have to specific the key. That’s only because I changed the key name from id_rsa.
ssh -i ~/.ssh/id_backup 10.0.2.15
Next, I need to mount the “remote” computer’s file system so that Duplicati can get to it. I used sshfs, which I need to install.
sudo apt install sshfs
Then, I created a directory in my home directory for mounting. And, I used the sshfs command to mount it.
$ mkdir mnt
$ sshfs -o ssh_command='ssh -i ~/.ssh/id_backup' 10.0.2.15:/home/skp ./mnt
$ ls mnt
Now that the folder is accessible, I can use the GUI to setup a backup. I just selected that mnt folder that I created. (Note: I forgot the trailing slash in the following screenshot, but you get the point.)
When I ran that backup, I got an Unauthorized to access source folder error message. I assume that this is because I have it mount under my user rather but Duplicati is running under root. Let me try to move to the /mnt folder…
umount mnt
sudo sshfs -o ssh_command='ssh -i /home/skp/.ssh/id_backup' skp@10.0.2.15:/home/skp /mnt
sudo ls /mnt
Then, I updated my backup configuration to point to /mnt instead of the mnt in the home directory.
I did get this message, which may be because my files are the same on both computers. I chose to run the repair.
I never could get this to backup for some reason. I’m not exactly sure I understand why. I ran out of motivation to play with it because it is clear that it wasn’t designed for this.
I probably should have installed Duplicati on my test-desktop computer. Then, I could expose my backup directory with sftp and have the test-desktop send the files to the server. Maybe some other time I’ll explore that idea.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
