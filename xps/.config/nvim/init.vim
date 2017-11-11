" vim:fdm=marker

" Basic {{{

set nocompatible              
filetype on
filetype plugin on
set nocp
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set nobackup
set noswapfile

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
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'kh3phr3n/python-syntax'
Plugin 'roxma/nvim-completion-manager'
Plugin 'lazywei/vim-matlab'
Plugin 'jalvesaq/Nvim-R'
Plugin 'ajpaulson/julia-syntax.vim'

call vundle#end()
filetype plugin indent on

" }}}
" Customize Appearance {{{

syntax enable
set cursorline
colorscheme gotham
set background=dark
set laststatus=0
syntax enable
set fillchars+=vert:\
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
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
autocmd filetype cpp nnoremap <F10> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
set backspace=indent,eol,start

" }}}
" Run Current File {{{

map <F10> :call CompileFile()<CR>
function! CompileFile()
	let current_filetype = &filetype
	if current_filetype == 'python'
		:!python %:t
	endif
	if current_filetype == 'java'
		:w
		:!javac "%"
		:!java -cp "%:p:h" "%:t:r"
	endif
endfunction

" }}}
