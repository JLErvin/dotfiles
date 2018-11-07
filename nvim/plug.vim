if 1 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'tmhedberg/SimpylFold'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'lervag/vimtex'

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'roxma/vim-hug-neovim-rpc'
NeoBundle 'artur-shaik/vim-javacomplete2'
NeoBundle 'zchee/deoplete-jedi'
NeoBundle 'Shougo/deoplete-clangx'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
