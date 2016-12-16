if executable("go")
  nnoremap <buffer> <F5> :w<CR>:!go install % && time $GOBINCyg/%:t:r.exe
  setlocal makeprg=go\ intall\ %\ &&\ time\ $GOBINCyg/%:t:r.exe
else
  nnoremap <buffer> <F5> :echo "No [go] found!"
endif
