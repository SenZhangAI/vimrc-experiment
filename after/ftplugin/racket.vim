if executable("racket")
  nnoremap <buffer> <F5> :% w !racket -t %<CR>
else
  nnoremap <buffer> <F5> :echo "you need to install [racket] first!"<CR>
endif

let b:delimitMate_expand_cr = 0
let b:delimitMate_balance_matchpairs = 0
let b:delimitMate_quotes = "\""
