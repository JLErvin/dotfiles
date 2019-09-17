#!/bin/sh

xrdb "$HOME/.Xresources"
setxkbmap -option caps:super
xbindkeys &
compton -CGb --config "$HOME/.config/compton/compton.conf"
systemctl --user import-environment DISPLAY
dunst -config "$HOME/.config/dunst/dunstrc" &
redshift &

xset +fp "$HOME/.fonts"
xset fp rehash

export XDG_SESSION_TYPE=X11
sxhkd -c "$HOME"/.config/berry/sxhkdrc &
exec berry -d -f 'Dina-9' > /tmp/log.txt 2>&1
#exec openbox-session
