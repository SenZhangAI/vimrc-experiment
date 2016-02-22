
if executable("php")
  nnoremap <buffer> <F5> :% w !php<CR>
else
  nnoremap <buffer> <F5> :echo "you need to install [PHP] first!"<CR>
endif
