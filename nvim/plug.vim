if 0 | endif

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

NeoBundle 'ncm2/ncm2'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'ncm2/ncm2-tmux'
NeoBundle 'ncm2/ncm2-pyclang'
NeoBundle 'ncm2/ncm2-path'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
