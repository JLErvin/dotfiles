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
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhartington/oceanic-next'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'kh3phr3n/python-syntax'
Plugin 'roxma/nvim-completion-manager'
Plugin 'joshdick/onedark.vim'
Plugin 'lazywei/vim-matlab'
Plugin 'jalvesaq/Nvim-R'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'ajpaulson/julia-syntax.vim'
Plugin 'morhetz/gruvbox'




call vundle#end()
filetype plugin indent on

" }}}
" Customize Appearance {{{


syntax enable
"set background=dark
set cursorline
"colorscheme solarized
"colorscheme OceanicNext
colorscheme gruvbox
set background=dark
"colorscheme developer
"colorscheme OceanicNext
"colorscheme onedark

" Use Pmenu to configure drop-down menu for YouCompleteMe
syntax enable
"highlight LineNr ctermfg=yellow ctermbg=black
"highlight VertSplit ctermfg=black ctermbg=none
"highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
"highlight CursorLine cterm=None ctermbg=black ctermfg=none
"highlight CursorLineNr term=bold ctermbg=black guifg=White
"highlight Normal ctermfg=None ctermbg=none

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

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

autocmd filetype cpp nnoremap <F10> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

set backspace=indent,eol,start

" }}}
" Configure Airline Plugin {{{

" air-line
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

"if !exists('g:airline_symbols')
		"let g:airline_symbols = {}
"endif

"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

"if !exists('g:airline_symbols')
	"let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

let g:airline_theme='gruvbox'
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
" Misc {{{
let g:goyo_width=100
let g:goyo_height=100
" }}}
