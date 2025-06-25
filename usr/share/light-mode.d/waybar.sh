#!/usr/bin/env bash
cp ~/.config/waybar/style-light.css ~/.config/waybar/style.css
killall waybar
sleep 0.5
hyprctl dispatch exec waybar
