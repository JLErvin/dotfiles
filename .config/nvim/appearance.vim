syntax enable
set cursorline
colorscheme agila
set background=dark
set laststatus=2
syntax enable
set fillchars+=vert:\
set nowrap
set number
set relativenumber
set noshowmode
hi Folded ctermbg=NONE ctermfg=yellow

" Custom Statusline {{{

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'no' : 'N·Operator Pending ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·Line ',
    \ '' : 'V·Block',
    \ 's'  : 'Select ',
    \ 'S'  : 'S·Line ',
    \ '' : 'S·Block',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'REPLACE ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \ 'cv' : 'Vim Ex ',
    \ 'ce' : 'Ex ',
    \ 'r'  : 'Prompt ',
    \ 'rm' : 'MORE ',
    \ 'r?' : 'CONFIRM ',
    \ '!'  : 'SHELL ',
    \ 't'  : 'TERMINAL '}

set statusline=
set statusline+=%#PrimaryBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#TeritaryBlock#
set statusline+=\ %f\ 
" }}}
