#!/bin/sh

xrdb $HOME/.Xresources
xbindkeys &
compton -CGb --config $HOME/.config/compton/compton.conf
systemctl --user import-environment DISPLAY
dunst -config $HOME/.config/dunst/dunstrc &
redshift &


# Start window manager
sxhkd -c $HOME/.config/berry/sxhkdrc &
exec berry
