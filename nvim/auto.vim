" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so.6.0'
