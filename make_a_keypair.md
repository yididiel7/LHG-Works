# Make a keypair

Make your keypair

We will use the command line in a terminal to create a keypair using the GnuPG program.

Whether on GNU/Linux, macOS or Windows, you can launch your terminal ("Terminal" in macOS, "PowerShell" in Windows) from the Applications menu (some GNU/Linux systems respond to the Ctrl + Alt + T shortcut).

# Enter gpg --full-generate-key to start the process.

# To answer what kind of key you would like to create, select the default option: 1 RSA and RSA.

# Enter the following keysize: 4096 for a strong key.

# Choose the expiration date; we suggest 2y (2 years).

Follow the prompts to continue setting up with your personal details.

Depending on your version of GPG, you may need to use --gen-key instead of --full-generate-key﻿.

You can set further options by running gpg --edit-key [your@email] in a terminal window.
Set your passphrase

On the screen titled "Passphrase," pick a strong passphrase! You can do it manually, or you can use the Diceware method. Doing it manually is faster but not as secure. Using Diceware takes longer and requires dice, but creates a passphrase that is much harder for attackers to figure out. To use it, read the section "Make a secure passphrase with Diceware" in this article by Micah Lee.

If you'd like to pick a passphrase manually, come up with something you can remember which is at least twelve characters long, and includes at least one lower case and upper case letter and at least one number or punctuation symbol. Never pick a passphrase you've used elsewhere. Don't use any recognizable patterns, such as birthdays, telephone numbers, pets' names, song lyrics, quotes from books, and so on.

Some important steps following creation
Upload your key to a keyserver

We will upload your key to a keyserver, so if someone wants to send you an encrypted message, they can download your public key from the Internet. There are multiple keyservers that you can select from the menu when you upload, but they are mostly all copies of each other. Any server will work, but it's good to remember which one you uploaded your key to originally. Also keep in mind, sometimes takes a few hours for them to match each other when a new key is uploaded.

# Copy your keyID: gpg --list-key [your@email] will list your public ("pub") key information, including your keyID, which is a unique list of numbers and letters. Copy this keyID, so you can use it in the following command.

# Upload your key to a server: gpg --send-key [keyID]
Export your key to a file

Use the following command to export your secret key so you can import it into your email client at the next step. To avoid getting your key compromised, store this in a safe place, and make sure that if it is transferred, it is done so in a trusted way. Exporting your keys can be done with the following commands:

$ gpg --export-secret-keys -a [keyID] > my_secret_key.asc
$ gpg --export -a [keyID] > my_public_key.asc
Generate a revocation certificate

Just in case you lose your key, or it gets compromised, you want to generate a certificate and choose to save it in a safe place on your computer for now (please refer to Step 6.C for how to best store your revocation cerficate safely). This step is essential for your email self-defense, as you'll learn more about in Section 5.

# Copy your keyID: gpg --list-key [your@email] will list your public ("pub") key information, including your keyID, which is a unique list of numbers and letters. Copy this keyID, so you can use it in the following command.

# Generate a revocation certificate: gpg --gen-revoke --output revoke.asc [keyID]

# It will prompt you to give a reason for revocation, we recommend to use 1 = key has been compromised.

# You don't have to fill in a reason, but you can; then press "Enter" for an empty line, and confirm your selection.


GnuPG, OpenPGP, what?

In general, the terms GnuPG, GPG, GNU Privacy Guard, OpenPGP and PGP are used interchangeably. Technically, OpenPGP (Pretty Good Privacy) is the encryption standard, and GNU Privacy Guard (often shortened to GPG or GnuPG) is the program that implements the standard. Most email programs provide an interface for GnuPG. There is also a newer version of GnuPG, called GnuPG2.
#2 Make your keys

A robot with a head shaped like a key holding a private and a public key

To use the GnuPG system, you'll need a public key and a private key (known together as a keypair). Each is a long string of randomly generated numbers and letters that are unique to you. Your public and private keys are linked together by a special mathematical function.

Your public key isn't like a physical key, because it's stored in the open in an online directory called a keyserver. People download it and use it, along with GnuPG, to encrypt emails they send to you. You can think of the keyserver as a phonebook; people who want to send you encrypted email can look up your public key.

Your private key is more like a physical key, because you keep it to yourself (on your computer). You use GnuPG and your private key together to descramble encrypted emails other people send to you. You should never share your private key with anyone, under any circumstances.

In addition to encryption and decryption, you can also use these keys to sign messages and check the authenticity of other people's signatures. We'll discuss this more in the next section.

[Get your friends or community interested](http://tinyurl.com/287h4ggc).

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
