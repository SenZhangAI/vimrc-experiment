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
  " "desert for Ubuntu
    "colorscheme desert256
    "set background=dark
    "" "set terminal backgroundRGB=44 0 30
    "hi Normal ctermbg=NONE
    "hi NoText ctermbg=NONE
    "hi CursorLine cterm=NONE ctermbg=53

  " "solarized dark
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
     "set terminal backgroundRGB=0 43 54
    colorscheme solarized
    set background=dark
    hi CursorLine ctermbg=none
    hi CursorColumn ctermbg=none
    hi LineNr ctermbg=none ctermfg=244
    hi Normal ctermfg=249
    hi Comment ctermfg=242
    hi SpecialKey cterm=NONE ctermbg=none
    hi Todo ctermfg=214 guifg=#ffaf00 guibg=none

  " " solarized light
    "let g:solarized_termcolors=256
    "let g:solarized_termtrans=0
    "colorscheme solarized
    "set background=light
    "hi SpecialKey cterm=NONE ctermbg=none
    "hi Todo ctermfg=214 guifg=#ffaf00 guibg=none

  " "Tomorrow Night Bright
    "colorscheme Tomorrow-Night-Bright

  " "gruvbox
    "colorscheme gruvbox
    "set background=dark

  " "mololai
    "let g:rehash256=1
    "colorscheme molokai
    "set background=dark

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
