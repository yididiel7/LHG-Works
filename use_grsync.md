How to use grsync

 Now I want to talk about another great Utility grsync, which is GUI utility for rsync.

 It works on all the major platforms, such as Centos, Ubuntu, Windows and Mac.

 To install on Centos do...

  yum install grsync

  Once you have it installed,  You can invoke the GUI by just typing grsync. It has pretty simple GUI interface which is self explanatory.

  One of the great benefit of using grsync is that it can be used to syncup folders between two servers. Here is how it works.

      Create a new session by going sessions > add
      A new pop up window will show up, Give your session a name.
      Then fill up the information for source and destination servers. Then click simulation. It will ask for password on the command prompt.
      If all the settings are good, Then it will actually simulate rsync operation and show you the output. If you liked the output, you can click execute to fulfill the operation.

  Example: I created a session named "copy_from_server2_current_server" Here is the output of the simulate function...

  **** copy_from_server2_current_server - Thu Aug 22 00:43:28 2019
   
  ** Launching RSYNC command (simulation mode):
  rsync -r -n -t -v --progress -s root@server2:/home/downloads/home /tmp/
   
  receiving incremental file list
  home/
  home/scripts/
  home/scripts/get_free_memory.sh
  home/scripts/get_ipaddr.sh
  home/scripts/prepare.sh
   
  sent 41 bytes received 162 bytes 27.07 bytes/sec
  total size is 1,766 speedup is 8.70 (DRY RUN)
  Rsync process exit status: 0

  In the simulation it showed me what command it would use...

  rsync -r -n -t -v --progress -s root@server2:/home/downloads/home /tmp/

  The great benefit of using grsync is that, you chose all the options through GUI and you dont need to remember these options.

  Another benefit is that We can call this session in a cron job and setup a sync up between two directories such as this...

  0 11 * * * grsync -e "copy_from_server2_current_server"

  Above cron will run the copy_from_server2_current_server rsync command using grsync 11 o'clock everyday. 

  Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
