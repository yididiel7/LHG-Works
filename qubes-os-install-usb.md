# Qubes-Install-USB.md

## Linux ISO to USB Installation

[What is Qubes OS?](https://www.qubes-os.org/intro/)

Qubes OS is a free and open-source, security-oriented operating system for single-user desktop computing. 
Qubes OS leverages Xen-based virtualization to allow for the creation and management of isolated compartments called qubes.

On Linux, if you choose to use a USB drive, copy the ISO onto the USB device, e.g. using dd:

$ sudo dd if=Qubes-RX-x86_64.iso of=/dev/sdY status=progress bs=1048576 conv=fsync

Change Qubes-RX-x86_64.iso to the filename of the version you’re installing, and change 
/dev/sdY to the correct target device e.g., /dev/sdc). Make sure to write to the entire device 
(e.g., /dev/sdc) rather than just a single partition (e.g., /dev/sdc1).

## Getting to the boot screen

“Booting” is the process of starting your computer. When a computer boots up, 
it first runs low-level software before the main operating system. Depending on the computer, 
this low-level software is may be called the “BIOS” or “UEFI”.

Since you’re installing Qubes OS, you’ll need to access your computer’s 
BIOS or UEFI menu so that you can tell it to boot from the USB drive to which you just copied the Qubes installer ISO.

To begin, power off your computer and plug the USB drive into a USB port, but don’t press the power button yet. 
Right after you press the power button, you’ll have to immediately press a specific key to enter the BIOS or UEFI menu. 
The key to press varies from brand to brand. Esc, Del, and F10 are common ones. 
If you’re not sure, you can search the web for <COMPUTER_MODEL> BIOS key or <COMPUTER_MODEL> UEFI key 
(replacing <COMPUTER_MODEL> with your specific computer model) or look it up in your computer’s manual.

Once you know the key to press, press your computer’s power button, then repeatedly press that key 
until you’ve entered your computer’s BIOS or UEFI menu.

Prior to the next screen, a compatibility test runs to check whether IOMMU-virtualization is active or not. If the test fails, a window will pop up.

## Unsupported hardware detected

Do not panic. It may simply indicate that IOMMU-virtualization hasn’t been activated in the BIOS or UEFI. Return to the hardware requirements section to learn how to activate it. If the setting is not configured correctly, it means that your hardware won’t be able to leverage some Qubes security features, such as a strict isolation of the networking and USB hardware.

If the test passes, you will reach the installation summary screen. The installer loads Xen right at the beginning. If you can see the installer’s graphical screen, and you pass the compatibility check that runs immediately afterward, Qubes OS is likely to work on your system!

Like Fedora, Qubes OS uses the Anaconda installer. Those that are familiar with RPM-based distributions should feel at home.

## Installation summary

Did you know? The Qubes OS installer is completely offline. It doesn't even load any networking drivers, so there is no possibility of internet-based data leaks or attacks during the installation process.

The Installation summary screen allows you to change how the system will be installed and configured, including localization settings. At minimum, you are required to select the storage device on which Qubes OS will be installed.
