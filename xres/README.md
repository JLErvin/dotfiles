# x

All of my window managers run through x - a powerful server
that consolidates system information.

Many applications are able to source variables and settings
from `$HOME/.Xresources` - including many applications I run daily. 
I have simplified my `$HOME/.Xresources` to source various files - each
of which are dedicated to a single program. As of now, the applications
with an x file are: `rofi` `2bwm` and `urxvt`. 

Additionally, I have a `.xinitrc` file which is run every time I start
an xserver with `startx`. This file sets some system wide defaults, 
in addition to start my window manager.
