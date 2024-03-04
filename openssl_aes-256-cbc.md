## How to Encrypt a file in the specific directory:
# Masster: MIUs4lla%*]SFT^z
# MIUS = Mind Intellect Understanding Sense

$ ~/W.I.T©™

openssl aes-256-cbc -a -salt -pbkdf2 -in msg.txt -out Msg.txt

## To Decrypt a file use:

openssl aes-256-cbc -d -a -pbkdf2 -in Msg.txt -out test.txt

<<============================================>>

# So now I use the following for encrypting:

openssl aes-256-cbc -salt -pbkdf2 -in name -out name.aes

and the following for decrypting:

openssl aes-256-cbc -d -salt -pbkdf2 -in name.aes -out name

Here is an example for symmetric encryption with gpg.
In short:

gpg --symmetric --cipher-algo AES256 --output file.gpg file.txt

and

gpg --decrypt --output file.txt file.gpg


1009  27/01/24 21:53:55  openssl aes-256-cbc -a -salt -in msg.txt -out secrets.txt
 1012  27/01/24 22:01:29  openssl aes-256-cbc -d -a -in secrets.txt -out new.msg
 1015  27/01/24 22:02:42  openssl aes-256-cbc -a -salt -pbkdf2 -in msg.txt -out Msg.txt
 1018  27/01/24 22:10:02  openssl aes-256-cbc -d -salt -pbkdf2 -in Msg.txt -out New.txt
 1020  27/01/24 22:10:43  cat New.txt
 1021  27/01/24 22:11:04  cat new.msg
 1022  27/01/24 22:11:27  cat Msg.txt
 1023  27/01/24 22:12:54  openssl aes-256-cbc -d -a -pbkdf2 -in Msg.txt -out test.txt
 1027  27/01/24 22:17:56  rm msg.txt Msg.txt new.msg New.txt 
 1029  27/01/24 22:19:04  vi test.txt
 1030  27/01/24 22:20:35  openssl aes-256-cbc -a -salt -pbkdf2 -in test.txt -out sod.txt
 1033  27/01/24 22:24:58  openssl aes-256-cbc -d -a -pbkdf2 -in sod.txt -out todos.txt
 1035  27/01/24 22:25:19  cat todos.txt
 1037  27/01/24 22:26:01  cat sod.txt
 1038  27/01/24 22:26:24  cat test.txt
 1039  27/01/24 22:29:08  ll
 1040  27/01/24 22:29:29  cat secrets.txt
 1041  27/01/24 22:30:30  cat MIUS_definition.md
 1042  27/01/24 23:00:45  MIUs4lla%*]SFT^z
