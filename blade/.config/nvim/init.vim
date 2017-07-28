" vim:fdm=marker

" Basic {{{

set nocompatible              " be iMproved, required
filetype on                 " required
filetype plugin on
set nocp
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2

set nobackup
set noswapfile

"display tabs and trailing spaces
"set listchars=tab:-⋅,trail:⋅,nbsp:⋅


"}}}
" Syntastic {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"}}}
" VUNDLE {{{
"SETUP PLUGINS USING VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'jalvesaq/Nvim-R'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/deoplete.nvim'
Plugin 'mhartington/oceanic-next'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lervag/vimtex'
Bundle 'edkolev/tmuxline.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'mjbrownie/hackertyper.vim'


call vundle#end()
filetype plugin indent on

" }}}
" Customize Appearance {{{


syntax enable
set background=dark
set cursorline
"colorscheme OceanicNext 
colorscheme developer

" Use Pmenu to configure drop-down menu for YouCompleteMe
syntax enable
highlight LineNr ctermfg=white ctermbg=black
highlight VertSplit ctermfg=black ctermbg=none
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000   
highlight CursorLine ctermbg=black ctermfg=white guibg=blue gui=none
highlight CursorLine cterm=None ctermbg=black ctermfg=none
highlight CursorLineNr term=bold ctermfg=White guifg=White
highlight CursorLineNr term=bold ctermbg=black guifg=White
highlight Normal ctermfg=None ctermbg=none

set fillchars+=vert:\ 
set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h10
set nowrap
set number
set relativenumber



" }}}
" Key Bindings {{{

imap jj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

autocmd filetype cpp nnoremap <F10> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

set backspace=indent,eol,start

" }}}
" Configure Airline Plugin {{{

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

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

let g:airline_theme='minimalist'
" }}}
" Configure R Plugin {{{

" }}}
" Configure Python Plugin {{{

let g:pymode = 1

" }}}
" Configure Java Compiler {{{

	" java compile
map <F2> :call CompileJava()<CR>
func! CompileJava()
	:w
	:!javac "%"
endfunc
" run class
map <F5> :call RunClass()<CR>
func! RunClass()
	:!java -cp "%:p:h" "%:t:r"
endfunc

nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


" }}}
" Configure Java AutoCompletion {{{
	autocmd FileType java setlocal omnifunc=javacomplete#Complete

" }}} 
" {{{
	let g:deoplete#enable_at_start = 1
	let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 
" }}}
