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
NeoBundle 'Shougo/deoplete-clangx'
NeoBundle 'godlygeek/tabular'
NeoBundle 'neomake/neomake'

" Haskell Related Plugins
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'parsonsmatt/intero-neovim'

" Java Related Plugins
NeoBundle 'artur-shaik/vim-javacomplete2'
"NeoBundle 'airblade/vim-rooter'

" Better C syntax highlighting
NeoBundle 'justinmk/vim-syntax-extra'

" Go autocompletion
NeoBundle 'deoplete-plugins/deoplete-go'
NeoBundle 'fatih/vim-go'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
