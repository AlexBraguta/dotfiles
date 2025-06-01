#!/usr/bin/env bash

# Define menu options
options="Reboot\nShutdown"

# Show the menu
choice=$(printf "%b" "$options" \
         | rofi -dmenu -i -p "Power options:")

# Act on the selection
case "$choice" in
  Reboot)   systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
  *)        exit 1 ;;
esac
