#!/bin/bash
cp ~/.config/hypr/hyprpaper-dark.conf ~/.config/hypr/hyprpaper.conf
pkill hyprpaper
hyprpaper &
