#!/bin/bash

# Exit on non-zero status
set -e

# Treat unset variables as an error and exit
set -u

# Help function
Help()
{
    echo "List available drives: sudo fdisk -l"
    echo "List drive partition: sudo fdisk <drive>"
    echo "Delete any existing partitions, if necessary"
    echo "Using this script: sudo $0 <drive>"
}

# Check for no input arguments
if [ "$#" -eq  "0" ]; then
    Help
    exit 1
fi

# Reformat drive from input argument
drive="$1"
mkfs.ext4 "${drive}"
