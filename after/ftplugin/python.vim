
if executable("python")
  nnoremap <buffer> <F5> :% w !python<CR>
  setlocal makeprg=python\ %
else
  nnoremap <buffer> <F5> :echo "No [Python] found!"<CR>
endif
