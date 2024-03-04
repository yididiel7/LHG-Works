# Home Network IP Addreses

` $ nmap -sP 192.168.100.101/24 `

` PAGER='less "+/NMAP SCRIPTING ENGINE"' man nmap `

Starting Nmap 7.92 ( https://nmap.org ) at 2022-10-06 20:43 IDT
Nmap scan report for 192.168.100.1
Host is up (0.0035s latency).
Nmap scan report for 192.168.100.101
Host is up (0.00017s latency).
Nmap scan report for 192.168.100.107
Host is up (0.040s latency).
Nmap done: 256 IP addresses (3 hosts up) scanned in 7.11 seconds

While Nmap man pages are well-written and provide many examples, there are specific things you won't find in the man pages. For example, what if we wanted to store IP addresses from the above output to a file? This is something specific and does not belong in the man pages of Nmap. We have to parse the output ourselves and extract IP addresses only.

For example:

# nmap -sn 192.168.0.0/24 | awk '/Nmap scan/{gsub(/[()]/,"",$NF); print $NF > "nmap_scanned_ips"}'
Nmap offers many other options to save the scan output to different formats.

For example:

-oN/-oX/-oS/-oG <file>: Output scan in normal, XML, s|<rIpt kIddi3,  and Grepable format, respectively, to the given filename.

So running:

# nmap -sn 192.168.0.0/24 -oG nmap_output
produces the following output:

# cat nmap_output

# Previous local scaned Network: Home
===================================
Nmap scan report for 192.168.100.1
Host is up (0.0046s latency).

Nmap scan report for 192.168.100.100
Host is up (0.086s latency).

Nmap scan report for 192.168.100.101
Host is up (0.00066s latency).

Nmap scan report for 192.168.100.102
Host is up (0.0018s latency).

Nmap scan report for 192.168.100.105

Systemctl enable SSHD
Enable the ssh service by typing: # sudo systemctl enable ssh. Start the ssh service by typing: # sudo systemctl start ssh. Test it by login into the system using:# ssh userName@Your-server-name-IP
