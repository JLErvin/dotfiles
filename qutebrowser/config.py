import subprocess
import sys

def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props

def clamp(val, minimum=0, maximum=255):
    if val < minimum:
        return minimum
    if val > maximum:
        return maximum
    return val

def adjust(hexstr, scalefactor):
    hexstr = hexstr.strip('#')
    if scalefactor < 0 or len(hexstr) != 6:
        return hexstr

    r, g, b = int(hexstr[:2], 16), int(hexstr[2:4], 16), int(hexstr[4:], 16)
    r = int(clamp(r * scalefactor))
    g = int(clamp(g * scalefactor))
    b = int(clamp(b * scalefactor))

    return "#%02x%02x%02x" % (r, g, b)

xresources = read_xresources('*')

config.load_autoconfig()

c.colors.completion.category.bg                 = xresources['*.background']
c.colors.completion.category.border.bottom      = xresources['*.color8']
c.colors.completion.category.border.top         = xresources['*.color0']
c.colors.completion.category.fg                 = xresources['*.color8']
c.colors.completion.even.bg                     = xresources['*.background']
c.colors.completion.item.selected.bg            = xresources['*.color0']
c.colors.completion.item.selected.border.bottom = xresources['*.color0']
c.colors.completion.item.selected.border.top    = xresources['*.color0']
c.colors.completion.item.selected.fg            = xresources['*.color7']
c.colors.completion.match.fg                    = xresources['*.color7']
c.colors.completion.odd.bg                      = xresources['*.background']
c.colors.completion.scrollbar.bg                = xresources['*.background']
c.colors.completion.scrollbar.fg                = xresources['*.color2']

c.colors.downloads.bar.bg    = xresources['*.color0']
c.colors.downloads.error.bg  = xresources['*.color1']
c.colors.downloads.error.fg  = xresources['*.color7']
c.colors.downloads.start.bg  = xresources['*.color2']
c.colors.downloads.start.fg  = xresources['*.color7']
c.colors.downloads.stop.bg   = xresources['*.background']
c.colors.downloads.stop.fg   = xresources['*.color7']
c.colors.downloads.system.bg = 'none'
c.colors.downloads.system.fg = 'none'

c.colors.hints.fg       = xresources['*.color0']
c.colors.hints.match.fg = xresources['*.color2']

c.colors.messages.error.bg       = xresources['*.color1']
c.colors.messages.error.border   = xresources['*.color1']
c.colors.messages.error.fg       = xresources['*.color7']
c.colors.messages.info.bg        = xresources['*.color0']
c.colors.messages.info.border    = xresources['*.color0']
c.colors.messages.info.fg        = xresources['*.color7']
c.colors.messages.warning.bg     = xresources['*.color1']
c.colors.messages.warning.border = xresources['*.color1']
c.colors.messages.warning.fg     = xresources['*.color7']

c.colors.prompts.bg          = xresources['*.color7']
c.colors.prompts.border      = '1px solid gray'
c.colors.prompts.fg          = xresources['*.color7']
c.colors.prompts.selected.bg = xresources['*.background']

c.colors.statusbar.caret.bg             = xresources['*.color5']
c.colors.statusbar.caret.fg             = xresources['*.color7']
c.colors.statusbar.caret.selection.bg   = '#a12dff'
c.colors.statusbar.caret.selection.fg   = xresources['*.color7']
c.colors.statusbar.command.bg           = xresources['*.color0']
c.colors.statusbar.command.fg           = xresources['*.color7']
c.colors.statusbar.command.private.bg   = xresources['*.color7']
c.colors.statusbar.command.private.fg   = xresources['*.color7']
c.colors.statusbar.insert.bg            = xresources['*.color2']
c.colors.statusbar.insert.fg            = xresources['*.color7']
c.colors.statusbar.normal.bg            = xresources['*.color0']
c.colors.statusbar.normal.fg            = xresources['*.foreground']
c.colors.statusbar.passthrough.bg       = xresources['*.color4']
c.colors.statusbar.passthrough.fg       = xresources['*.foreground']
c.colors.statusbar.private.bg           = '#666666'
c.colors.statusbar.private.fg           = xresources['*.foreground']
c.colors.statusbar.progress.bg          = xresources['*.color7']
c.colors.statusbar.url.fg               = xresources['*.foreground']
c.colors.statusbar.url.hover.fg         = xresources['*.color6']
c.colors.statusbar.url.success.https.fg = adjust(xresources['*.foreground'], 0.7)
c.colors.statusbar.url.warn.fg          = xresources['*.color3']


c.colors.tabs.bar.bg           = xresources['*.background']
c.colors.tabs.even.bg          = adjust(xresources['*.background'], 1.15)
c.colors.tabs.even.fg          = xresources['*.color7']
c.colors.tabs.indicator.error  = '#ff0000'
c.colors.tabs.odd.bg           = adjust(xresources['*.background'], 1.35)
c.colors.tabs.odd.fg           = xresources['*.color7']
c.colors.tabs.selected.even.bg = adjust(xresources['*.background'], 1.15)
c.colors.tabs.selected.even.fg = xresources['*.color3']
c.colors.tabs.selected.odd.bg  = adjust(xresources['*.background'], 1.35)
c.colors.tabs.selected.odd.fg  = xresources['*.color3']

c.colors.webpage.bg = "#ffffff"

c.url.start_pages = "/home/jle/startpage/index.html"
c.url.default_page = "/home/jle/startpage/index.html"
