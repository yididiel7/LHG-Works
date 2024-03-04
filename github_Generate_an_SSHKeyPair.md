# Generate an SSH Key Pair

To access your Compute instances using SSH, generate an SSH key pair, associate the public key with your instances, and use the private key to log in to the instances using SSH.

[Adding a new SSH key to your GitHub account](http://tinyurl.com/24kzzydk).

Caution:

Keep your SSH keys secure. Lay down policies to ensure that the keys aren’t lost or compromised when employees leave the organization or move to other departments. If you lose your private key, then you can’t access your instances. For business continuity, ensure that the SSH keys of at least two IT system administrators are added to your instances. 

## Generate an SSH Key Pair on UNIX and UNIX-Like Systems

Use the following procedure to generate an SSH key pair on UNIX and UNIX-like systems:

Run the ssh-keygen command.

**You can use the -t option to specify the type of key to create.

For example, to create an RSA key, run:

ssh-keygen -t rsa

You can use the -b option to specify the length (bit size) of the key, as shown in the following example:

ssh-keygen -b 2048 -t rsa

The command prompts you to enter the path to the file in which you want to save the key.

A default path and file name are suggested in parentheses. For example: /home/user_name/.ssh/id_rsa. To accept the default path and file name, press Enter. Otherwise, enter the required path and file name, and then press Enter.

The command prompts you to enter a passphrase.

The passphrase is not mandatory if you want to log in to an instance created using an Oracle-provided image. However, it is recommended that you specify a passphrase to protect your private key against unauthorized use.

**Note:

With some images provided on Oracle Marketplace, the use of a passphrase might be mandatory. When prompted, enter the passphrase again to confirm it.

The command generates an SSH key pair consisting of a public key and a private key, and saves them in the specified path. The file name of the public key is created automatically by appending .pub to the name of the private key file. For example, if the file name of the SSH private key is id_rsa, the file name of the public key would be id_rsa.pub.

Make a note of the path and file names of the private and public keys. When you create an instance, you must specify the SSH public key value. When you log in to an instance, you must provide the path to the corresponding SSH private key and you must enter the passphrase when prompted.
