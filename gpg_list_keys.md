# GPG LIST KEYS
# Mon 29 Jan 2024 13:12:46
# Generate passwords with pwgen -sy
# gpg passphrase: P$T>E6}^57cBAty.
# Master: MIUs4all%*]SFT^z


## Step 1: Install GPG

GPG is pre-installed on most Linux distributions, though you can run the following commands to install it.

### Arch Linux:

```
$ sudo pacman -S gpg
```

*   Debian/Ubuntu: sudo apt install gpg
*   Fedora/CentOS/RHEL/Rocky Linux: sudo dnf install gpg
*   OpenSUSE: sudo zypper install gpg



## Step 2: Check Your GPG Version

Let’s check the GPG version on the system and some interesting tidbits. Run the following command.

```
$ gpg --version
```

## Step 3: Create Your Public/Private Key Pair and Revocation Certificate

Run the following command to generate your key pair. GPG defaults to RSA keys. We use the --expert mode because it allows us to create more secure keys 
(ed25519).

```
$ gpg --expert --full-gen-key
```

*Hint: If you generate GPG key on the console or in a pure command-line environment, you should run this command instead: gpg --expert --pinentry-mode=loopback --full-gen-key.

*It asks you what kind of key you want. there’re 14 options. Choose the 9th option, so it will create an ECC (Elliptic curve cryptography) public/private keypair and an ECC signing key.

This tutorial series will teach you how to use GPG (Gnu Privacy Guard) in the Linux terminal, so you will be able to send encrypted email messages and digitally sign documents.
What is GPG?

GPG (GNU privacy guard) is an open-source implementation of the OpenPGP protocol. It’s a free alternative to the PGP program. Then what is PGP? PGP (Pretty Good Privacy) is an encryption program developed in 1991 by Phil Zimmermann.

PGP and GPG are commonly used for two things.
CYBER GEEK
    Encryption: encrypt emails and files like a profetional cyber geek every day, so bad actors can’t read your encrypted emails and files.
    Signing: create digital signatures for signing documents. You can also use it to digitally sign all your outgoing emails, so the recipient can know the email hasn’t been tampered with. The software repository of your Linux distribution is also signed by a PGP key, so you can be sure that you are not downloading malware when running commmand sudo apt update or sudo dnf update.

PGP and GPG are sometimes interchangeable. You can say you have a PGP key or a GPG key.





 $ gpg --list-keys

[keyboxd]
---------
pub   dsa1024 2002-02-06 [SC]
      325F650C4C2B6AD58807327A3602B07F55D0C732
uid           [ unknown] Sergey Poznyakoff <gray@gnu.org>
uid           [ unknown] Sergey Poznyakoff <gray@gnu.org.ua>
uid           [ unknown] Sergey Poznyakoff (Gray) <gray@mirddin.farlep.net>
sub   elg1024 2002-02-06 [ER]

pub   rsa4096 2024-01-26 [SC] [expires: 2025-01-25]
      32E2C41699BDC2D612242941F1CBCC6D9D24BEB6
uid           [ultimate] Tyrone Hills <mobw4u@gmail.com>
sub   rsa4096 2024-01-26 [E] [expires: 2025-01-25]

**You can always get the key printed to your terminal by typing:

$ gpg -K

**Notice: that our key has an expiration date, which you can change by:

$ gpg --edit-key and the key here

Then using the *expire command*

gpg> expire --> make your changes and type *save* when you're done.

**Now we can run our pass init command with our key:

$ pass init and KEY

**This will initialize the password-store
**The next command to run is:

$ pass git init

**This will turn our password-store into a git repository
**Now we can create a Name for our password by giving it first a name!

## Example:

$ pass insert github

**create a brand new password:

$ pass generate miuswit

**Pass will create a directory in our store and Generate the file based password
and will contain an encrypted file named personal

$ pass generate miuswit/personal

**You can also nest directories such as:

$ pass generate miuswit/personal/account

=============================================================================


