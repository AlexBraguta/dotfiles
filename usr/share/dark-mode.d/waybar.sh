#!/bin/bash
cp ~/.config/waybar/style-dark.css ~/.config/waybar/style.css
killall waybar
sleep 0.5
hyprctl dispatch exec waybar
