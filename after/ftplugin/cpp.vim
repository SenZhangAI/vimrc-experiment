
if executable("clang++")
  nnoremap <buffer> <F5> :w<CR>:!clang++ -ggdb -pthread -std=c++11 % -o %:r.out && time ./%:r.out
  setlocal makeprg=clang++\ -ggdb\ -pthread\ -std=c++11\ %\ -o\ %:r.out\ &&\ time\ ./%:r.out
elseif executable("g++")
  nnoremap <buffer> <F5> :w<CR>:!g++ -ggdb -pthread -std=c++11 % -o %:r.out && time ./%:r.out
  setlocal makeprg=g++\ -ggdb\ -pthread\ -std=c++11\ %\ -o\ %:r.out\ &&\ time\ ./%:r.out
else
  nnoremap <buffer> <F5> :echo "No [clang++] or [g++] found!"
endif
