# How to Install a KVM in Arch Linux and Configure Your Virtual Machine
# By: Sr. Yididiel Hills
# Published Sat 07 Oct 2023 20:26:01

Learn how to install and set up a KVM in Arch Linux to run different operating systems alongside your primary Arch installation.
arch linux logo on a dark background

[Virtual Machine](https://www.makeuseof.com/how-to-install-arch-linux-kvm-configure-virtual-machine/).

Want to run different operating systems on top of your Arch Linux installation? You can always use VirtualBox or VMware to create a virtual machine, but KVM wins the game with its high performance and flexible set of features.

Setting up a new virtual machine on Arch Linux using KVM and QEMU can seem daunting at first. But don't fret, as it's a breeze once you learn how to do it.

Here's everything you need to know about installing a KVM in Arch Linux and configuring your first virtual machine.
Step 1: Check if Virtualization Is Enabled

## The first step is to verify if you have virtualization support enabled on your computer. To do so, run the following command:

 
grep -Ec '(vmx|svm)' /proc/cpuinfo
 

Take note of the output. If it's greater than 0, then virtualization is enabled and you can safely continue. But in case it's not, you need to enable virtualization by heading over to your computer's BIOS.

Step 2: Install the Required KVM Packages

Now that you're sure about the virtualization support, it's time to install the necessary packages for KVM. But first, update existing packages on your system using:

 
sudo pacman -Syyu
 

Then, run the following command to install all KVM-related packages:

 
sudo pacman -S qemu-full virt-manager virt-viewer dnsmasq bridge-utils libguestfs ebtables vde2 openbsd-netcat
 

Enter Y when prompted for confirmation.
Step 3: Configure the libvirtd Service

Start the libvirtd service with:

 
sudo systemctl start libvirtd.service
 

Enable the service so it automatically starts at boot:

 
sudo systemctl enable libvirtd.service
 

Check if libvirtd is currently running using the status command:

 
sudo systemctl status libvirtd.service
 

The output should display the active (running) status in green. If it shows inactive (dead), issue the systemctl start command again.

Next, you need to make some changes to the libvirtd configuration file located at /etc/libvirt/libvirtd.conf. Open the file using Vim (or your preferred text editor):

 
vim /etc/libvirt/libvirtd.conf
 

Locate and uncomment the following two lines by removing the Pound (#) character from the beginning:

 
unix_sock_group = "libvirt"
unix_sock_rw_perms = "0770"
 

Save the changes and exit Vim to continue. Next, add your user to the libvirt group with:

 
sudo usermod -aG libvirt $USER
 

Restart the libvirtd service to save the changes:

 
systemctl restart libvirtd.service
 

Now you're ready to create a KVM on your Arch Linux system. There are two ways to do it: using the QEMU CLI or with virt-manager, which is a graphical frontend for QEMU/KVM. The choice is yours!

But before that, make sure you've downloaded the ISO image for the operating system you want to install. If you're still undecided, check out our list of the best Linux distros for beginner, intermediate, and advanced users.
Create a New KVM on Arch Linux Using virt-manager

If you're a beginner or don't want to deal with the Linux terminal, the best way to create a KVM on Arch Linux is using virt-manager. It's easy to use and has a clean interface, similar to other GUI hypervisors like VirtualBox and VMware.

Start by launching virt-manager. Usually, it'll appear as Virtual Machine Manager in the applications menu, but you can also run the virt-manager command in the terminal to launch it.

When it launches, click Create a new virtual machine from the menu (right under the File option). Select Local media install (ISO image or CDROM) and hit Forward.
local media installation kvm arch linux

On the following screen, click Browse > Browse Local and select the downloaded ISO file. For this guide, let's install Manjaro, an Arch-based Linux distro stripped of the complex installation that Arch is famous for. With the file selected, click Forward.
selecting the iso image file arch linux

If you see a prompt mentioning the emulator may not have search permissions for the path, simply click Yes to proceed.

Choose the memory size and CPU cores for the virtual machine. For memory, a quarter of your actual physical memory is a good starting point.
configure memory and cpu settings virt-manager

For example, if you have 8GB memory, anything in the range of 2GB and 4GB works. For the CPU, enter the number of cores available (in this case, 12). Click Forward to continue.

Next, configure the size of the KVM. 25GB will be more than enough for a barebones Manjaro installation, or any other distro, for that matter. Again, proceed by clicking Forward.
create a disk image kvm arch linux

Review the KVM information and click Finish if everything looks well. If you see a Virtual Network is not active popup, select Yes to start the network.
start the virtual network virt-manager arch linux

virt-manager will start creating the KVM and as soon as it's done, a new virtual machine window will pop up.
Configuring a New KVM on Arch Linux Using QEMU CLI

To create a KVM on Arch Linux from the command line, you can use qemu commands. To begin, first, create a separate directory for the virtual machine and move the downloaded OS ISO file to the newly created folder:

 
mkdir kvm
mv /path/to/linux-distro.iso ./kvm
 

Then, create a 20G image file that will store the KVM's data:

 
qemu-img create -f qcow2 Image.img 20G
 

Proceed by running the following command to start the virtual machine:

 
qemu-system-x86_64 -enable-kvm -cdrom linux-distro.iso -boot menu=on -drive file=Image.img -m 4G -cpu host -vga virtio -display sdl,gl=on
 

Make sure to replace linux-distro.iso in the above command with the correct filename and path. You can also change the value of the -m flag to configure the amount of memory you want to allocate to the KVM.
creating a kvm in arch linux qemu cli.jpeg

A new virtual machine window will appear. Feel free to test out or install the operating system.

After installing the OS to the image file, you don't need the -cdrom flag in the above command, since you won't be booting from the ISO file anymore. Instead, run:

 
qemu-system-x86_64 -enable-kvm -boot menu=on -drive file=Image.img -m 4G -cpu host -vga virtio -display sdl,gl=on
 

You can shorten the above command by creating a command-line alias for it.
KVM and virt-manager Are Better Than VirtualBox!

Apart from QEMU and virt-manager, several other hypervisors are available for Linux. VirtualBox, VMware, and GNOME Boxes are some of the most popular ones. But out of all, KVM and QEMU stand out to be the best, as they offer better performance and features than the rest.
