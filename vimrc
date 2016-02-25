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
syntax enable
set t_Co=256
try
  colorscheme Tomorrow-Night-Bright
catch
endtry

" changes the cursor shape/color
" in the terminal depending on the mode
" see http://code.google.com/p/iterm2/issues/detail?id=710&q=cursor
if &term =~ "xterm\\|rxvt"
  " use a | cursor in insert mode
  let &t_SI = "\<Esc>[5 q"

  " use a rectangle cursor otherwise
  let &t_EI = "\<Esc>[1 q"

  " reset cursor when vim exits

endif
