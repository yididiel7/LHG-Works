# Push notifications made easy

ntfy (pronounced notify) is a simple HTTP-based pub-sub notification service. It allows you to send notifications to your phone or desktop via scripts from any computer, and/or using a REST API. It's infinitely flexible, and 100% free software.


	- Username: yididiel7

	- Password: st?A]2LF=$+mg6P

[](https://ntfy.sh/app)

1. [](https://ntfy.sh/Srktav).

2. [](https://ntfy.sh/aJpr6RI3WxeMyInz).

My next Monitor!

[GIGABYTE G34WQC A 34"](https://tinyurl.com/2hdhss56).

 curl \          
  -H "Title: Unauthorized access detected" \
  -H "Priority: urgent" \
  -H "Tags: warning,skull" \
  -d "Remote access to bent-3570r laptop detected. Act right away." \
  ntfy.sh/aJpr6RI3WxeMyInz                
{"id":"Cw2uIndEH4Xu","time":1706355408,"expires":1706398608,"event":"message","topic":"aJpr6RI3WxeMyInz","title":"Unauthorized access detected","message":"Remote access to bent-3570r laptop detected. Act right away.","priority":5,"tags":["warning","skull"]}

Examples: 

curl -d "Backup successful 😀" ntfy.sh/mytopic

curl \
  -H "Click: https://home.nest.com/" \
  -H "Attach: https://nest.com/view/yAxkasd.jpg" \
  -H "Actions: http, Open door, https://api.nest.com/open/yAxkasd, clear=true" \
  -H "Email: phil@example.com" \
  -d "There's someone at the door. 🐶

Please check if it's a good boy or a hooman. 
Doggies have been known to ring the doorbell." \
  ntfy.sh/mydoorbell

Examples: 

Message title

curl -H "X-Title: Dogs are better than cats" -d "Oh my ..." ntfy.shcontroversial
curl -H "Title: Dogs are better than cats" -d "Oh my ..." ntfy.sh/controversial
curl -H "t: Dogs are better than cats" -d "Oh my ..." ntfy.sh/controversial     

You can set the priority with the header X-Priority (or any of its aliases: Priority, prio, or p).

curl -H "X-Priority: 5" -d "An urgent message" ntfy.sh/phil_alerts
curl -H "Priority: low" -d "Low priority message" ntfy.sh/phil_alerts
curl -H p:4 -d "A high priority message" ntfy.sh/phil_alerts

You can set tags with the X-Tags header (or any of its aliases: Tags, tag, or ta). Specify multiple tags by separating them with a comma, e.g. tag1,tag2,tag3.

curl -H "X-Tags: warning,mailsrv13,daily-backup" -d "Backup of mailsrv13 failed" ntfy.sh/backups
curl -H "Tags: horse,unicorn" -d "Unicorns are just horses with unique horns" ntfy.sh/backups
curl -H ta:dog -d "Dogs are awesome" ntfy.sh/backups

## Markdown formatting

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

curl \
    -d "Look ma, **bold text**, *italics*, ..." \
    -H "Markdown: yes" \
    ntfy.sh/mytopic


Scheduled delivery¶

Supported on:

You can delay the delivery of messages and let ntfy send them at a later date. This can be used to send yourself reminders or even to execute commands at a later date (if your subscriber acts on messages).

Usage is pretty straight forward. You can set the delivery time using the X-Delay header (or any of its aliases: Delay, X-At, At, X-In or In), either by specifying a Unix timestamp (e.g. 1639194738), a duration (e.g. 30m, 3h, 2 days), or a natural language time string (e.g. 10am, 8:30pm, tomorrow, 3pm, Tuesday, 7am, and more).

As of today, the minimum delay you can set is 10 seconds and the maximum delay is 3 days. This can currently not be configured otherwise (let me know if you'd like to change these limits).

For the purposes of message caching, scheduled messages are kept in the cache until 12 hours after they were delivered (or whatever the server-side cache duration is set to). For instance, if a message is scheduled to be delivered in 3 days, it'll remain in the cache for 3 days and 12 hours. Also note that naturally, turning off server-side caching is not possible in combination with this feature. 

curl -H "At: tomorrow, 10am" -d "Good morning" ntfy.sh/hello
curl -H "In: 30min" -d "It's 30 minutes later now" ntfy.sh/reminder
curl -H "Delay: 1639194738" -d "Unix timestamps are awesome" ntfy.sh/itsaunixsystem

Here are a few examples (assuming today's date is 12/10/2021, 9am, Eastern Time Zone):
Delay/At/In header	Message will be delivered at	Explanation
30m               	12/10/2021, 9:30am          	30 minutes from now
2 hours           	12/10/2021, 11:30am         	2 hours from now
1 day             	12/11/2021, 9am             	24 hours from now
10am              	12/10/2021, 10am            	Today at 10am (same day, because it's only 9am)
8am               	12/11/2021, 8am             	Tomorrow at 8am (because it's 9am already)
1639152000        	12/10/2021, 11am (EST)      	Today at 11am (EST)

## Webhooks (publish via GET)

Supported on:

In addition to using PUT/POST, you can also send to topics via simple HTTP GET requests. This makes it easy to use a ntfy topic as a webhook, or if your client has limited HTTP support (e.g. like the MacroDroid Android app).

To send messages via HTTP GET, simply call the /publish endpoint (or its aliases /send and /trigger). Without any arguments, this will send the message triggered to the topic. However, you can provide all arguments that are also supported as HTTP headers as URL-encoded arguments. Be sure to check the list of all supported parameters and headers for details.

For instance, assuming your topic is mywebhook, you can simply call /mywebhook/trigger to send a message (aka trigger the webhook):

curl ntfy.sh/mywebhook/trigger

To add a custom message, simply append the message= URL parameter. And of course you can set the message priority, the message title, and tags as well. For a full list of possible parameters, check the list of supported parameters and headers.

Here's an example with a custom message, tags and a priority:

curl "ntfy.sh/mywebhook/publish?message=Webhook+triggered&priority=high&tags=warning,skull"

## Publish as JSON

For some integrations with other tools (e.g. Jellyfin, overseerr), adding custom headers to HTTP requests may be tricky or impossible, so ntfy also allows publishing the entire message as JSON in the request body.

To publish as JSON, simple PUT/POST the JSON object directly to the ntfy root URL. The message format is described below the example.

Info

To publish as JSON, you must PUT/POST to the ntfy root URL, not to the topic URL. Be sure to check that you're POST-ing to https://ntfy.sh/ (correct), and not to https://ntfy.sh/mytopic (incorrect).

Here's an example using most supported parameters. Check the table below for a complete list. The topic parameter is the only required one:

curl ntfy.sh \
  -d '{
    "topic": "mytopic",
    "message": "Disk space is low at 5.1 GB",
    "title": "Low disk space alert",
    "tags": ["warning","cd"],
    "priority": 4,
    "attach": "https://filesrv.lan/space.jpg",
    "filename": "diskspace.jpg",
    "click": "https://homecamera.lan/xasds1h2xsSsa/",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "https://filesrv.lan/admin" }]
  }'


The JSON message format closely mirrors the format of the message you can consume when you subscribe via the API (see JSON message format for details), but is not exactly identical. Here's an overview of all the supported fields:
Field   	Required	Type                          	Example                     	Description
topic   	✔️      	string                        	topic1                      	Target topic name
message 	-       	string                        	Some message                	Message body; set to triggered if empty or not passed
title   	-       	string                        	Some title                  	Message title
tags    	-       	string array                  	["tag1","tag2"]             	List of tags that may or not map to emojis
priority	-       	int (one of: 1, 2, 3, 4, or 5)	4                           	Message priority with 1=min, 3=default and 5=max
actions 	-       	JSON array                    	(see action buttons)        	Custom user action buttons for notifications
click   	-       	URL                           	https://example.com         	Website opened when notification is clicked
attach  	-       	URL                           	https://example.com/file.jpg	URL of an attachment, see attach via URL
markdown	-       	bool                          	true                        	Set to true if the message is Markdown-formatted
icon    	-       	string                        	https://example.com/icon.png	URL to use as notification icon
filename	-       	string                        	file.jpg                    	File name of the attachment
delay   	-       	string                        	30min, 9am                  	Timestamp or duration for delayed delivery
email   	-       	e-mail address                	phil@example.com            	E-mail address for e-mail notifications
call    	-       	phone number or 'yes'         	+1222334444 or yes          	Phone number to use for voice call
Action buttons¶

Supported on:

You can add action buttons to notifications to allow yourself to react to a notification directly. This is incredibly useful and has countless applications.

You can control your home appliances (open/close garage door, change temperature on thermostat, ...), react to common monitoring alerts (clear logs when disk is full, ...), and many other things. The sky is the limit.

As of today, the following actions are supported:

    view: Opens a website or app when the action button is tapped
    broadcast: Sends an Android broadcast intent when the action button is tapped (only supported on Android)
    http: Sends HTTP POST/GET/PUT request when the action button is tapped

Here's an example of what a notification with actions can look like:

## Defining actions

You can define up to three user actions in your notifications, using either of the following methods:

    In the X-Actions header, using a simple comma-separated format
    As a JSON array in the actions key, when publishing as JSON

Using a header¶

To define actions using the X-Actions header (or any of its aliases: Actions, Action), use the following format:
Header format (long)
Header format (short)

action=<action1>, label=<label1>, paramN=... [; action=<action2>, label=<label2>, ...]

Multiple actions are separated by a semicolon (;), and key/value pairs are separated by commas (,). Values may be quoted with double quotes (") or single quotes (') if the value itself contains commas or semicolons.

The action= and label= prefix are optional in all actions, and the url= prefix is optional in the view and http action. The only limitation of this format is that depending on your language/library, UTF-8 characters may not work. If they don't, use the JSON array format instead.

As an example, here's how you can create the above notification using this format. Refer to the view action and http action section for details on the specific actions:

body='{"temperature": 65}'
curl \
    -d "You left the house. Turn down the A/C?" \
    -H "Actions: view, Open portal, https://home.nest.com/, clear=true; \
                 http, Turn down, https://api.nest.com/, body='$body'" \
    ntfy.sh/myhome


Send Android broadcast¶

Supported on:

The broadcast action sends an Android broadcast intent when the action button is tapped. This allows integration into automation apps such as MacroDroid or Tasker, which basically means you can do everything your phone is capable of. Examples include taking pictures, launching/killing apps, change device settings, write/read files, etc.

By default, the intent action io.heckel.ntfy.USER_ACTION is broadcast, though this can be changed with the intent parameter (see below). To send extras, use the extras parameter. Currently, only string extras are supported.

If you have no idea what this is, check out the automation apps section, which shows how to integrate Tasker and MacroDroid with screenshots. The action button integration is identical, except that you have to use the intent action io.heckel.ntfy.USER_ACTION instead.

curl \
    -d "Your wife requested you send a picture of yourself." \
    -H "Actions: broadcast, Take picture, extras.cmd=pic, extras.camera=front" \
ntfy.sh/wifey


[Publishing ntfy](https://docs.ntfy.sh/publish/#__tabbed_6_1).

Copyright 2024 by Tyrone Hills All rights reserved.
