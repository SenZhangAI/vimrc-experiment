
if executable("clang++")
  nnoremap <buffer> <F5> :w<CR>:!clang++ -ggdb -pthread -std=c++11 % -o %:r.out && time ./%:r.out && rm %:r.out<CR>
  setlocal makeprg=clang++\ -pthread\ -std=c++11\ %\ -o\ %:r.out\ &&\ time\ ./%:r.out\ &&\ rm\ %:r.out
elseif executable("g++")
  nnoremap <buffer> <F5> :w<CR>:!gcc % -o %:r.out && time ./%:r.out && rm %:r.out<CR>
  setlocal makeprg=g++\ %\ -o\ %:r.out
else
  nnoremap <buffer> <F5> :echo "No [clang++] or [g++] found!"
endif
