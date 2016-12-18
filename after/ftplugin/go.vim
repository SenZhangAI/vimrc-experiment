if executable("go")
  nnoremap <buffer> <F5> :w<CR>:!go run %
  setlocal makeprg=go\ run\ %
else
  nnoremap <buffer> <F5> :echo "No [go] found!"
endif
