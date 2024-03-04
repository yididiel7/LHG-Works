# Install KVM, QEMU and Virt Manager on Arch Linux #

## The first step is to verify if you have virtualization support enabled on your computer. To do so, run the following command:

 
grep -Ec '(vmx|svm)' /proc/cpuinfo
 

Take note of the output. If it's greater than 0, then virtualization is enabled and you can safely continue. But in case it's not, you need to enable virtualization by heading over to your computer's BIOS.

Step 2: Install the Required KVM Packages

Now that you're sure about the virtualization support, it's time to install the necessary packages for KVM. But first, update existing packages on your system using:

Step 1: Install KVM packages

First step is installing all packages needed to run KVM:

`$ sudo pacman -Syy`

`$ sudo pacman -S archlinux-keyring`

`$ sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat`

Also install ebtables  and iptables packages:

$ sudo pacman -S ebtables iptables

Step 3: Start KVM libvirt service

Once the installation is done, start and enable libvirtd service to start at boot:

`$ sudo systemctl enable libvirtd.service`

`$ sudo systemctl start libvirtd.service`

`$ systemctl status libvirtd.service`

Status show it’s running:

`$ systemctl status libvirtd.service`

Step 4: Enable normal user account to use KVM

Since we want to use our standard Linux user account to manage KVM, let’s configure KVM to allow this.

Open the file /etc/libvirt/libvirtd.conf for editing.

`$ sudo pacman -S vim`

`$ sudo vim /etc/libvirt/libvirtd.conf`

Set the UNIX domain socket group ownership to libvirt, (around line 85)

unix_sock_group = "libvirt"

Set the UNIX socket permissions for the R/W socket (around line 102)

unix_sock_rw_perms = "0770"

Add your user account to libvirt group.

sudo usermod -a -G libvirt $(whoami)
newgrp libvirt

Restart libvirt daemon.

`$ sudo systemctl restart libvirtd.service`

Step 5: Enable Nested Virtualization (Optional)

Nested Virtualization feature enables you to run Virtual Machines inside a VM. Enable Nested virtualization for kvm_intel / kvm_amd by enabling kernel module as shown.

### Intel Processor ###
sudo modprobe -r kvm_intel
sudo modprobe kvm_intel nested=1

### AMD Processor ###
sudo modprobe -r kvm_amd
sudo modprobe kvm_amd nested=1

To make this configuration persistent,run:

echo "options kvm-intel nested=1" | sudo tee /etc/modprobe.d/kvm-intel.conf

Confirm that Nested Virtualization is set to Yes:

### Intel Processor ###
$ systool -m kvm_intel -v | grep nested
    nested              = "Y"
    nested_early_check  = "N"
$ cat /sys/module/kvm_intel/parameters/nested 
Y

### AMD Processor ###
$ systool -m kvm_amd -v | grep nested
    nested              = "Y"
    nested_early_check  = "N"
$ cat /sys/module/kvm_amd/parameters/nested 
Y

Step 6: Using KVM on Arch Linux / Manjaro

You have successfully installed KVM, QEMU and Virt Manager on Arch Linux and Manjaro. You are now good to go. You can install a Linux or Windows OS Virtual Machine and build your study labs.

