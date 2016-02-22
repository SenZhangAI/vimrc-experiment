
if executable("perl")
  nnoremap <buffer> <F5> :% w !perl %<CR>
else
  nnoremap <buffer> <F5> :echo "you need to install [Perl] first!"<CR>
end
