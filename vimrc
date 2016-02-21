" Author: Sen Zhang
" Mail: szhang.hust@gmail.com
" Github: https://github.com/SenZhangAI

execute pathogen#infect()

source ~/.vim/vimrcs/vundles.vim
source ~/.vim/vimrcs/settings.vim
source ~/.vim/vimrcs/plugins_setting.vim
source ~/.vim/vimrcs/neoComplete.vim
source ~/.vim/vimrcs/custom_hotkey.vim
source ~/.vim/vimrcs/snipMate.vim
source ~/.vim/vimrcs/presentation_mode.vim
source ~/.vim/vimrcs/writer_mode.vim

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
  colorscheme Tomorrow-Night-Bright
catch
endtry
