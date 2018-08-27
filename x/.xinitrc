#!/bin/sh

xrdb $HOME/.Xresources
xbindkeys &

# Add fonts
xset +fp $HOME/.fonts
xset fp rehash

compton -CGb

# Start window manager
sxhkd -c $HOME/.config/berry/sxhkdrc &
exec berry
