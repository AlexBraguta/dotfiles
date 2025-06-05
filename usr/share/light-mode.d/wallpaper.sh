#!/bin/bash
cp ~/.config/hypr/hyprpaper-light.conf ~/.config/hypr/hyprpaper.conf
pkill hyprpaper
hyprpaper &
