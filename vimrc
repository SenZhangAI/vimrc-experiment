" Author: Sen Zhang
" Mail: szhang.hust@gmail.com
" Github: https://github.com/SenZhangAI

source $HOME/.vim/vimrcs/plugins.vim
source $HOME/.vim/vimrcs/settings.vim
source $HOME/.vim/vimrcs/plugins_setting.vim
source $HOME/.vim/vimrcs/neoComplete.vim
source $HOME/.vim/vimrcs/custom_config.vim
source $HOME/.vim/vimrcs/custom_hotkey.vim
source $HOME/.vim/vimrcs/presentation_mode.vim
source $HOME/.vim/vimrcs/writer_mode.vim

syntax on                             " syntax highlight
syntax enable
set t_Co=256
try
  if has("gui_running")
    colorscheme solarized
    set background=dark
  else
    " @see xterm-256-chart: https://en.wikipedia.org/wiki/File:Xterm_256color_chart.svg

    " "desert for Ubuntu
      "colorscheme desert256
      "set background=dark
      "" "set terminal backgroundRGB=44 0 30
      "hi Normal ctermbg=NONE
      "hi NoText ctermbg=NONE
      "hi CursorLine cterm=NONE ctermbg=53

    " "solarized dark
      set termguicolors
      let g:solarized_termcolors=256
       "set terminal backgroundRGB=0 43 54
      colorscheme solarized
      set background=dark

    " " solarized light
      "set termguicolors
      "let g:solarized_termcolors=256
      "colorscheme solarized
      "set background=light

    " "Tomorrow Night Bright
      "colorscheme Tomorrow-Night-Bright

    " "gruvbox
      "colorscheme gruvbox
      "set background=dark

    " "mololai
      "let g:rehash256=1
      "colorscheme molokai
      "set background=dark
  endif

  " easy-motion{
  hi EasyMotionTarget2FirstDefault cterm=bold ctermbg=none ctermfg=202
  hi EasyMotionTarget2SecondDefault cterm=bold ctermbg=none ctermfg=202
  " } end easy-motion

  " syntastic{
  hi SyntasicWarningSign term=bold cterm=bold ctermbg=none ctermfg=214 guifg=#ffaf00 guibg=none
  " } end syntastic

catch
endtry

if has("win32unix") " for Cygwin
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
endif
