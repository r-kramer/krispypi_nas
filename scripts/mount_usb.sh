#!/bin/bash

# Exit on non-zero status
set -e

# Treat unset variables as an error and exit
set -u

# Help function
Help()
{
    echo "List available drives: sudo fdisk -l"
    echo "Using this script: sudo $0 <drive>"
}

# Check for no input arguments
if [ "$#" -eq  "0" ]; then
    Help
    exit 1
fi

# Check if mount dir exists
if [ ! -d "/mnt/usb" ]; then
    # Create mount dir if empty
    mkdir /mnt/usb
fi

# Create the mount point
drive="$1"
mount "${drive}" /mnt/usb
echo "USB drive mounted successfully"