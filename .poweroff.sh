#!/bin/bash
ans=$(zenity --list --title "Make your choice" --text "What should I do?"\
--radiolist --column "Choice" --column "Action" \
reboot reboot logout logout poweroff poweroff);
echo $ans
case $ans in
'reboot')
echo "reboot"
sudo reboot
;;
'logout')
echo "logout"
killall openbox
;;
'poweroff')
echo "poweroff"
sudo poweroff
;;
esac

