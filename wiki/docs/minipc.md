
# DeskPi Mini Cube 
- New Product:   ⭐⭐⭐⭐⭐
- Compability:    ⭐⭐⭐⭐
- Mobility: ⭐⭐⭐⭐⭐
- Assemble Difficulty: ⭐

![DeskPi Mini Cube](./imgs/deskpiminicube/DP-0019-1.jpg)

## Purchase 
![chart](./imgs/picomate/shoppingchart.jpg)

[DeskPi Mini Cube](https://deskpi.com/products/deskpi-mini-cube-for-raspberry-pi-compute-module-4-cm4?_pos=1&_psq=DeskPi%20Cube&_ss=e&_v=1.0)

## Description 
DeskPi Mini Cube for Raspberry Pi CM4 is a case with a miniature appearance and extremely portable features.

> Note: Only supports Raspberry Pi CM4 module


The device provides a mini aluminum alloy radiator and integrates a silent fan that supports PWM speed regulation.

The bottom board provides a wealth of interfaces, supporting dual full-size HDMI interfaces, RJ45 Ethernet interfaces, 2x OTG USB port, and one PCIe interface supports `M.2 NVME SSD M-KEY 2242` external storage. 

The DIP switch on the back provides the special pins needed to configure the Raspberry Pi CM4 module. (On Compute Module 4 EMMC-DISABLE / nRPIBOOT (GPIO 40) must be fitted to switch the ROM to usbboot mode.)

Otherwise, the SPI EEPROM bootloader image will be loaded instead.

The 40Pin GPIO lead out and reserved RTC clock battery interface.

## Features
* Integrated design
* Aluminum alloy radiator with PWM adjustable speed fan
* Power button
* 2 x Full-size HDMI ports
* 2 x OTG USB2.0 port
* 1 x PCIe M.2 NVME M-KEY 2242 SSD slot 
* 1 x 40 Pin GPIO lead out
* 1 x DIP switch for mode change (CM4 function change)
* 1 x Onboard PCF85063 I2C RTC module 
* 5V USB-C Port Power IN

## Gallery
* Product Outlook 
![DeskPi mini cube feature1](./imgs/deskpiminicube/DP-0019-1.jpg)

* Backside of Mini Cube 
![DeskPi mini cube feature2](./imgs/deskpiminicube/DP-0019-2.jpg)

* Ports Definitions
![DeskPi mini cube feature3](./imgs/deskpiminicube/DP-0019-3.jpg)

* Inside of Mini Cube  
![DeskPi mini cube feature4](./imgs/deskpiminicube/DP-0019-5.jpg)

* Dimension
![DeskPi mini cube feature5](./imgs/deskpiminicube/DP-0019-7.jpg)

* IPX antenna specifications
	- Centre Frequency: 2400-2500MHz & 4900-5900MHz
	- Connector: IPEX1
	- Lead Length:  
	- Antenna Element Length:  mm (+/- 1mm)
	- Antenna Element Cable: 1.13 Coaxial cable, with plastic coating.
	- Impedance: 5Ohm.
	- Gain: About 3 dBi.
![IPEX1 Antenna](./imgs/deskpiminicube/DP-0019-11.jpg)
### Install IPEX Antenna 
Add the antenna as following figure, and then remove the protection film on back of the antenna, and then paste it inside the case. 
![Install Antenna](./imgs/deskpiminicube/DP-0019-13.jpg)

## RTC Battery Information 
ear RTC Battery `dose not` include in the package, additional purchase required! 
* Fit for: laptop CMOS Battery, Recommended `CR1220 3V` with `ZH1.25` Connector.

## Package Includes
* 1 x DeskPi Mini Cube for Raspberry Pi computer module 4
![DeskPi mini cube feature6](./imgs/deskpiminicube/DP-0019-4.jpg)

## How to assemble it 
* Step 1. Unloose four screws on top of mini cube.
* Step 2. Remove copper pillar and paste thermal pad on top of Raspberry Pi CM4 module.

>>> `NOTE：Please peel off the protection film on both side of the thermal pad.
and press the Raspberry Pi CM4 module according to following figure, please be ware of the direction and angle when press the Raspberry Pi CM4 module.` 

* Step 3. Fix aluminum heat sink to Raspberry Pi CM4 module with copper pillars.

Please refer to following figure to assemble it.

![DeskPi mini cube feature4](./imgs/deskpiminicube/DP-0019-6.jpg)

### [Optional] Install M.2 NVME SSD M-KEY 2242/2240. 

1. Remove the screws on bottom of mini cube and remove the PCB which is connected to mainboard on 40Pin GPIO. 

2. Insert SSD drive into the slot in 45-degree angle and fix it with screw.  

3. Cover it back to 40Pin GPIO and make sure it connect properly. 	

4. Fix the bottom case with screws.
![DIP Switch Details](./imgs/deskpiminicube/DP-0019-8.jpg)

## Functionality of power button:
* Short Press:  `Power on`
* Long Press:  `Power off (Cutoff power)`

> Please `NOTE` that if you have not shutdown the system, do not use long press to halt system, it will damage your system, it may cause kernel panic or lost file which are not saved yet. 

* **Correct Operation**:
Shutdown system in terminal or desktop, and then long press the button to cut off power.

## DIP Switch Functionality
![DIP Switch Details](./imgs/deskpiminicube/DP-0019-9.jpg)
### DIP Switch Pinout 
* 1 - USB OTG Pull UP
* 2 - UNATTENDEND 
* 3 - EEPROM_nWP  (EEPROM write protection)
* 4.- nRPIBOOT  (disable or enable eMMC Boot)
![DIP Switch](./imgs/deskpiminicube/DP-0019-12.jpg)

If you are using Raspberry Pi CM4 with EMMC onboard. please refer to this URL:
[How to flash the Compute Module](https://www.raspberrypi.com/documentation/computers/compute-module.html#compute-module-4) in section `“Flashing the Compute Module eMMC”` 

Hardware write-protection must be `enabled` via software and then locked by pulling the `EEPROM_nWP` pin low.

## How to enable USB2.0 ports besides the USB-C port?

**Assume that you are using Raspberry Pi OS (64bit/32bit).**

* The latest official image which you can download from:
`www.raspberrypi.com/software` will automatically adding `otg_mode=1` in
/boot/firmware/config.txt file, so you don't need to modify any parameter in
/boot/firmware/config.txt file.


## How to Update EEPROM Firmware on Raspberry Pi Compute Module 4 (CM4)

### Overview

Unlike earlier Compute Modules, the **CM4 uses an EEPROM bootloader** stored in on-board storage rather than the boot partition. This means it requires different update procedures compared to standard Raspberry Pi boards. 

---

### Prerequisites

| Item | Description |
|------|-------------|
| **Host PC** | Linux, macOS, or Windows PC with USB port |
| **CM4 + IO Board** | CM4 mounted on an official CM4 IO Board or compatible carrier |
| **USB Cable** | USB-C or micro-USB cable to connect IO Board to host |
| **usbboot tools** | Raspberry Pi `usbboot` utility installed on the host |

#### Install usbboot (Host PC)

```bash
# Clone the official usbboot repository
git clone --depth=1 https://github.com/raspberrypi/usbboot
cd usbboot

# Build (Linux/macOS)
make

# Install dependencies if needed (Debian/Ubuntu)
sudo apt install libusb-1.0-0-dev
```

---

### Method 1: Flash Bootloader EEPROM via USB (Recommended)

This method directly writes the bootloader EEPROM using `rpiboot` in recovery mode. It is the **most reliable method** for CM4.

#### Step 1: Hardware Setup

1. Mount the CM4 onto the IO Board.
2. Ensure the **`EEPROM_nWP` pin is NOT pulled low** (write-protection must be disabled). 
3. Connect the IO Board's USB slave port to your host PC.
4. **Do NOT** insert an SD card or eMMC storage if you want to target the EEPROM directly.
5. Power on the IO Board.

#### Step 2: Flash the EEPROM

Run the recovery command from the `usbboot` directory:

```bash
cd usbboot
sudo ./rpiboot -d recovery
```

This writes `recovery/pieeprom.bin` to the CM4's bootloader EEPROM. 

#### Step 3: Re-enable Write Protection (Optional)

Once flashing completes successfully, you may pull `EEPROM_nWP` low again to prevent accidental modification. 

---

### Method 2: Self-Update from a Running OS

If your CM4 is already booting from eMMC, USB, or network, you can enable **self-update mode**. However, this method carries a risk.

> ⚠️ **Warning:** Self-update mode does **not** update the bootloader atomically. If a power failure occurs during the EEPROM update, you could corrupt the EEPROM. 

#### Why CM4 Disables `rpi-eeprom-update` by Default

On CM4, the `rpi-eeprom-update` service is **disabled by default** because the eMMC is not removable, and an invalid `recovery.bin` file could brick the system. 

#### Enable Self-Update

1. Add the following to your `config.txt` or bootloader configuration:

```ini
ENABLE_SELF_UPDATE=1
```

2. Reboot the CM4. The bootloader will check for updates from the boot media (eMMC, USB MSD, or network boot).

---

### Method 3: Update from Raspberry Pi OS (If Running)

If you have Raspberry Pi OS running on the CM4 and want to check the current EEPROM version:

```bash
# Check current EEPROM status
sudo rpi-eeprom-update

# Update to latest stable (only works if self-update is enabled or on supported platforms)
sudo rpi-eeprom-update -a
```

> **Note:** On some platforms (e.g., Home Assistant Yellow with CM4), firmware updates via `rpi-eeprom-update` may be blocked with `unsupported_boot_device`. In such cases, use the `rpiboot` method instead. 

---

### Important Best Practices

Before deploying CM4 in production, Raspberry Pi recommends: 

1. **Select a specific bootloader release** and verify every CM4 has that release.
2. **Configure `BOOT_ORDER`** to define the boot device priority (eMMC → USB → NVMe → Network, etc.).
3. **Enable hardware write-protection** (`EEPROM_nWP` pulled low) on production units to prevent unauthorized modification.

#### Example Bootloader Configuration

Create or edit `boot.conf` before flashing:

```ini
[all]
BOOT_UART=0
WAKE_ON_GPIO=1
POWER_OFF_ON_HALT=0
BOOT_ORDER=0xf2641   # eMMC → USB → NVMe → Network → Loop
ENABLE_SELF_UPDATE=1
```

Then use `rpi-eeprom-config` to apply it:

```bash
sudo rpi-eeprom-config --out pieeprom-new.bin --config boot.conf pieeprom.bin
```

---

### Troubleshooting

| Issue | Solution |
|-------|----------|
| `rpiboot` hangs or can't detect CM4 | Check USB cable, ensure CM4 is powered, try a different USB port |
| EEPROM update succeeds but CM4 won't boot | Verify `BOOT_ORDER` is correct; newer silicon may require newer EEPROM (≥ 2026-01-09 for recent batches)  |
| `unsupported_boot_device` error | Use `rpiboot -d recovery` method instead of OS-level update |
| Write-protected error | Ensure `EEPROM_nWP` is not pulled low during flashing |

---

### References

- [Raspberry Pi Compute Module Documentation](https://www.raspberrypi.com/documentation/computers/compute-module.html)
- [rpi-eeprom GitHub Releases](https://github.com/raspberrypi/rpi-eeprom/releases)
- [usbboot GitHub Repository](https://github.com/raspberrypi/usbboot)

## Updating CM4 EEPROM Firmware with DeskPi Mini Cube

### DIP Switch Configuration

The DeskPi Mini Cube has a **4-position DIP switch** on the back that controls key CM4 signals. Here is the pinout: 

| Switch | Function | Description |
|--------|----------|-------------|
| **1** | USB OTG Pull UP | Enables USB OTG pull-up resistor |
| **2** | UNATTENDED | Unattended boot mode |
| **3** | EEPROM_nWP | **EEPROM Write Protection** (low = protected) |
| **4** | nRPIBOOT | **eMMC Boot Disable** (low = usbboot mode) |

---

### Step-by-Step: Flash EEPROM via USB (rpiboot)

#### 1. Set DIP Switches for USB Boot Mode

To put the CM4 into `rpiboot` mode (required for EEPROM flashing), configure the switches **before powering on**:

| Switch | Position | Reason |
|--------|----------|--------|
| 1 | OFF | Not needed for EEPROM update |
| 2 | OFF | Not needed |
| **3** | **OFF** | **Disable write-protection** (`EEPROM_nWP` high → EEPROM writable) |
| **4** | **ON** | **Enable nRPIBOOT** (pull GPIO 40 low → ROM enters usbboot mode) |

> ⚠️ **Critical:** Switch 4 must be ON **before** power is applied, and switch 3 must be OFF to allow EEPROM writing. 

#### 2. Connect Hardware

1. Connect a **USB-C cable** from the Mini Cube's USB-C port to your host PC (Linux/macOS/Windows).
2. Connect **USB-C power** to the Mini Cube's power input.
3. Power on the Mini Cube.

#### 3. Run `rpiboot` on Host PC

On your host computer, clone and run the official `usbboot` tool:

```bash
# Linux / macOS
git clone --depth=1 https://github.com/raspberrypi/usbboot
cd usbboot
make

# Flash the EEPROM with the recovery firmware
sudo ./rpiboot -d recovery
```

This will write `recovery/pieeprom.bin` to the CM4's SPI EEPROM. 

#### 4. Custom EEPROM Configuration (Optional)

If you want to customize bootloader settings (e.g., `BOOT_ORDER`), edit `recovery/boot.conf` first, then regenerate the EEPROM image:

```bash
cd recovery
# Edit boot.conf as needed
./update-pieeprom.sh
cd ..
sudo ./rpiboot -d recovery
```

---

### Step-by-Step: Normal Boot Mode (After Update)

Once the EEPROM is flashed, revert the DIP switches to boot from eMMC or NVMe:

| Switch | Position |
|--------|----------|
| 1 | OFF |
| 2 | OFF |
| **3** | **ON** | Enable write-protection (recommended for production) |
| **4** | **OFF** | Disable nRPIBOOT (normal boot from eMMC/NVMe) |

Then power-cycle the Mini Cube.

---

### Troubleshooting

| Issue | Check |
|-------|-------|
| `rpiboot` cannot detect device | Verify switch 4 is ON **before** power-on; try a different USB cable/port |
| EEPROM write fails | Ensure switch 3 is OFF (write-protection disabled) |
| Green LED stays ON after disconnecting USB | Indicates `nRPIBOOT` GPIO is still high — check switch 4 is ON |
| Need to re-flash eMMC OS | Use `sudo ./rpiboot -d mass-storage-gadget` to mount eMMC as USB drive |

---

### Summary

| Task | Switch 3 (EEPROM_nWP) | Switch 4 (nRPIBOOT) |
|------|----------------------|---------------------|
| **Flash EEPROM** | OFF (writable) | ON (usbboot mode) |
| **Normal Boot** | ON (protected) | OFF (boot from storage) |


## How to enable fan automatically? 
** Assume that your operating system is Raspberry Pi OS (32bit/64bit) **
### Official Fan setting

* Open a terminal and typing following command:

```
sudo raspi-config 
```

Navigate to `Performance Options` -> `P4 Fan` -> `Yes` -> `14` -> `60` -> `yes` -> `finish` -> reboot Raspberry Pi.

The fan is support `PWM` signal control via `GPIO14` which is `physical pin 12`(TXD), it will spinning when the CPU temperature is above `60` degree.

and also you can write your code to control the fan via `GPIO14`, sending `PWM` signal will trigger the fan spinning.

### Control Fan manually  
#### Demo code
* Here is a demo code for controlling fan speed by using python script.

```python
 #!/usr/bin/python3

import RPi.GPIO as GPIO
import time
import subprocess

GPIO.setmode(GPIO.BCM)
GPIO.setup(14, GPIO.OUT)
pwm = GPIO.PWM(14,100)

print("\nPress Ctrl+C to quit \n")
dc = 0
pwm.start(dc)

try:
    while True:
        temp = subprocess.getoutput("vcgencmd measure_temp|sed 's/[^0-9.]//g'")
        if round(float(temp)) >= 45:
            dc = 100
            pwm.ChangeDutyCycle(dc)
            print("CPU Temp:",float(temp)," Fan duty cycle:",dc)
            time.sleep(180.0)
        if round(float(temp)) >= 40:
            dc = 85
            pwm.ChangeDutyCycle(dc)
            print("CPU Temp:",float(temp)," Fan duty cycle:",dc)
            time.sleep(120.0)
        else:
            dc = 70
            pwm.ChangeDutyCycle(dc)
            print("CPU Temp:",float(temp)," Fan duty cycle:",dc)
            time.sleep(60.00)

except KeyboardInterrupt:
    pwm.stop()
    GPIO.cleanup()
    print("Ctrl + C pressed -- Ending program")
    
```

Then execute it:

```
python3 fan_control.py
```

## How to enable onboard RTC module? 

> `NOTE`:  
> RTC battery sock type: ZH1.25  
> The battery dose not include in the package, additional purchase required!!
* Step 1. Modify /boot/config.txt file and adding following parameter:
```bash
dtoverlay=i2c-rtc,pcf85063a,i2c_csi_dsi,addr=0x51
```
Save it and please reboot your Raspberry Pi. 

* Step 2. Check if RTC module has been recognized by Raspberry Pi.
Execute following command in a terminal:
```bash
dmesg |grep i2c 
```
![DMESG infor](./imgs/deskpiminicube/dmesg_infor.png)
```bash
i2cdetect -y 10 
```
> NOTE: if command not found, please install `i2c-tools`:
```bash
sudo apt update 
sudo apt upgrade -y 
sudo apt -y install i2c-tool
```
![I2C infor1](./imgs/deskpiminicube/i2c_rtc_01.png)
* Step 3. Probe the module `rtc-pcf85063` and check the kernel module status.
```bash
modprobe rtc-pcf85063
lsmod |grep rtc 
```
![I2C infor2](./imgs/deskpiminicube/i2c_rtc_02.png)

* Step 4. Setting system date and sychronized system time to Hardware clock time.

** Check RTC time in command line.
```bash
cat /proc/driver/rtc 
```

** Setting system time
**Syntax**
```bash
date [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]
```
For example:
```bash
sudo date -s 'tue oct 18 08:50:23 BST 2022'
or 
sudo date 053118062023.22 
```
It means setting system time to 2023.05.31 18:06:23. 

** Sychronizing system time to HW clock time.
```bash
sudo hwclock -w
```
** Check RTC time and system time
```bash
sudo hwclock ; date
```

## FAQ
* Q: Dose it support NVMe SSD booting?   
A: It has been tested, yes, it supports, but you may need to upgrade eeprom by using rpi-boot from official github repository. 

