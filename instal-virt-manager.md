# How to Install and Use virt-manager in Ubuntu and Other Linux?

## ChatGPT Answer Just Fucking Amazing Wow!!!

You can install virt-manager in Ubuntu and other Linux distributions using
the package manager. To use virt-manager, you need to have a working installation
of libvirt and virt-manager.

## To install virt-manager in Ubuntu, use the following command:

```
sudo apt-get install virt-manager

sudo apt-get install libvirt-daemon-system libvirt-clients bridge-utils

```
Once virt-manager is installed, you can launch it from the Applications
menu. To connect to a remote libvirt server, click the Connect to remote
host button in the toolbar.

In the Connect to remote host dialog, enter the URI of the remote libvirt server. You can also select the transport method and authentication method.

Once you have connected to the remote libvirt server, you can manage virtual
machines from the virt-manager interface.

2.1. Start and enable libvirtd service

Make sure libvirtd service is enabled and running using command:

$ sudo systemctl status libvirtd

If it is not started, run the following commands to enable and start libvirtd service:

$ sudo systemctl enable libvirtd

$ sudo systemctl start libvirtd

2.2. Add user to libvirt group

Every time you launch Virt-manager, you will be asked to enter the sudo password of your user. To avoid this, add your user to the libvirt group using command:

$ sudo usermod -a -G libvirt $(whoami)

Log out and log back in to apply the changes.

3.1. Create a new virtual machine

Go to File -> New Virtual Machine from Virt-manager main window. Choose how would you like to install the guest OS. You will be given four choices as listed below:

    Local install media (E.g. ISO or CDROM),
    Network install such as HTTP, HTTPS, or FTP,
    Network Boot (E.g. PXE),
    Import existing disk image.

I go with "Local install media" option. Click Forward to continue:

Choose the ISO file location of the OS. If you have the physical CD/DVD medium, choose it instead. You operating system type will automatically be selected depending on the installation medium you choose.

If Virt-manager can't detect the OS type, uncheck the option that says "Automatically detect from the installation media / source" and select "Generic default" as your OS type.

Here, I've selected POP_OS! 20.04 ISO file, but Virt-manager could not detect the OS type, so I chose Generic default.


