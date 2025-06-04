#!/bin/bash
cp ~/.config/mako/config-dark ~/.config/mako/config
killall mako
mako --config ~/.config/mako/config &
