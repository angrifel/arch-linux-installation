#!/usr/bin/env bash

if [ ! -d /sys/firmware/efi/efivars ]; then
  echo System not booted in EFI mode.
  exit 1  
fi

# disabled hardware speaker beep from this terminal.
# beeping can be anoying at night
setterm -blength 0

# sets the machine real time clock to localtime, this is for 
# dual booting with windows, even though ArchWiki recommends otherwise.
#
# windows expect the RTC to be localtime AND even though it can be configured to
# not 

timedatectl set-local-rtc true

# set timezone to buenos aires
timedatectl set-timezone America/Argentina/Buenos_Aires

# set system to adjust date/time using NTP (NTP = Network Time Protocol)
timedatectl set-ntp true
