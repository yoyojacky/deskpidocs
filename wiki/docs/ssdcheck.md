## Getting Start  
![DeskPi Pro](imgs/DeskPi logo.png).

For order please visit: [DeskPi.com](https://www.deskpi.com/).

## How to check SSD/HDD status
* Check if the SSD/HDD has been recognized by OS, just check USB controller's status will be ok due to it is connected via an `USB adapter`.
```bash
dmesg |grep -i usb
```
* Check if the it supports `UASP`, USB Attached SCSI (UAS) or USB Attached SCSI Protocol (UASP) is a computer protocol used to move data to and from USB storage devices such as hard drives (HDDs), solid-state drives (SSDs), and thumb drives. UAS depends on the USB protocol, and uses the standard SCSI command set. Use of UAS generally provides faster transfers compared to the older USB Mass Storage Bulk-Only Transport (BOT) drivers.

UAS was introduced as part of the USB 3.0 standard, but can also be used with devices complying with the slower USB 2.0 standard, assuming use of compatible hardware, firmware and drivers. 
* Command:
```bash
lsusb -t
```
If you can not find `uas` in the output message, it means it does not support `uasp`. 
if not, and the disk still not show up on your Raspberry Pi desktop, please check your hardware and repeat following steps:
### Hareware checking steps:
1. Please make sure the USB adapter is connect well.
2. Please check the harddisk adapter board's 4Pin pinheader is connect properly.
3. Please tell me what kind of OS did you use? Raspbian OS ?
4. Please use the wall charger that we provide in the package.
5. Please send us the result of those commands in terminal so that we can help you to diagnose the problem.
6. Reboot your Raspberry Pi by typing:
```bash
sudo sync
sudo reboot
```
### Software checking steps:
1. Make sure the drive can be recognized.
```bash
sudo fdisk -l |grep -i 'dev' 
```
or
```bash
lsusb -t 
```
or 
```bash
lsblk 
```
2. Make sure the drive is not raw disk or has `NTFS` filesystem on it.
here `/dev/sda` is my test result, you shall change this as your result from `sudo fdisk -l |grep -i 'dev'` command. 
```bash
sudo fdisk -l /dev/sda
```
If it is a `raw disk`, means it has never been partied before, you need to `make partition` and `format` it, and `mount` it to a directory so that you can access it.
3. Make Partitions
```bash
sudo fdisk /dev/sda
p
n
p
1
Enter
Enter
w
```
### Explanation:<br>

** `p` means: print partition table. ** <br>
** `n` means: new - create new partition. ** <br>
** `p` means: primary partition.** <br>
** `1` means: the first partition number. ** <br>
** `Enter` means: select default cylinder as start cylinder.** <br>
** `Enter` means: select the whole disk as end cylinder.    ** <br>
** `w` means: save the change to partition table and quit.  ** <br>

4. Format partition
```bash
sudo mkfs.ext4 /dev/sda1 
```
It will format `/dev/sda1` partition to an `ext4` type filesystem which can be supported by most Linux distributions.

5. Mount partition
You need to mount the partition to a folder(directory) before you can use it.
```bash
cd 
mkdir mydata
sudo mount -t ext4 /dev/sda1 mydata -v
sudo chmod 777 /home/pi/mydata
```
### Explanation:
`cd` means go back to your home directory.<br>
`mkdir` means create a directory for your partition.<br>
`sudo mount -t ext4 /dev/sda1 mydata -v` means mount `/dev/sda1` partition to directory `mydata` with `ext4` type filesystem format and `-v` will show the details when you mount this partition.<br>
`sudo chmod 777 /home/pi/mydata` means everyone can have full privilledges on this mounting point. you have `read`,`write`, `execute` permission on this directory.<br>
### How to check if it has been mounted on
```bash
df -Th
```
or 
```
sudo mount 
```

