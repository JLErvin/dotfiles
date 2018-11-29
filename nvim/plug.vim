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

"NeoBundle 'ncm2/ncm2'
"NeoBundle 'roxma/nvim-yarp'
"NeoBundle 'ncm2/ncm2-tmux'
"NeoBundle 'ncm2/ncm2-pyclang'
"NeoBundle 'ncm2/ncm2-path'
"NeoBundle 'ncm2/ncm2-bufword'

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'roxma/vim-hug-neovim-rpc'
NeoBundle 'Shougo/deoplete-clangx'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
