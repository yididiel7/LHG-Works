# How to Install a KVM in Arch Linux and Configure Your Virtual Machine

Learn how to install and set up a KVM in Arch Linux to run different operating systems alongside your primary Arch installation.

1. [QEMU](https://www.qemu.org/).
2. [QEMU A proper guide!](https://youtu.be/AAfFewePE7c?si=9SUQkApm23pchBg6).

## Commands in the video:

Installation:

Ctrl+Alt+G To Free your mouse in Virtual Machine.

Arch: sudo pacman -S qemu (optionally "qemu-arch-extra" for more architectures)
Debian/Ubuntu: sudo apt install qemu
Fedora: sudo dnf install qemu

### To create a virtual image use:

```
$ qemu-img create -f qcow2 Image.img 10G
```

(create is to create an image, -f qcow2 sets the format to qcow2, Image.img is our final file and 10G is it's size)

### Launching the VM:

*qemu-system-x86_64 -enable-kvm -cdrom OS_ISO.iso -boot menu=on -drive file=Image.img -m 2G -cpu host -vga qxl

(-enable-kvm enables KVM, -cdrom selects an iso to load as a cd, -boot menu=on enables a boot menu, -drive file= selects a file for the drive, -m sets the amount of dedicated RAM)
(Remember! Ctrl + Alt + G to exit capture, Ctrl + Alt + F to fullscreen!)

That doesn't run so good, what can we do to improve it?

Basic performance options

 -cpu host (sets the CPU to the hosts' CPU)
 -smp 2 (sets the numbers of cores)

### Basic Graphics Acceleration

```
$ sudo modprobe qxl bochs_drm
```

the -vga option can be used to specify one of various vga card emulators:

"qxl" offers 2D acceleration but requires kernel modules "qxl" and "bochs_drm" to be enabled:

-vga qxl

"virtio" works much better and supports some 3D emulation:

-vga virtio -display sdl,gl=on


### First Run Command:

```
$ qemu-system-x86_64 -enable-kvm -cdrom archcraft.iso -boot menu=on -drive file=Image.img -m 2G -cpu host -vga qxl  
```

### Final Run Command:

```
$ qemu-system-x86_64 -enable-kvm -cdrom archcraft.iso -boot menu=on -drive file=Image.img -m 2G -cpu host -vga virtio -display sdl,gl=on
```

*After installing the OS to the image file, you don't need the -cdrom flag in the above command, since you won't be booting from the ISO file anymore. Instead, run:

```
$ qemu-system-x86_64 -enable-kvm -boot menu=on -drive file=Image.img -m 4G -cpu host -vga virtio -display sdl,gl=on
```

### Configuring a New KVM on Arch Linux Using QEMU CLI

To create a KVM on Arch Linux from the command line, you can use qemu commands. To begin, first, create a separate directory for the virtual machine and move the downloaded OS ISO file to the newly created folder:

### Create a KVM on Arch Linux

```
$ mkdir kvm
mv /path/to/linux-distro.iso ./kvm
```

Then, create a 20G image file that will store the KVM's data:

### Create a 20G image file

```
$ qemu-img create -f qcow2 Image.img 20G
```

Proceed by running the following command to start the virtual machine:

### Start the virtual machine

```
$ qemu-system-x86_64 -enable-kvm -cdrom linux-distro.iso -boot menu=on -drive file=Image.img -m 4G -cpu host -vga virtio -display sdl,gl=on
```

Make sure to replace linux-distro.iso in the above command with the correct filename and path. You can also change the value of the -m flag to configure the amount of memory you want to allocate to the KVM.
creating a kvm in arch linux qemu cli.jpeg

A new virtual machine window will appear. Feel free to test out or install the operating system.

After installing the OS to the image file, you don't need the -cdrom flag in the above command, since you won't be booting from the ISO file anymore. Instead, run:

### Remove the -cdrom flag

```
$ qemu-system-x86_64 -enable-kvm -boot menu=on -drive file=Image.img -m 4G -cpu host -vga virtio -display sdl,gl=on
```

You can shorten the above command by *creating a command-line alias* for it.

### KVM and virt-manager Are Better Than VirtualBox!

Apart from QEMU and virt-manager, several other hypervisors are available for Linux. VirtualBox, VMware, and GNOME Boxes are some of the most popular ones. But out of all, KVM and QEMU stand out to be the best, as they offer better performance and features than the rest.

### Validate Host Virtualization Setup

After the reboot, verify that your host is correctly configured to run all libvirt hypervisor drivers.

$ sudo virt-host-validate qemu

You may receive the following warning message from the validation tool:

*QEMU: Checking for device assignment IOMMU support : WARN (No ACPI DMAR table found, IOMMU either disabled in BIOS or not supported by this hardware platform)

**Meaning: Your Intel processor only supports the VT-x (vmx) feature and not VT-d.**

VT-d is used to implement a feature known as PCIe Pass-through. VT-d enables virtual machines to have direct access to specific I/O devices such as graphics cards, network adapters, and storage controllers.

sudo virt-host-validate qemu
[sudo] password for srhills:            
  QEMU: Checking for hardware virtualization                                 : PASS
  QEMU: Checking if device /dev/kvm exists                                   : PASS
  QEMU: Checking if device /dev/kvm is accessible                            : PASS
  QEMU: Checking if device /dev/vhost-net exists                             : PASS
  QEMU: Checking if device /dev/net/tun exists                               : PASS
  QEMU: Checking for cgroup 'cpu' controller support                         : PASS
  QEMU: Checking for cgroup 'cpuacct' controller support                     : PASS
  QEMU: Checking for cgroup 'cpuset' controller support                      : PASS
  QEMU: Checking for cgroup 'memory' controller support                      : PASS
  QEMU: Checking for cgroup 'devices' controller support                     : PASS
  QEMU: Checking for cgroup 'blkio' controller support                       : PASS
**QEMU: Checking for device assignment IOMMU support                        WARN (No ACPI DMAR table found, IOMMU either disabled in BIOS or not supported by this hardware platform)
 QEMU: Checking for secure guest support                                    WARN (Unknown if this platform has Secure Guest support)**

sudo dmesg | grep -i -e DMAR -e IOMMU                                
[sudo] password for srhills:            
[    0.359890] iommu: Default domain type: Translated
[    0.359890] iommu: DMA domain TLB invalidation policy: lazy mode


Information
    ACPI is the acronym for Advanced Configuration and Power Interface. ACPI includes a set of standards that define the way that the operating system of your computer communicates to the hardware. ACPI provides a key element for Power Management. ACPI applies to all classes of computers including desktop, mobile, home, and server machines. ACPI incorporates the existing collection of power management systems such as: BIOS, APM, PNPBIOS, and so on into a significant power management and configuration mechanism. Windows 98 (also Windows 2000 when released) takes advantage of the ACPI features built-in to your computer when it detects them and enables the operating system to work more closely with your computer's hardware for purposes of power management. For more information you may wish to visit the following web sites.

    
Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
