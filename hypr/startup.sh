#!/bin/bash

# Wait for the system to load
until pgrep -x "Hyprland" > /dev/null; do
  sleep 0.2
done

# Additional wait for custom modules
sleep 2

# Launch waybar
waybar &
