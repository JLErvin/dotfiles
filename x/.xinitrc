#!/bin/sh

xrdb $HOME/.Xresources
xbindkeys &
compton -CGb --config $HOME/.config/compton/compton.conf

# Fix some display settings
systemctl --user import-environment DISPLAY

# Start window manager
sxhkd -c $HOME/.config/berry/sxhkdrc &
exec berry
