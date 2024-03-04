# ntfy sample notifactions with nmap

scan=$(nmap 192.168.10.132) && curl -d "Here are the results of the scan: $scan" https://ntfy.sh/Srktav

Servers: 

https://ntfy.sh/Ansible_Main_Workstation-Setup_Alerts

https://ntfy.sh/aJpr6RI3WxeMyInz

https://ntfy.sh/Srktav

## Urgent notification with tags and title

curl \                                                                                                                                                         

  -H "Title: Unauthorized access detected" \
  -H "Priority: urgent" \
  -H "Tags: warning,skull" \
  -d "Remote access to srhills-minipcpn62 detected. Act right away." \
  ntfy.sh/Srktav

## Notification using a click action, a user action, with an external image attachment and forwarded via email

curl \                                                                                                                                                                      
  -H "Click: https://home.nest.com/" \
  -H "Attach: https://nest.com/view/yAxkasd.jpg" \
  -H "Actions: http, Open door, https://api.nest.com/open/yAxkasd, clear=true" \
  -H "Email: phil@example.com" \
  -d "There's someone at the door. 🐶

Please check if it's a good boy or a hooman.
Doggies have been known to ring the doorbell." \
  ntfy.sh/Srktav


Message title¶

Supported on:
The notification title is typically set to the topic short URL (e.g. ntfy.sh/mytopic). To override the title, you can set the X-Title header (or any of its aliases: Title, ti, or t).

curl -H "X-Title: Dogs are better than cats" -d "Oh my ..." ntfy.sh/controversial
curl -H "Title: Dogs are better than cats" -d "Oh my ..." ntfy.sh/controversial
curl -H "t: Dogs are better than cats" -d "Oh my ..." ntfy.sh/controversial


You can set the priority with the header X-Priority (or any of its aliases: Priority, prio, or p).

curl -H "X-Priority: 5" -d "An urgent message" ntfy.sh/phil_alerts
curl -H "Priority: low" -d "Low priority message" ntfy.sh/phil_alerts
curl -H p:4 -d "A high priority message" ntfy.sh/phil_alerts

Tags & emojis 🥳 🎉¶

Supported on:

You can tag messages with emojis and other relevant strings:

    Emojis: If a tag matches an emoji short code, it'll be converted to an emoji and prepended to title or message.
    Other tags: If a tag doesn't match, it will be listed below the notification.

This feature is useful for things like warnings (⚠️, ️🚨, or 🚩), but also to simply tag messages otherwise (e.g. script names, hostnames, etc.). Use the emoji short code list to figure out what tags can be converted to emojis. Here's an excerpt of emojis I've found very useful in alert messages:

You can set tags with the X-Tags header (or any of its aliases: Tags, tag, or ta). Specify multiple tags by separating them with a comma, e.g. tag1,tag2,tag3.

curl -H "X-Tags: warning,mailsrv13,daily-backup" -d "Backup of mailsrv13 failed" ntfy.sh/backups
curl -H "Tags: horse,unicorn" -d "Unicorns are just horses with unique horns" ntfy.sh/backups
curl -H ta:dog -d "Dogs are awesome" ntfy.sh/backups

Markdown formatting¶

Supported on:

You can format messages using Markdown 🤩. That means you can use bold text, italicized text, links, images, and more. Supported Markdown features (web app only for now):

    Emphasis such as bold (**bold**), italics (*italics*)
    Links ([some tool](https://ntfy.sh))
    Images (![some image](https://bing.com/logo.png))
    Code blocks (```code blocks```) and inline code (`inline code`)
    Headings (# headings, ## headings, etc.)
    Lists (- lists, 1. lists, etc.)
    Blockquotes (> blockquotes)
    Horizontal rules (---)

By default, messages sent to ntfy are rendered as plain text. To enable Markdown, set the X-Markdown header (or any of its aliases: Markdown, or md) to true (or 1 or yes), or set the Content-Type header to text/markdown. As of today, Markdown is only supported in the web app. Here's an example of how to enable Markdown formatting:
Command line (curl)
ntfy CLI
HTTP
JavaScript
Go
PowerShell
Python
PHP

curl \
    -d "Look ma, **bold text**, *italics*, ..." \
    -H "Markdown: yes" \
    ntfy.sh/mytopic

## Scheduled delivery

Supported on:

You can delay the delivery of messages and let ntfy send them at a later date. This can be used to send yourself reminders or even to execute commands at a later date (if your subscriber acts on messages).

Usage is pretty straight forward. You can set the delivery time using the X-Delay header (or any of its aliases: Delay, X-At, At, X-In or In), either by specifying a Unix timestamp (e.g. 1639194738), a duration (e.g. 30m, 3h, 2 days), or a natural language time string (e.g. 10am, 8:30pm, tomorrow, 3pm, Tuesday, 7am, and more).

As of today, the minimum delay you can set is 10 seconds and the maximum delay is 3 days. This can currently not be configured otherwise (let me know if you'd like to change these limits).

For the purposes of message caching, scheduled messages are kept in the cache until 12 hours after they were delivered (or whatever the server-side cache duration is set to). For instance, if a message is scheduled to be delivered in 3 days, it'll remain in the cache for 3 days and 12 hours. Also note that naturally, turning off server-side caching is not possible in combination with this feature. 


curl -H "At: tomorrow, 10am" -d "Good morning" ntfy.sh/hello
curl -H "In: 30min" -d "It's 30 minutes later now" ntfy.sh/reminder
curl -H "Delay: 1639194738" -d "Unix timestamps are awesome" ntfy.sh/itsaunixsystem

