# Openssh Client Install

$ sudo service ssh status

## If you need to install the ssh server

$ sudo apt install openssh-server

## To check the runing status of sshd

$ sudo systemctl status sshd

## Enabling ssh

sudo systemctl enable ssh

## To Start the ssh service

$ sudo systemctl start ssh

## To Restart the ssh service
sudo systemctl restart sshd
