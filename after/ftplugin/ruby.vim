
if executable("ruby")
  nnoremap <buffer> <F5> :% w !ruby -w<CR>
else
  nnoremap <buffer> <F5> :echo "you need to install [Ruby] first!"<CR>
endif
