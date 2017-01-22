if executable("racket")
  nnoremap <buffer> <F5> :% w !racket -t %<CR>
else
  nnoremap <buffer> <F5> :echo "you need to install [racket] first!"<CR>
endif
