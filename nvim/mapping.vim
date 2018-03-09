imap jj <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <space> za
vnoremap <space> zf
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
autocmd filetype cpp nnoremap <F10> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
set backspace=indent,eol,start

map <F10> :call CompileFile()<CR>
function! CompileFile()
	let current_filetype = &filetype
	if current_filetype == 'python'
		:!python %:t
	endif
	if current_filetype == 'java'
		:w
		:!javac "%"
		:!java -cp "%:p:h" "%:t:r"
	endif
endfunction
