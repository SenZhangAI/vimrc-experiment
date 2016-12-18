if executable("go")
  nnoremap <buffer> <F5> :w<CR>:!go run %<CR>
  nnoremap <buffer> <leader>ae :w<CR>:!gofmt %<CR>
  setlocal makeprg=go\ run\ %
else
  nnoremap <buffer> <F5> :echo "No [go] found!"
endif
