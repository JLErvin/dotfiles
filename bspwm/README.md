# bspwm

bspwm is a lightweight tiling window manager for x. 
Configuration is done with a simple `bash` file located, by default,
in `$HOME/.config/bspwm/bspwmrc`. This makes bspwm very easy to customize,
and it works well with other applications I have made like `squash`. 

Keybindings are managed seperately through `sxhkd`. Although haivng the key bindings
seperate may be a bit frustraing for simplicity's sake, it goes well with the unix philosophy.
Additionally, `sxhkd` works with many other window managers, such as `windowchef`. This is
nice since then you have the same keybinds across different window managers

## Dynamic Configuration Management

Because `bspwmrc` is really just a bash script, it is incredibly easy to configure
system colors with `bspwm`. I simply source my colors file in `$HOME/.cache/squash/colors`
and apply my variables to `bspwm` borders. 