it's no secret that humans are incredibly bad at generating passwords
in fact we're so bad at it we invented software to help us manage them
fortunately randomly generating passwords and storing them in a password
manager is actually a very good thing but with so many options out there which
ones should you choose you could use one provided by your browser such as Firefox or Chrome or you could use one from a dedicated service such as LastPass
Dashlane or bit Warden now some of these are pretty good but they usually involve a fee and there's always the risk that they may one day get hacked for me I like to keep it simple which according to the acronym makes me stupid that may be the case but I just prefer my password Management Solutions to have
not been hacked therefore I use password store also known as pass and for me well it's pretty much perfect especially as I like to live in the terminal
however pass isn't for everyone it does require some technical understanding and
the ability to work with command line tools if that sounds like you however
then pass may be perfect to get started you'll need to install
password store on your system you can do this on Mac OS using brew and
on Linux whatever package manager your distro uses I'm using Arch by the way so
I'll install using Pacman with pass installed the next thing we
need to do is a little bit of cryptography don't worry this is pretty
easy password store uses gpg under the hood to encrypt passwords therefore we need to generate a keypair for use with it this gives us control over our own
password data but it does mean you have to be responsible for this key so make
sure you have it backed up somewhere safe and ideally remote you can use an existing key pair if you already have one generated if not you can run the gpg Gen key command to generate a new one after running that command you'll be prompted for some identity information you can either give your real identity or mix something up after that you will then be prompted to enter in a password this is the master password for the key and you want to make sure that this is something memorable once that's done gpg will list out a confirmation including the ID of the key you just generated make sure to keep a note of this because
we'll need it in a minute you can always get this back by typing in gpg with the uppercase K Flag one thing you may have noticed is that our key has an expiration date don't worry we can always change this at a later point but if you are worried you can change it by going to the edit key menu using gpg edit key then calling the expire command on the key and setting it to never expire which is option 0.

