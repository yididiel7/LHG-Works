# Force systemd timesyncd to sync time with NTP server immediately


Commands: ` sudo timedatectl set-ntp true `



Without installing any more packages... Turn NTP off, manually set the time to be close enough, turn NTP back on:
Set NTP Service inactive

$ timedatectl set-ntp false

Set the time manually

Get the approximate LOCAL time from the wall clock, your phone, the Internet. It doesn't need to be perfect because we'll turn ntp back on in a moment...

$ sudo timedatectl set-time "2019-06-22 13:41:00"

Set NTP service active

$ sudo timedatectl set-ntp true

Wait.

Wait a few minutes. If the response in timedatectl does not change then you have networking issues.

$ timedatectl
               Local time: Sat 2019-06-22 13:49:53 AEST
           Universal time: Sat 2019-06-22 03:49:53 UTC
                 RTC time: Sat 2019-06-22 03:49:54
                Time zone: Australia/Sydney (AEST, +1000)
System clock synchronized: no
              NTP service: active
          RTC in local TZ: no

The "System clock synchronized: no" will turn to "yes" when it has adjusted enough to be considered 'in sync'. Something like:

$ timedatectl 
               Local time: Wed 2020-07-22 09:50:32 AEST  
           Universal time: Tue 2020-07-21 23:50:32 UTC   
                 RTC time: Tue 2020-07-21 23:50:32       
                Time zone: Australia/Sydney (AEST, +1000)
System clock synchronized: yes                           
              NTP service: active                        
          RTC in local TZ: no  

and

$ timedatectl timesync-status
       Server: 91.189.91.157 (ntp.ubuntu.com)  
Poll interval: 1min 4s (min: 32s; max 34min 8s)
         Leap: normal                          
      Version: 4                               
      Stratum: 2                               
    Reference: 8CCBCC4D                        
    Precision: 1us (-24)                       
Root distance: 64.781ms (max: 5s)              
       Offset: -88.040ms                       
        Delay: 754.084ms                       
       Jitter: 78.200ms                        
  Packet count: 8                               
     Frequency: -187.812ppm  

Trouble shooting

Who are you asking for the time?

$ cat /etc/systemd/timesyncd.conf
[Time]
NTP=pool.ntp.org

I expect this common pool is best, but some distributions might have their own, or a regional one or you might just have something outdated; that's ok, just be sure it exists and serves ntp. If there is one close that you can reach, like a corporate time server which is inside the firewall, you can set it here, or set a fallback server. See the docs for more.

How is the synchronization progressing?

$ timedatectl timesync-status
       Server: 13.210.208.89 (au.pool.ntp.org)
Poll interval: 8min 32s (min: 32s; max 34min 8s)
 Packet count: 0

This sync is going badly: it started at 30 secs, but has blown out to waiting over 8 minutes between polls. The packet count is an incoming count; ie: there have been zero responses. See above for an example of a healthy one. The poll interval adjusts automagically relative to how badly your clock drifts.

Are there any error messages?

Check the syslog for clues to what the problem might be.

$ journalctl --unit=systemd-timesyncd.service
Jun 22 14:13:09 meebox systemd-timesyncd[8333]: Timed out waiting for reply from 103.214.220.220:123 (au.pool.ntp.org).

In this example, the outgoing packets were not getting any reply because the ntp packets were being blocked by a corporate firewall.



Another troubleshooting for me was looking at

journalctl --unit=systemd-timesyncd.service

    jun 09 10:14:14 srvSRVsrv systemd-timesyncd[xxxxx]: Server has too large root distance. Disconnecting.

So i edited vi /etc/systemd/timesyncd.conf

and uncomment and set:

RootDistanceMaxSec=30

and this solved my problem after a restart of the service timedatectl
