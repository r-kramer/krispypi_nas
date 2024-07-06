# krispypi_nas
Raspberry Pi Samba NAS Docker

## Setup

### Reformatting the USB

Run the following command to format the usb as a EXT4 drive

`./scripts/reformat_usb.sh`

### Mounting the Drive

Run the following command to mount the drive

`./scripts/mount_usb.sh`

## Usage

```
docker run -it \
    -p 445:445 \
    -v /mnt/usb:/mount \
    -d dperson/samba \
    -p \
    -s "smbshare;/mount;yes;no"
```

https://www.raspberrypi.com/tutorials/nas-box-raspberry-pi-tutorial/

## Cleanup

### Unmounting the Drive

If you need to safely remove the USB, first unmount the drive before disconnecting by running the following command

`./scripts/unmount_usb.sh`