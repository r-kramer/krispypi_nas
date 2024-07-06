#!/bin/bash

# Exit on non-zero status
set -e

# Treat unset variables as an error and exit
set -u

# Help function
Help()
{
    echo "List mounts: mount -l"
    echo "Using this script: sudo $0"
}

# Check for no input arguments
if [ "$#" -eq  "0" ]; then
    Help
    exit 1
fi

# Create the mount point
mount="$1"
umount /mnt/usb
echo "Un-mounted ${mount}"