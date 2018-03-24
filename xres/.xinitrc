#!/usr/bin/env sh
#
# ╻ ╻┏━┓┏━╸┏━┓┏━┓╻ ╻┏━┓┏━╸┏━╸┏━┓
# ┏╋┛┣┳┛┣╸ ┗━┓┃ ┃┃ ┃┣┳┛┃  ┣╸ ┗━┓
# ╹ ╹╹┗╸┗━╸┗━┛┗━┛┗━┛╹┗╸┗━╸┗━╸┗━┛


# Find fonts correctly
xset +fp /home/void/.fonts
xset +fp /usr/share/fonts/bit
xset +fp /usr/share/fonts/bitmap
xset +fp /usr/share/fonts/misc
xset +fp rehash

# Start xbindkeys
xbindkeys &

# Start compton as background w/o shadowing
compton -CGb

# Start reshift
redshift -l 47.6062:122.3321 &

# Start network manager applet
nm-applet &

twobwm() {
    echo "2bwm" > "/home/void/.cache/squash/wm"
    2bwm &
    exec urxvt
}

bspwm() {
    echo "bspwm" > "/home/void/.cache/squash/wm"
    sxhkd &
    exec bspwm
}

open() {
    echo "openbox" > "/home/void/.cache/squash/wm"
    openbox-session
}

#twobwm
open
#bspwm
