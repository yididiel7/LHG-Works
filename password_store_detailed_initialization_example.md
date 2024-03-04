---
PASS-GPG LIST KEYS
Mon 29 Jan 2024 13:12:46
Generate passwords with pwgen -sy
gpg passphrase: P$T>E6}^57cBAty.
Master: MeUs4all%*]SFT^z
---

# Password-Store Detailed Initial History
# Tue 27 Feb 2024 09:50:45

### History Command

```
$ history|grep gpg
```

### 
gpg-check

###
gpg --list-public-keys


alias gpg="gpg --full-generate-key"
alias gpk="gpg --gen-key"
gpg
gpg --gen-key
gpg --full-generate-key
gpg -c package_list.txt
gpg -r mobw4u@gmail.com -e file
which gpg
which gpg2
gpg -c tycontSF-01-012724.md
mv tycontSF-01-012724.md tycontSF-01-012724.md.gpg ~/W.I.T©™ 
gpg -d tycontSF-01-012724.md
sudo rm -rf tycontSF-01-012724.md tycontSF-01-012724.md.gpg
gpg --passwd mobw4u@gmail.com
gpg --export --armor mobw4u@gmail.com
gpg --export --armor --output srhillsexample.gpg.pub mobw4u@gmail.com
cat srhillsexample.gpg.pub
ps -A | grep gpg-agent
touch gpg-agent.conf
nano gpg-agent.conf
nano file.gpg
gpg package_list.txt.gpg
gpg --help
gpg file.gpg
gpg -d file.gpg
gpg -d package_list.txt.gpg
gpgtar --version
gpg -c exec_app_09-02-2024.txt
gpg -c will_and_testa-09-02-2024.txt
gpg -d will_and_testa-09-02-2024.txt
shred will_and_testa-09-02-2024.txt.gpg
rm will_and_testa-09-02-2024.txt.gpg
rm exec_app_09-02-2024.gpg
shred exec_app_09-02-2024.txt.gpg
rm exec_app_09-02-2024.txt.gpg
gpgconf --kill all
mkdir gpg_encrypt
cd gpg_encrypt/
sudo mv ~/gpg_encrypt/ pgp_encrypt
gpg --list-keys
locate gpg
help gpg
gpg --version
whereis gpg
gpg --verify-files
gpg --verify-files .gpg
sudo pacman -Qi gpgme
sudo pacman -Qi gpg
gpg --card-status
git config --global credential.credentialStore gpg
gpg --list-secret-keys --keyid-format=long\n
gpg --armor --export 32E2C41699BDC2D612242941F1CBCC6D9D24BEB6
gpg -K
















[pass the standard unix password manager](https://www.passwordstore.org/).

Here, we initialize new password store, create a git repository, and then manipulate and sync passwords. Make note of the arguments to the first call of pass git push; consult git-push(1) for more information.

zx2c4@laptop ~ $ pass init Jason@zx2c4.com
mkdir: created directory ‘/home/zx2c4/.password-store’
Password store initialized for Jason@zx2c4.com.

zx2c4@laptop ~ $ pass git init
Initialized empty Git repository in /home/zx2c4/.password-store/.git/
[master (root-commit) 998c8fd] Added current contents of password store.
1 file changed, 1 insertion(+)
create mode 100644 .gpg-id

zx2c4@laptop ~ $ pass git remote add origin kexec.com:pass-store

zx2c4@laptop ~ $ pass generate Amazon/amazonemail@email.com 21
mkdir: created directory ‘/home/zx2c4/.password-store/Amazon’
[master 30fdc1e] Added generated password for Amazon/amazonemail@email.com to store.
1 file changed, 0 insertions(+), 0 deletions(-)
create mode 100644 Amazon/amazonemail@email.com.gpg
The generated password to Amazon/amazonemail@email.com is:
<5m,_BrZY‘antNDxKN<0A

zx2c4@laptop ~ $ pass git push -u --all
Counting objects: 4, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 921 bytes, done.
Total 4 (delta 0), reused 0 (delta 0)
To kexec.com:pass-store
* [new branch] master -> master
Branch master set up to track remote branch master from origin.

zx2c4@laptop ~ $ pass insert Amazon/otheraccount@email.com
Enter password for Amazon/otheraccount@email.com: som3r3a11yb1gp4ssw0rd!!88**
[master b9b6746] Added given password for Amazon/otheraccount@email.com to store.
1 file changed, 0 insertions(+), 0 deletions(-)
create mode 100644 Amazon/otheraccount@email.com.gpg

zx2c4@laptop ~ $ pass rm Amazon/amazonemail@email.com
rm: remove regular file ‘/home/zx2c4/.password-store/Amazon/amazonemail@email.com.gpg’? y
removed ‘/home/zx2c4/.password-store/Amazon/amazonemail@email.com.gpg’
rm ’Amazon/amazonemail@email.com.gpg’
[master 288b379] Removed Amazon/amazonemail@email.com from store.
1 file changed, 0 insertions(+), 0 deletions(-)
delete mode 100644 Amazon/amazonemail@email.com.gpg

zx2c4@laptop ~ $ pass git push
Counting objects: 9, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (7/7), 1.25 KiB, done.
Total 7 (delta 0), reused 0 (delta 0)
To kexec.com:pass-store
FILES

~/.password-store

The default password storage directory.

~/.password-store/.gpg-id

Contains the default gpg key identification used for encryption and decryption. Multiple gpg keys may be specified in this file, one per line. If this file exists in any sub directories, passwords inside those sub directories are encrypted using those keys. This should be set using the init command.

~/.password-store/.extensions

The directory containing extension files.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
