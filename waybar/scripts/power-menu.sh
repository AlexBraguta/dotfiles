#!/bin/bash

CHOICE=$(printf "Restart\nPower Off" | rofi -show window -p "System Menu")
case "$CHOICE" in
    "Restart") systemctl reboot ;;
    "Power Off") systemctl poweroff ;;
esac
