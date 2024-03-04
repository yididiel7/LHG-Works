# Installing Rocky Linux 9

[Installing Rocky Linux 9](https://docs.rockylinux.org/guides/installation/)

Notes: Installation Process.
┌[srhills☮minipcpn62]-(~)
└> Downloads

┌[srhills☮minipcpn62]-(~/Downloads)
└> wget https://download.rockylinux.org/pub/rocky/9.1/isos/x86_64/Rocky-9.1-x86_64-minimal.iso

--2023-05-11 10:00:34--  https://download.rockylinux.org/pub/rocky/9.1/isos/x86_64/Rocky-9.1-x86_64-minimal.iso
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving download.rockylinux.org (download.rockylinux.org)... 2a04:4e42:54::644, 199.232.82.132
Connecting to download.rockylinux.org (download.rockylinux.org)|2a04:4e42:54::644|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1592590336 (1.5G) [application/octet-stream]
Saving to: ‘Rocky-9.1-x86_64-minimal.iso’

Rocky-9.1-x86_64-minimal.iso                    100%[=======================================================================================================>]   1.48G  2.65MB/s    in 8m 28s

2023-05-11 10:09:03 (2.99 MB/s) - ‘Rocky-9.1-x86_64-minimal.iso’ saved [1592590336/1592590336]

┌[srhills☮minipcpn62]-(~/Downloads)
└> wget https://download.rockylinux.org/pub/rocky/9.1/isos/x86_64/CHECKSUM
--2023-05-11 10:11:13--  https://download.rockylinux.org/pub/rocky/9.1/isos/x86_64/CHECKSUM
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving download.rockylinux.org (download.rockylinux.org)... 2a04:4e42:54::644, 199.232.82.132
Connecting to download.rockylinux.org (download.rockylinux.org)|2a04:4e42:54::644|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1214 (1.2K) [application/octet-stream]
Saving to: ‘CHECKSUM’

CHECKSUM                                        100%[=======================================================================================================>]   1.19K  --.-KB/s    in 0s

2023-05-11 10:11:14 (38.8 MB/s) - ‘CHECKSUM’ saved [1214/1214]


┌[srhills☮minipcpn62]-(~/Downloads)
└> sha256sum -c CHECKSUM --ignore-missing
Rocky-9.1-x86_64-minimal.iso: OK

┌[srhills☮minipcpn62]-(~/Downloads)
└> logo-ls
⠀Arch Linux Handbook.pdf                             ⠀garuda-lxqt-kwin-linux-zen-230501.iso                  ⠀Printing Command-Line and Options.pdf
⠀arcolinuxl-v23.05.04-x86_64.iso                     ⠀garuda-qtile-linux-zen-230501.iso                      [⠀Rocky-9.1-x86_64-minimal.iso]
⠀blackarch-guide-en.pdf                              ⠀garuda-sway-linux-zen-230501.iso                       ⠀Sr. Tyrone Hills.png
⠀By Way of Deception.pdf                             ⠀garuda-wayfire-linux-zen-230501.iso                    ⠀Sr. Yididiel Hills.png
⠀cheat_sheet_i3windowmanager_v2.pdf                  ⠀HTML5_and_CSS3.pdf                                     ⠀systemd-commands-red-hat-developer.pdf
⠀CHECKSUM                                            ⠀Key-Management-For-Dummies.pdf                         ⠀toaz.info-configuring-dns-on-linuxpdf-pr_202154f5a7a17d621aa73b50461a1f9b.pdf
⠀conky_themes-master/                                ⠀Learn_Linux_in5_Days.pdf                               ⠀vdocuments.mx_arch-linux-handbook-a-simple-lightweight-linux-handbook.pdf
⠀conky_themes-master.zip                             ⠀Linux The Textbook.pdf                                 ⠀ventoy-1.0.91/
⠀CopiesRightsCopyrightsPKThinks2013.pdf              ⠀Linux-commands-cheat-sheet-2023-Red-Hat-Developer.pdf  ⠀ventoy-1.0.91-linux.tar.gz*
⠀Copy of US embassy cable - 04TELAVIV1389.html.docx  ⠀linux-commands-cheat-sheet-A4.pdf                      ⠀w_itpb88.pdf
⠀dangalang_i3-commands.pdf                           ⠀linux-commands-handbook.pdf                            ⠀w_makc170/
⠀devicons-master.zip                                 ⠀linuxfun.pdf                                           ⠀w_makc170.zip
⠀document.pdf                                        ⠀Machine_Learning_Security_Principles.pdf               ⠀w_pacb177.pdf
⠀garuda-dr460nized-linux-zen-230501.iso              ⠀Podman-basics-cheat-sheet-Red-Hat-Developer.pdf        ⠀w_webd14.pdf