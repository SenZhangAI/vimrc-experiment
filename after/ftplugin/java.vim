
if executable("javac")
  nnoremap <buffer> <F5> :w<CR>:!javac % && time java %:r
  setlocal makeprg=javac\ %\ &&\ time\ java\ %:r
else
  nnoremap <buffer> <F5> :echo "No [Javac] found!"
endif
