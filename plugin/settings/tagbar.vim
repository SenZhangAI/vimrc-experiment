nmap <F4> :TagbarToggle<cr>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=35
let g:tagbar_indent=1
let g:tagbar_autopreview=1

" choose when need
let g:tagbar_iconchars = ['▶', '▼']  "(default on Linux and Mac OS X)
"let g:tagbar_iconchars = ['▸', '▾']
"let g:tagbar_iconchars = ['▷', '◢']
"let g:tagbar_iconchars = ['+', '-']  "(default on Windows)

autocmd FileType cpp,c,h,hpp,cc,cxx nested :call tagbar#autoopen(0)
