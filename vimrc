" Author: Sen Zhang
" Mail: szhang.hust@gmail.com
" Github: https://github.com/SenZhangAI

execute pathogen#infect()

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
  colorscheme Tomorrow-Night-Bright
catch
endtry
