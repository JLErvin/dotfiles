# Windowchef

Windowchef is a minimal floating window manager written by Tudurom.
It is an interesting hybrid between two of my favorite window managers, 
`2bwm` and `bspwm`. It shares many similarities with `2bwm`, such as 
floating windows, intuitive resizing, and double borders. However,
its configuration is very similar to `bspwm`, relying on shell scripts
for configuration and a `sxhkd` for key bindings .

## Emulating workspaces

Most window managers come with workspaces, or virtural desktops, that you can
quickly switch between to better organize your workflow. `Windowchef` comes
with groups, which are a bit more powerful, though a little less intuitive. 
You can use applications like `ruler` to assign certain windows to groups,
and then toggle these on/off. For me, this is more hassle than its worth, 
so I configured my `windowchef` to emulate more traditional workspaces. 

This can be done by setting the following options in `windowchefrc`:

```bash
waitron wm_config stick_windows true
waitron wm_config groups_nr 9
```

These commands will great 9 groups (0 - 8), one for each workspace. 
If you spawn a new window, it will inherit the currently active group.

You can then switch between active groups by adding the following to your
`sxhkdrc`:

```bash
super + {1-9}
    waitron group_activate_specific {1-9}
```

Groups are very powerful, and I don't see any downside to them as you can
perfecly emulate workspace environments by using them.

## Left/Right snapping

One of my favorite `2bwm` features is the ability to snap windows to half the screen. 
I'm not a big fan of tiling window managers, and for most multitasking I stick to
using `tmux`. However, if I need to multitask with another application, like `firefox`,
I need to view two windows at once. The simplest way to do this is have `firefox`
take up half the screen (horizontally) and the terminal take up the other half. 

`windowchef` comes with grids out of the box, but you can achieve the same results
without using them. I simply added the following to my `sxhkdrc` to achieve the same 
results.

```bash
super + 0
    waitron window_move_absolute 0 30; waitron window_resize_absolute 950 1040
    
super + p
    waitron window_move_absolute 960 30; waitron window_resize_absolute 950 1040
```

Getting these geometry values correct took me longer to figure out than I would like to admit.


