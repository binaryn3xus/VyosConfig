#!/bin/bash
#
# Description: Backup VyOS configuration to a USB device
#
dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-General_UDisk-0:0"
user="vyos"

# Mount a formatted exfat USB
if [[ ! $(findmnt -M "$dest") ]]; then
    sudo mkdir -p $dest
    sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" $disk $dest
fi