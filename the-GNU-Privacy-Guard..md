# The GNU Privacy Guard

1. [The GNU Privacy Guard](https://gnupg.org/).

2. [VIDEO: GPG/PGP Free Data Encryption with Python](https://youtu.be/9NiPwvLCDpM?si=dCS9SPRNl2alg650)
### Encryption Steps

* Generate keys
* Encrypt with our public key
* Decrypt with private key
* Import keys from other users
* Sign a document
* Verify signature

### Install these Via Pacman Package Manager

```
$ sudo pacman -S python-gnupg
$ sudo pacman -S python-pycryptodome
```
### Create a directory

```
$ mkdir -p gpg_encrypt
sudo mv ~/gpg_encrypt/ pgp_encrypt
cd pgp_encrypt
```

### Now create a file named:

```
❯ ~/pgp_encrypt $ vim pgp_genkey.py
```

### Generate the key

```
❯ ~/pgp_encrypt $ python3 pgp_genkey.py

Result: 32E2C41699BDC2D612242941F1CBCC6D9D24BEB6
```


### List of Commands

**```
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
gpg file.gpg
gpg -d file.gpg
gpg -d package_list.txt.gpg
gpgtar --version
gpg -c exec_app_09-02-2024.txt
gpg -c will_and_testa-09-02-2024.txt
shred will_and_testa-09-02-2024.txt.gpg
rm will_and_testa-09-02-2024.txt.gpg
rm exec_app_09-02-2024.gpg
shred exec_app_09-02-2024.txt.gpg
rm exec_app_09-02-2024.txt.gpg
mkdir -p gpg_encrypt
sudo mv ~/gpg_encrypt/ pgp_encrypt
locate gpg
help gpg
whereis gpg
gpg --verify-files
gpg --verify-files .gpg
sudo pacman -Qi gpgme
sudo pacman -Qi gpg
gpg --card-status
git config --global credential.credentialStore gpg
gpg --armor --export 32E2C41699BDC2D612242941F1CBCC6D9D24BEB6
gpg -K
history gpg
history 15 gpg
history gpg | less
gpg-check
man gpg-check-pattern
gpg -l
gpg --help
history|grep gpg | lolcat
gpg --versiongpg
gpg --version
gpg --gen-keygp
ls -l $(which gpg gpg2 gpg1)
ls -l $(which gpg gpg2)
gpg --fingerprint
gpg --list-secret-keys --keyid-format=long\n
ls -l srhillsexample.gpg.pub
gpg -d will_and_testa-09-02-2024.txt.encrypted
gpg -d "mobw4u@gmail.com" will_and_testa-09-02-2024.txt.encrypted
gpg --decrypt will_and_testa-09-02-2024.txt
history|grep gpg 
gpg -d will_and_testa-09-02-2024.txt
gpgconf --kill all
cd gpg_encrypt/
gpg --list-keys
```**

Copyright (C) 2024 by Tyrone Hills All rights reserved
