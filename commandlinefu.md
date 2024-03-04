# HOME USE ONLY: Get rid of annoying Polkit password prompts

Although the need to type a password to make certain changes to the system may make perfect sense in a business or educational environment, it makes absolutely zero sense to the home user. So, if you’re at home and would rather get work done than be annoyed by what is essentially Linux’s UAC, then this command is for you.

```
sudo find /usr/share/polkit-1 -iname “*.policy” -exec sed -i “s/\(auth_admin\|auth_admin_keep\)/yes/g” {} \;

```

[COMMANDLINEFU.COM](https://tinyurl.com/2zc6d46n).

**_What's this?_**

commandlinefu.com is the place to record those command-line gems that you return to again and again. That way others can gain from your CLI wisdom and you from theirs too. All commands can be commented on, discussed and voted up or down. 

Print with tabular

head -4 /etc/passwd | tr : , | sed -e 's/^/| /' -e 's/,/,| /g' -e 's/$/,|/' | column -t -s,


Display disk partition sizes

lsblk -o name,size


Show tcp connections sorted by Host / Most connections



netstat -ntu|awk '{print $5}'|cut -d: -f1 -s|sort|uniq -c|sort -nk1 -r


Quickly add a new user to all groups the default user is in

an alternative to this one with only 2 processes https://www.commandlinefu.com/commands/view/25844/quickly-add-a-new-user-to-all-groups-the-default-user-is-in

awk -F: '/^.+user1/{print $1}' /etc/group | xargs -n1 sudo adduser user2


Print interface that is up and running

ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'

Clean or clean pacman and pamac cache

sudo pacman -Scc && pamac clean -b
bugmenot · 2022-08-24 19:10:38 343
Sort disk usage from directories

Sort disk usage from directories in the current directory Show Sample Output

du --max-depth=1 -h . | sort -h

Track flight information from the command line

See the flight information from the CLI Use as a SH file or function, like: `./flight.sh os 336` Show Sample Output

flight_status() { curl --silent --stderr - "https://mobile.flightview.com/TrackByRoute.aspx?view=detail&al=$1&fn=$2&dpdat=$(date +%Y%m%d)" | html2text | grep -A19 "Status" ; } ; flight_status $1 $2

Check out Gate number for your flight from CLI with Chrome

```
Check out Gate number for your flight from CLI with Chrome, html2texgt and grep. Works on Arch Linux (Garuda) and probably will work on others. Requirements: * google chrome (might work with chromium as well) * installed html2text (on archlinux: sudo pacman -S python-html2text) * installed grep (comes by default with your OS) * the gate number should be visible at the given website (it's not existent too early before the flight and also disappears after the flight departed) Please don't forget to replace the link to appropriate one, matching your flight. You can also wrap this into something like `whlie true; do ...; sleep 60; done' and this will check and tell you the gate number maximum in 1 minute after it appears on Avinor website. Show Sample Output
```

google-chrome-stable --headless --dump-dom --disable-gpu "https://avinor.no/flight/?flightLegId=dy754-osl-trd-20220726&airport=OSL" 2>/dev/null | html2text | grep -A2 Gate


Query cheat.sh from the termianl. A quick access cheat sheet for a range of linux commands!

Show Sample Output

5
curl cheat.sh/<comamnd-to-search>


Change dates/timestamps of all files in the current folder



gci -rec | %{ $_.lastWriteTime = ($_.lastAccessTime = ($_.creationTime = (get-date "2021-05-19T10:14:00"))) }




Display disk partition sizes

It is the same but more faster real 0m0,007s user 0m0,011s sys 0m0,000s with my solution real 0m0,038s user 0m0,044s sys 0m0,000s with your solution :) Show Sample Output


lsblk | grep -v part | awk '{print $1 "\t" $4}'


Display disk partition sizes

Use lsbk (list block) and jq (to manipulate a JSON on the command line) to display partition information: Show Sample Output

2
lsblk --json | jq -c '.blockdevices[]|[.name,.size]'


Find failures with journalctl

Sometimes things break. You can find the most recent errors using a combination of journalctl, along with the classic tools sort and uniq Show Sample Output



journalctl --no-pager --since today --grep 'fail|error|fatal' --output json | jq '._EXE' | sort |	uniq -c | sort --numeric --reverse --key 1

Share a file quickly using a python web server

Raise your hand if you haven't used this at least once to share a directory quickly

cd $mydir && python3 -m http.server 8888

Apply a command on files with different names

The shell {} operator is great for this. Here's an example with three directories enclosed in {}:

mkdir -p -v /home/user/tmp/{dir1,anotherdir,similardir}

Get all lines that start with a dot or period

Read a file or standard input and only outputs lines that start with a dot or period "." Show Sample Output

grep '^\.' file

How to search for files and open all of them in tabbed vim editor.

sudo find / -type f -name config.inc.php -exec vim -p {} + 

