if executable("clang")
  nnoremap <buffer> <F5> :w<CR>:!clang % -o %:r.out && time ./%:r.out
  setlocal makeprg=clang\ %\ -o\ %:r.out\ &&\ time\ ./%:r.out
elseif executable("gcc")
  nnoremap <buffer> <F5> :w<CR>:!gcc % -o %:r.out && time ./%:r.out
  setlocal makeprg=gcc\ %\ -o\ %:r.out\ &&\ time\ ./%:r.out
else
  nnoremap <buffer> <F5> :echo "No [clang] or [gcc] found!"
endif
