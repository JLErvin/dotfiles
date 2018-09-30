syntax enable
colorscheme base16-material-palenight
set background=dark
set laststatus=2
syntax enable
set fillchars+=vert:\
set nowrap
set number
set relativenumber
set noshowmode
hi Folded ctermbg=NONE ctermfg=yellow
hi CursorLine ctermbg=black ctermfg=NONE
hi CursorLineNr ctermbg=NONE ctermfg=yellow
hi LineNr ctermbg=NONE

"Make vertical splits less hideous
hi VertSplit ctermbg=NONE ctermfg=0
hi StatusLineNC ctermbg=NONE ctermfg=0
set fillchars=vert:\│

"Menu highlighting for deoplete
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=7 ctermfg=0

let g:gruvbox_contrast_dark='hard'
hi Normal ctermbg=NONE

let g:currentmode={
    \ 'n'  : 'N ',
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
hi TeritaryBlock ctermbg=NONE ctermfg=8
hi Blanks ctermbg=NONE
hi statusline ctermbg=NONE

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
