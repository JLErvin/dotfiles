syntax enable
set laststatus=2
syntax enable
set fillchars+=vert:\
set nowrap
set number
set noshowmode
set cursorline
colorscheme solarized
set background=light

if &background ==# 'dark'
    hi Folded         ctermbg=NONE ctermfg=3
    hi LineNr         ctermbg=NONE ctermfg=8
    hi Normal         ctermbg=NONE
    hi CursorLine     ctermbg=0    ctermfg=NONE
    hi CursorLineNr   ctermbg=0    ctermfg=3
    hi Pmenu          ctermbg=0
    hi PmenuSel       ctermbg=7    ctermfg=0
    hi PrimaryBlock   ctermbg=NONE ctermfg=8
    hi ModeBlock      ctermbg=NONE ctermfg=3
    hi SecondaryBlock ctermbg=NONE ctermfg=8
    hi TeritaryBlock  ctermbg=NONE ctermfg=5
    hi Blanks         ctermbg=NONE
    hi statusline     ctermbg=NONE
    hi SpellBad       ctermbg=1    ctermfg=0
    hi SpellCap       ctermbg=1    ctermfg=0
    hi ColorColumn    ctermbg=NONE ctermfg=1
    hi PmenuThumb     ctermbg=NONE ctermfg=1
    hi SignColumn     ctermbg=NONE
    hi QuickFixLine   ctermbg=NONE ctermfg=1
    hi StatusLineNC   ctermbg=NONE ctermfg=8
else
    hi Folded         ctermbg=NONE ctermfg=3
    hi LineNr         ctermbg=NONE ctermfg=8
    hi Normal         ctermbg=NONE
    hi CursorLine     ctermbg=7    ctermfg=NONE
    hi CursorLineNr   ctermbg=7    ctermfg=3
    hi Pmenu          ctermbg=0    ctermfg=7
    hi PmenuSel       ctermbg=4    ctermfg=15
    hi PmenuSbar      ctermbg=3    ctermfg=7
    hi PmenuThumb     ctermbg=3    ctermfg=3
    hi PrimaryBlock   ctermbg=NONE ctermfg=8
    hi ModeBlock      ctermbg=NONE ctermfg=3
    hi SecondaryBlock ctermbg=NONE ctermfg=8
    hi TeritaryBlock  ctermbg=NONE ctermfg=5
    hi Blanks         ctermbg=NONE
    hi statusline     ctermbg=NONE
    hi SpellBad       ctermbg=1    ctermfg=0
    hi SpellCap       ctermbg=1    ctermfg=0
    hi ColorColumn    ctermbg=NONE ctermfg=1
    hi SignColumn     ctermbg=NONE
    hi QuickFixLine   ctermbg=NONE ctermfg=1
    hi StatusLineNC   ctermbg=NONE ctermfg=8
endif

hi link SyntasticWarningSign ColorColumn
hi link SyntasticErrorSign PmenuThumb

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

let g:neomake_error_sign = {
    \ 'text': 'E',
    \ 'texthl': 'NeomakeErrorSign',
    \ }

let g:neomake_warning_sign = {
    \ 'text': 'W',
    \ 'texthl': 'NeomakeWarningSign',
    \ }

let g:neomake_message_sign = {
    \ 'text': 'M',
    \ 'texthl': 'NeomakeMessageSign',
    \ }

let g:neomake_info_sign = {
    \ 'text': 'I',
    \ 'texthl': 'NeomakeInfoSign',
    \ }

