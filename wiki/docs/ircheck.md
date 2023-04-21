## Getting Start  
![DeskPi Pro](imgs/DeskPi logo.png).

For order please visit: [DeskPi.com](https://www.deskpi.com/).

## How to check IR remote

* Enable `gpio-ir` function by editing `/boot/config.txt` file.
```bash 
dtoverlay=gpio-ir,gpio_pin=17
```

* Install `lirc` software.
```bash
sudo apt-get -y install lirc
```

* Modify configuration file `/etc/lirc/lirc_options.conf` and make sure it contains those two parameters:
```bash
driver 	= default
device  = /dev/lirc0
```

* Save it and reboot Raspberry Pi.
```bash
sudo sync
sudo reboot
```
* Test it by:
```bash
mode2 -d /dev/lirc1
```
**NOTE** Please aim your IR remote controller direct to the power button. 
and different IR remote controller may have different response time.
