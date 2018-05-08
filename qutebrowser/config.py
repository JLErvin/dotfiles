import subprocess

def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props

xresources = read_xresources('*')

config.load_autoconfig()

## Background color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.bg = xresources['*.color8'] 

## Bottom border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.bottom = xresources['*.color8']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.top = xresources['*.color0']

## Foreground color of completion widget category headers.
## Type: QtColor
c.colors.completion.category.fg = xresources['*.color7']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = xresources['*.background']

## Text color of the completion widget. May be a single color to use for
## all columns or a list of three colors, one for each column.
## Type: List of QtColor, or QtColor
# c.colors.completion.fg = [xresources['*.color7'], '.color7', '.color7']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = xresources['*.color6']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = xresources['*.color4']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = xresources['*.color2']

## Foreground color of the selected completion item.
## Type: QtColor
c.colors.completion.item.selected.fg = xresources['*.color7']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = xresources['*.color7']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = xresources['*.background']

## Color of the scrollbar in the completion view.
## Type: QssColor
c.colors.completion.scrollbar.bg = xresources['*.background'] 

## Color of the scrollbar handle in the completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = xresources['*.color2']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = xresources['*.color0'] 

## Background color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.bg = xresources['*.color1'] 

## Foreground color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.fg = xresources['*.color7']

## Color gradient start for download .backgrounds.
## Type: QtColor
c.colors.downloads.start.bg = xresources['*.color2']

## Color gradient start for download text.
## Type: QtColor
c.colors.downloads.start.fg = xresources['*.color7']

## Color gradient stop for download .backgrounds.
## Type: QtColor
c.colors.downloads.stop.bg = xresources['*.background']

## Color gradient end for download text.
## Type: QtColor
c.colors.downloads.stop.fg = xresources['*.color7']

## Color gradient interpolation system for download .backgrounds.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

## Color gradient interpolation system for download text.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.downloads.system.fg = 'none'

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
# c.colors.hints.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(255, 247, 133, 0.8), stop:1 rgba(255, 197, 66, 0.8))'

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = xresources['*.color0']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = xresources['*.color2']

## Background color of the keyhint widget.
## Type: QssColor
# c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'

## Text color for the keyhint widget.
## Type: QssColor
# c.colors.keyhint.fg = '#FFFFFF'

## Highlight color for keys to complete the current keychain.
## Type: QssColor
# c.colors.keyhint.suffix.fg = '#FFFF00'

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = xresources['*.color1']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = xresources['*.color1']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = xresources['*.color7']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = xresources['*.color0']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = xresources['*.color0']

## Foreground color of an info message.
## Type: QssColor
c.colors.messages.info.fg = xresources['*.color7']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = xresources['*.color1']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = xresources['*.color1']

## Foreground color of a warning message.
## Type: QssColor
c.colors.messages.warning.fg = xresources['*.color7']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = xresources['*.color7']


## Border used around UI elements in prompts.
## Type: String
c.colors.prompts.border = '1px solid gray'

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = xresources['*.color7']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = xresources['*.background'] 

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = xresources['*.color5']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = xresources['*.color7']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = '#a12dff'

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = xresources['*.color7']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = xresources['*.color0']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = xresources['*.color7']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = xresources['*.color7']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = xresources['*.color7']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = xresources['*.color2']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = xresources['*.color7']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = xresources['*.color0']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = xresources['*.color7']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = xresources['*.color4']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = xresources['*.color7']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = '#666666'

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = xresources['*.color7']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = xresources['*.color7']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
# c.colors.statusbar.url.error.fg = 'orange'

## Default foreground color of the URL in the statusbar.
## Type: QssColor
# c.colors.statusbar.url.fg = xresources['*.color7']
c.colors.statusbar.url.fg = xresources['*.foreground']

## Foreground color of the URL in the statusbar for hove.color1 links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = xresources['*.color6']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
# c.colors.statusbar.url.success.http.fg = xresources['*.color7']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = xresources['*.color2']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = xresources['*.color3']

## Background color of the tab bar.
## Type: QtColor
c.colors.tabs.bar.bg = xresources['*.background']

## Background color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.bg = xresources['*.background']

## Foreground color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.fg = xresources['*.color7']

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = '#ff0000'

## Color gradient start for the tab indicator.
## Type: QtColor
# c.colors.tabs.indicator.start = '#0000aa'

## Color gradient end for the tab indicator.
## Type: QtColor
# c.colors.tabs.indicator.stop = '#00aa00'

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
# c.colors.tabs.indicator.system = 'rgb'

## Background color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.bg = xresources['*.background']

## Foreground color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.fg = xresources['*.color7']

## Background color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.bg = xresources['*.color0']

## Foreground color of selected even tabs.
## Type: QtColor
c.colors.tabs.selected.even.fg = xresources['*.color7']

## Background color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.bg = xresources['*.color0']

## Foreground color of selected odd tabs.
## Type: QtColor
c.colors.tabs.selected.odd.fg = xresources['*.color7']

## Background color for webpages if unset (or empty to use the theme's
## color).
## Type: QtColor
# c.colors.webpage.bg = xresources['*.color7']
c.colors.webpage.bg = "#ffffff"
