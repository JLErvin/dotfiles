set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
"
" " more Plugin commands
" " ...

set term=xterm-256color
colorscheme delek 
color delek 



execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=2


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline_theme='zenburn'


" call vundle#end()            " required

" filetype plugin indent on    " required

set number

highlight LineNr ctermfg=white ctermbg=none
highlight VertSplit ctermfg=white ctermbg=none

set nowrap

let g:airline_powerlinefonts=1
