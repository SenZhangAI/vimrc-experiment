" Author: Sen Zhang
" Mail: szhang.hust@gmail.com
" Github: https://github.com/SenZhangAI

execute pathogen#infect()

source ./vimrcs/vundles.vim
source ./vimrcs/settings.vim
source ./vimrcs/plugins_setting.vim
source ./vimrcs/neoComplete.vim
source ./vimrcs/custom_hotkey.vim
source ./vimrcs/snipMate.vim
source ./vimrcs/presentation_mode.vim
source ./vimrcs/writer_mode.vim

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
  colorscheme Tomorrow-Night-Bright
catch
endtry
