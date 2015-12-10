" =================
"  key remap
" =================

" identation
nmap > v>
nmap < v<

"this will cause conflict with snippetmate
"vmap <TAB> >gv
"vmap <S-TAB> <gv

" move lines up and down using ctrl+[jk]
nmap <c-k> mz:m-2<cr>`z
nmap <c-j> mz:m+<cr>`z
vmap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z

" comment
map <Leader><Leader> <Leader>c<space>

" cancel searched highlight
noremap <CR> :nohlsearch<CR>

" remap VIM 0
map 0 ^

" folder level
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

