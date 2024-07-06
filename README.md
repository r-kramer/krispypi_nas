# krispypi_nas
Raspberry Pi Samba NAS Docker

## Usage

```
docker run -it \
    -p 445:445 \
    -v /mnt/usb:/mount \
    -d dperson/samba \
    -p \
    -s "smbshare;/mount;yes;no"
```
