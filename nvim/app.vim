syntax enable
colorscheme base16-material
set background=dark
set laststatus=2
syntax enable
set fillchars+=vert:\
set nowrap
set number
set noshowmode
set cursorline
hi Folded ctermbg=NONE ctermfg=yellow
hi LineNr ctermbg=NONE ctermfg=8
hi Normal ctermbg=NONE
hi CursorLine ctermbg=0 ctermfg=NONE
hi CursorLineNr ctermbg=0 ctermfg=3

"Menu highlighting for deoplete
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=7 ctermfg=0

let g:gruvbox_contrast_dark='hard'

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'no' : 'N',
    \ 'v'  : 'V ',
    \ 'V'  : 'V ',
    \ '' : 'V ',
    \ 's'  : 'S ',
    \ 'S'  : 'S ',
    \ '' : 'S ',
    \ 'i'  : 'I ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V ',
    \ 'c'  : 'C ',
    \ 'cv' : 'V EX ',
    \ 'ce' : 'E ',
    \ 'r'  : 'P ',
    \ 'rm' : 'M ',
    \ 'r?' : 'C ',
    \ '!'  : 'S ',
    \ 't'  : 'T '}

hi PrimaryBlock ctermbg=NONE ctermfg=8
hi ModeBlock ctermbg=NONE ctermfg=3
hi SecondaryBlock ctermbg=NONE ctermfg=8
hi TeritaryBlock ctermbg=NONE ctermfg=5
hi Blanks ctermbg=NONE
hi statusline ctermbg=NONE
hi SpellBad ctermfg=0 ctermbg=1
hi SpellCap ctermfg=0 ctermbg=1
hi ColorColumn ctermbg=NONE ctermfg=1
hi PmenuThumb ctermbg=NONE ctermfg=1
hi SignColumn ctermbg=NONE
hi link SyntasticWarningSign ColorColumn
hi link SyntasticErrorSign PmenuThumb
hi QuickFixLine ctermbg=NONE ctermfg=1
hi StatusLineNC ctermbg=NONE ctermfg=8

set statusline=
set statusline+=%#ModeBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#TeritaryBlock#
set statusline+=\ %f\ 
set statusline+=%M\ 
set statusline+=%#Blanks#
set statusline+=%=
set statusline+=%#PrimaryBlock#
set statusline+=\ %Y\ 
set statusline+=%#SecondaryBlock#
set statusline+=\ %P\ 

let g:goyo_width='80%'
let g:goyo_height='80%'
let g:limelight_conceal_ctermfg=8
