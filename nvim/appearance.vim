syntax enable
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
hi CursorLine ctermbg=black ctermfg=NONE
hi CursorLineNr ctermbg=black ctermfg=yellow
hi LineNr ctermbg=NONE

let g:gruvbox_contrast_dark='hard'
hi Normal ctermbg=NONE

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'no' : 'N·OPERATOR PENDING ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·LINE ',
    \ '' : 'V·BLOCK ',
    \ 's'  : 'SELECT ',
    \ 'S'  : 'S·LINE ',
    \ '' : 'S·BLOCK ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'REPLACE ',
    \ 'Rv' : 'V·REPLACE ',
    \ 'c'  : 'COMMAND ',
    \ 'cv' : 'VIM EX ',
    \ 'ce' : 'EX ',
    \ 'r'  : 'PROMPT ',
    \ 'rm' : 'MORE ',
    \ 'r?' : 'CONFIRM ',
    \ '!'  : 'SHELL ',
    \ 't'  : 'TERMINAL '}


set statusline=
set statusline+=%#PrimaryBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#SecondaryBlock#
set statusline+=%{StatuslineGit()}
set statusline+=%#TeritaryBlock#
set statusline+=\ %f\ 
set statusline+=%M\ 
set statusline+=%#Blanks#
set statusline+=%=
set statusline+=%#SecondaryBlock#
set statusline+=\ %Y\ 
set statusline+=%#PrimaryBlock#
set statusline+=\ %P\ 

function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction
