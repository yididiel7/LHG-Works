# Install Tails from Debian or Ubuntu

## Using the command line and GnuPG

[1 USB stick](https://tinyurl.com/2766u24r).

## Verify the Tails signing key

This verification technique uses the OpenPGP Web of Trust and the certification made by official Debian developers on the Tails signing key.

    Import the Tails signing key in your GnuPG keyring:

    wget https://tails.boum.org/tails-signing.key
    gpg --import < tails-signing.key

    Install the Debian keyring. It contains the OpenPGP keys of all Debian developers:

    sudo apt update && sudo apt install debian-keyring

    Import the OpenPGP key of Chris Lamb, a former Debian Project Leader, from the Debian keyring into your keyring:

    gpg --keyring=/usr/share/keyrings/debian-keyring.gpg --export chris@chris-lamb.co.uk | gpg --import

    Verify the certifications made on the Tails signing key:

    gpg --keyid-format 0xlong --check-sigs A490D0F4D311A4153E2BB7CADBB802B258ACD84F

    In the output of this command, look for the following line:

    sig!         0x1E953E27D4311E58 2020-03-19  Chris Lamb <chris@chris-lamb.co.uk>

    Here, sig!, with an exclamation mark, means that Chris Lamb verified and certified the Tails signing key with his key.

    It is also possible to verify the certifications made by other people. Their name and email address appear in the list of certification if you have their key in your keyring.

Certify the Tails signing key with your own key:

gpg --lsign-key A490D0F4D311A4153E2BB7CADBB802B258ACD84F

    Download the USB image:

    wget --continue https://download.tails.net/tails/stable/tails-amd64-5.12/tails-amd64-5.12.img

Verify your download

In this step, you will verify your download using the Tails signing key.

    Download the signature of the USB image:

    wget https://tails.boum.org/torrents/files/tails-amd64-5.12.img.sig

    Verify that the USB image is signed by the Tails signing key:

    TZ=UTC gpg --no-options --keyid-format long --verify tails-amd64-5.12.img.sig tails-amd64-5.12.img

    The output of this command should be the following:

    gpg: Signature made Tue 18 Apr 2023 05:41:35 PM UTC
    gpg:                using EDDSA key CD4D4351AFA6933F574A9AFB90B2B4BD7AED235F
    gpg: Good signature from "Tails developers <tails@boum.org>" [full]
    gpg:                 aka "Tails developers (offline long-term identity key) <tails@boum.org>" [full]

    Verify in this output that:
        The date of the signature is the same.
        The signature is marked as Good signature since you certified the Tails signing key with your own key.

Install Tails using dd

    Make sure that the USB stick on which you want to install Tails is unplugged.

    Execute the following command:

    ls -1 /dev/sd?

    It returns a list of the storage devices on the system. For example:

Plug in the USB stick on which you want to install Tails.

All the data on this USB stick will be lost.

Execute again the same command:

ls -1 /dev/sd?

Your USB stick appears as a new device in the list.

Take note of the device name of your USB stick.

In this example, the device name of the USB stick is /dev/sdb. Yours might be different.

If you are unsure about the device name, you should stop proceeding or you risk overwriting any hard disk on the system.

Execute the following commands to copy the USB image that you downloaded earlier to the USB stick.

Replace:

    tails.img with the path to the USB image

    device with the device name found in step 5

dd if=tails.img of=device bs=16M oflag=direct status=progress

You should get something like this:

If no error message is returned, Tails is being copied on the USB stick. The copy takes some time, generally a few minutes.

If you get a Permission denied error, try adding sudo at the beginning of the command:

sudo dd if=tails.img of=device bs=16M oflag=direct status=progress

The installation is complete after the command prompt reappears.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
