" General Deoplete Settings
let g:deoplete#enable_at_startup = 1

" Java autocomplete options
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Haskell autocomplete options
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}
