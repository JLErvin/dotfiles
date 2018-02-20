if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'gmarik/Vundle.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kh3phr3n/python-syntax'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'yuratomo/gmail.vim'
NeoBundle 'lazywei/vim-matlab'
NeoBundle 'tmhedberg/SimpylFold'

NeoBundle 'roxma/nvim-completion-manager'
NeoBundle 'jalvesaq/Nvim-R'
NeoBundle 'gaalcaras/ncm-R'
NeoBundle 'roxma/ncm-clang'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
