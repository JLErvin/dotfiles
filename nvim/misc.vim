" yaml
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" java gradle path syntastic fix
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
