## Getting Start  
![DeskPi Pro](imgs/DeskPi logo.png).

For order please visit: [DeskPi.com](https://www.deskpi.com/).

## How to check front USB port
* First, you need to check if /boot/config.txt file contains this parameter:
```bash
dtoverlay=dwc2,dr_mode=host
```
The front USB function is coming from `dwc2` overlay, it selects the dwc2 USB controller driver, and `dr_mode` can be `host`, `peripheral` or `otg`.
here, `dwc2` mode must be `host`.
* And if you want to add it without editing /boot/config.txt file manually, just typing this command in a terminal:
```bash
sudo sed -i '$a\dtoverlay=dwc2,dr_mode=host' /boot/config.txt 
```

