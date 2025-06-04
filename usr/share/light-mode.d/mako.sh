#!/bin/bash
cp ~/.config/mako/config-light ~/.config/mako/config
killall mako
mako --config ~/.config/mako/config &
