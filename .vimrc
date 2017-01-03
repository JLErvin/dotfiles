" vim:fdm=marker

" Basic {{{

set nocompatible              " be iMproved, required
filetype off                  " required
set nocp
syntax on
filetype plugin indent on

set tabstop=2

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

let g:deoplete#enable_at_startup = 1

"}}}
" Pathogen {{{
execute pathogen#infect()

"}}}
" Syntastic {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"}}}
" VUNDLE {{{
"SETUP PLUGINS USING VUNDLE
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Bundle 'klen/python-mode'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'jalvesaq/Nvim-R'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

" }}}
" Customize Appearance {{{

" Configure colorscheme
" Use Pmenu to configure drop-down menu for YouCompleteMe
colorscheme delek
highlight LineNr ctermfg=grey ctermbg=black
highlight VertSplit ctermfg=black ctermbg=none
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000   

set fillchars+=vert:\
set guifont=Robot\ Mono\ for\ Powerline\ 11
set nowrap
set number



" }}}
" Key Bindings {{{

imap jj <esc>

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

set backspace=indent,eol,start

" }}}
" Configure Airline Plugin {{{

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:airline_theme='base16_grayscale'

" }}}
" Configure R Plugin {{{

"Setup R with Screen/Tmux""
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell' "


"Setup R Plugin""
let g:vimrplugin_noscreenrc = 1
let g:vimrplugin_screenplugin = 1
let vimrplugin_conqueplugin = 0
let g:vimrplugin_map_r = 1
let vimrplugin_vimpager = "no"

"Setup R Key Bindings""
map F2 <Rstart>
imap F2 <Plug>Rstart
vmap F2 <Plug>Rstart

vmap Space <Plug>RDSendSelection
nmap Space <Plug>RDSendSendLine

let vimrplugin_applscript = 0
let vimrplugin_screenplugin = 0

" }}}
" Configure Python Plugin {{{

let g:pymode = 1

" }}}
