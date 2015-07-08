#!/bin/sh

echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy';
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save';
echo 'min_power' > '/sys/class/scsi_host/host4/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host3/link_power_management_policy';
echo 'min_power' > '/sys/class/scsi_host/host5/link_power_management_policy';
echo 'auto' > '/sys/bus/usb/devices/1-1.4/power/control';
# Runtime PM for PCI Device Intel Corporation 6 Series/C200 Series Chipset Family 
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control';
# Runtime PM for PCI Device Ricoh Co Ltd PCIe SDXC/MMC Host Controller
echo 'auto' > '/sys/bus/pci/devices/0000:0d:00.0/power/control';
# Runtime PM for PCI Device Intel Corporation 82579LM Gigabit Network Connection
echo 'auto' > '/sys/bus/pci/devices/0000:00:19.0/power/control';
# Runtime PM for PCI Device Intel Corporation Centrino Ultimate-N 6300
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control';
# Runtime PM for PCI Device NEC Corporation uPD720200 USB 3.0 Host Controller
echo 'auto' > '/sys/bus/pci/devices/0000:0e:00.0/power/control';
# Wake-on-lan status for device enp0s25
ethtool -s enp0s25 wol d;

echo 75 >> /sys/class/backlight/intel_backlight/brightness

echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1d.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.6/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.3/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.4/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1c.1/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1b.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:1a.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control';
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control';

ifconfig enp0s25 down 
ifconfig enp0s25 down 

notify-send "Going into mobile mode" -t 900
