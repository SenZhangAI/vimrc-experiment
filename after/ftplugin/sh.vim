
if executable("bash")
  nnoremap <buffer> <F5> :% w !bash<CR>
else
  nnoremap <buffer> <F5> :echo "No [Bash] found!"<CR>
endif
