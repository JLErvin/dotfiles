# 2bwm

2bwm is a lightweight floating window manager. 
Resource consumption is very low, and it includes the ability to
add a second window border. Not only is this aesthetically pleasing, 
but it adds additional functionality - it is possible to
differentiate active windows from windows marked as fixed, unfixed,
killable, and unkillable. 

## Configuration

2bwm is configured using `config.h`. This is a simple `c` file
that contains all the window manager's key bindings, color codes,
offsets, and rules. In order for changes to be applied, 2bwm 
must be recompiled - although this is pretty fast given its size. 

## Dynamic Configuration Management

It is possible for 2bwm to source values from `$HOME/.Xresources`
The available options are:

```xdefaults
twobwm.border_width: number
twobwm.outer_border: number
twobwm.focus_color: #RRGGBB
twobwm.unfocus_color: #RRGGBB
twobwm.fixed_color: #RRGGBB
twobwm.unkill_color: #RRGGBB
twobwm.outer_border_color: #RRGGBB
twobwm.fixed_unkill_color: #RRGGBB
twobwm.inverted_colors: true|false
twobwm.enable_compton: true|false
```

For examples on how I set these values, check my `$HOME/.Xresources`

Additionally, I wrote a shell script called `squash` which will
manage colors systemwide. This includes the ability to change values
in `2bwm` and recompile very quickly. You can view the project 
[squash](https://github.com/JLErvin/squash)