then type save when you're done now we can run the pass init command with our gpg key ID that we copied from before to initialize a new password store once that's done the next command to run is pass get init this will go ahead and turn our password store into a git repository which if you know git gives us a lot of features so now we have our password repo initialized let's go ahead and add a password we can do this by using the pass insert command and giving our
password a name in this example we're adding a new password called GitHub after pressing enter a prompt will appear and we can enter our passwords Value Pass will make us enter it again to make sure it's correct on the other hand if we just want to generate a brand new password we can do so using the pass generate command which will generate a really secure password and insert it for us as you can see it's pretty easy to both insert and generate passwords using the CLI however I actually don't like the way we've organized these passwords to me there's a better way to do it under the hood password store is file based that means we can organize our passwords as we would in a file system by entering the following command of pass generate GitHub personal pass will create a directory in our store called GitHub which will then contain a file of our encrypted password called personal this allows us to effectively name space
passwords by the GitHub directory which is useful if say we have another account
that we use for work you can also Nest directories as well just like you would with any other file system organizing this way works really nicely when we want to use the find command where we can use it to search for all passwords given a search string for example I can search for all of my GitHub passwords using pass find oh probably also worth mentioning if you just type in pass it'll show you all of the passwords you currently have in your store another really nice feature is that pass has order completion for bash Z shell and fish you may need to set this up in your dot files but for me it worked out of the box
if you're observant you may have noticed that I'm not using my email address as
the secret name and that's intentional
if you remember pass uses the file
system under the hood which means the
password name is used as the file name
because the file name is viewable and
we'll be storing this in a GitHub repo
if we were to use the email as the file
name then this would leak credentials
which is never good from a security
perspective but what if we want to store
our email with our password pass allows
you to store metadata by adding it as
additional lines in the file
we can type in pass edit GitHub personal
and a text editor will open up where we
can make changes both to our password
but also to add any metadata to add
metadata we just add it as a new line
underneath the password
this allows us to store additional
information such as the email address
associated with that password and it'll
be encrypted as well
now I know what you're thinking what if
you can't remember what file name you
used for each password say you were in a
rush and created two files personal and
personal two
look I get it it happens I'm no stranger
to making poor decisions either
fortunately password store has you
covered you can just use the pass grep
command to search for the password you
want this allows you to use grept
queries across your encrypted file data
which is pretty powerful
for example if you're not even sure what
the email is that you're looking for
well you can just use grep for the
metadata field as well provided you've
attempted to organize somewhat
this is actually a good segue into how
to get passwords out of password store
well we can do this using the pass show
command which will print the entire file
to STD out
a better approach however is to use the
hyphen C flag which will copy the first
line straight into our clipboard and
won't display anything which is
obviously more secure especially if you
have somebody watching over your
shoulder
okay so what about if you want to remove
passwords well remember the top level
passwords we created earlier let's go
ahead and delete them we can do so using
the pass RM command which will remove it
from our store
ah shoot I removed the wrong one well
that's okay remember our password store
is backed by a git repository so we
never truly lose that information
provided we don't do anything stupid
let's revert that change I just made we
can use git commands for our password
store by just prefixing the command for
the past keyword so if we want to check
the commit history of our store we can
do so by typing pass git log the commit
we want to revert is our current head so
let's use the git revert command
okay that should be all we need now if
we type in pass we should see our
password has returned nice whilst we're
playing around with Git we may as well
set up a remote repo which provides a
couple of benefits
the first is that it serves as a backup
for our password store and the second is
it allows us to easily download it onto
other devices okay let's add a remote to
our pass repo so we can push it up and
keep it safe
this is done using the same git command
of git remote add origin once that's
done let's push it up using pass git
push origin Main
finally let's round this video off by
loading our passwords onto another
machine okay so now I'm on my MacBook
let's go and clone our password store
okay with that done let's check if our
password store works on this machine
we'll do so by using pass show GitHub
personal
ah right this machine doesn't have the
private key in order to decrypt the
passwords let's go ahead and fix that
heading back on over to our Linux
machine we need to export both the
public and private parts of our key we
can first export the public Key by
typing in the following export command
this command outputs to a file called
public.gpg in an armored format which is
basically base64. notice that we're
specifying our key by its Associated
email rather than the ID you can use
this email instead of the ID for
referencing which key you want to choose
exporting the private key is pretty much
the same except for we specify a
different file name and we use the
export secret key command instead we'll
also need to enter our private Keys
password here as well with that done we
can head back over to our other machine
now that I'm on my Mac I can transfer
the keys over using SSH via SCP once
that's completed we'll first add in the
private key using the gpg import command
pointing it at our private key file this
will prompt us to add in our password
for the private key file which is the
same as the master password we said
earlier after that we can then import
our public Key by using the same gpg
import command now we should be able to
run our pass show command and
successfully see our passwords value
one last thing you'll need to up the
truss level of the public key in order
to encrypt new passwords on this machine
to do that you just need to use the gpg
edit key command on our key and call the
trust function inside we'll then assign
the maximum value of trust to this key
which is level 5.
that covers the basic usage of pass but
I mentioned before I'd show some ways
how I integrated into my workflow when
dealing with passwords more securely
the first approach is for setting
environment variables which can easily
be done using the export command
this prevents accidentally pasting the
secret key into your terminal session
which is a pretty bad thing to do as it
can stay in your show history file for a
long time if you do it incorrectly
the second way I use pass is to secure
any CLI commands that require an API
token by creating an alias you can set
any access credentials as part of that
command which allows you to use the CLI
tools that require authentication
automatically which is much more secure
than keeping them stored in a file
as well as being useful in the terminal
past is also accessible from outside of
it this is due in part to the large and
active community that password store has
because of this we have plugins for
browsers such as Firefox and Chrome
graphical user interfaces for all major
operating systems apps for mobile
devices such as Android and iOS and
additional plugins that bring even more
functionality all of this makes pass a
viable password management solution
however I believe the biggest hurdle is
managing your own encryption Keys which
is probably too much responsibility for
most people
if you're like me however and really
value self-custody and you're a bit of a
goblin for the terminal then password
store may just be perfect

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
