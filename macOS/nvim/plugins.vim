if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'chriskempson/base16-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'kh3phr3n/python-syntax'
NeoBundle 'tmhedberg/SimpylFold'

NeoBundle 'ncm2/ncm2'
NeoBundle 'ncm2/ncm2-path'
NeoBundle 'roxma/nvim-yarp'
NeoBundle 'roxma/ncm-clang'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
