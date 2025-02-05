#What is BorgBackup?

BorgBackup (short: Borg) is a deduplicating backup program. Optionally, it supports compression and authenticated encryption.

The main goal of Borg is to provide an efficient and secure way to backup data. The data deduplication technique used makes Borg suitable for daily backups since only changes are stored. The authenticated encryption technique makes it suitable for backups to not fully trusted targets.

See the installation manual or, if you have already downloaded Borg, docs/installation.rst to get started with Borg. There is also an offline documentation available, in multiple formats.
Main features
```
## How to Backup Files and Folders using Borg backup command in Linux

borg create --stats --progress /run/media/srhills/WD-EasyStore/backup_Tue-22-Aug-2023_repo::arcosrhills01 /home/srhills

## How to Restore Files and Folders from Borg backup command in Linux

```

Space efficient storage

    Deduplication based on content-defined chunking is used to reduce the number of bytes stored: each file is split into a number of variable length chunks and only chunks that have never been seen before are added to the repository.

    A chunk is considered duplicate if its id_hash value is identical. A cryptographically strong hash or MAC function is used as id_hash, e.g. (hmac-)sha256.

    To deduplicate, all the chunks in the same repository are considered, no matter whether they come from different machines, from previous backups, from the same backup or even from the same single file.

    Compared to other deduplication approaches, this method does NOT depend on:

        file/directory names staying the same: So you can move your stuff around without killing the deduplication, even between machines sharing a repo.
        complete files or time stamps staying the same: If a big file changes a little, only a few new chunks need to be stored - this is great for VMs or raw disks.
        The absolute position of a data chunk inside a file: Stuff may get shifted and will still be found by the deduplication algorithm.

Speed

        performance-critical code (chunking, compression, encryption) is implemented in C/Cython
        local caching of files/chunks index data
        quick detection of unmodified files

Data encryption
    All data can be protected using 256-bit AES encryption, data integrity and authenticity is verified using HMAC-SHA256. Data is encrypted clientside.
Obfuscation
    Optionally, borg can actively obfuscate e.g. the size of files / chunks to make fingerprinting attacks more difficult.
Compression

    All data can be optionally compressed:

        lz4 (super fast, low compression)
        zstd (wide range from high speed and low compression to high compression and lower speed)
        zlib (medium speed and compression)
        lzma (low speed, high compression)

Off-site backups
    Borg can store data on any remote host accessible over SSH. If Borg is installed on the remote host, big performance gains can be achieved compared to using a network filesystem (sshfs, nfs, …).
Backups mountable as filesystems
    Backup archives are mountable as userspace filesystems for easy interactive backup examination and restores (e.g. by using a regular file manager).
Easy installation on multiple platforms

    We offer single-file binaries that do not require installing anything - you can just run them on these platforms:

        Linux
        Mac OS X
        FreeBSD
        OpenBSD and NetBSD (no xattrs/ACLs support or binaries yet)
        Cygwin (experimental, no binaries yet)
        Linux Subsystem of Windows 10 (experimental)

Free and Open Source Software

        security and functionality can be audited independently
        licensed under the BSD (3-clause) license, see License for the complete license

Easy to use

Initialize a new backup repository (see borg init --help for encryption options):

$ borg init -e repokey /path/to/repo

Create a backup archive:

$ borg create /path/to/repo::Saturday1 ~/Documents

Now doing another backup, just to show off the great deduplication:

$ borg create -v --stats /path/to/repo::Saturday2 ~/Documents
-----------------------------------------------------------------------------
Archive name: Saturday2
Archive fingerprint: 622b7c53c...
Time (start): Sat, 2016-02-27 14:48:13
Time (end):   Sat, 2016-02-27 14:48:14
Duration: 0.88 seconds
Number of files: 163
-----------------------------------------------------------------------------
               Original size      Compressed size    Deduplicated size
This archive:        6.85 MB              6.85 MB             30.79 kB  <-- !
All archives:       13.69 MB             13.71 MB              6.88 MB

               Unique chunks         Total chunks
Chunk index:             167                  330
-----------------------------------------------------------------------------

For a graphical frontend refer to our complementary project BorgWeb.



Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
