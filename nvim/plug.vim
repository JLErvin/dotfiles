if 1 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'neomake/neomake'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'lervag/vimtex'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'deoplete-plugins/deoplete-jedi'
NeoBundle 'Shougo/deoplete-clangx'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'roxma/vim-hug-neovim-rpc'
NeoBundle 'godlygeek/tabular'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'fatih/vim-go'
NeoBundle 'deoplete-plugins/deoplete-go', {'build': {'unix': 'make'}}


" Better C syntax highlighting
NeoBundle 'justinmk/vim-syntax-extra'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
