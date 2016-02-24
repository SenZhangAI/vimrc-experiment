" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

  if has("gui_macvim")
    "set guifont=Monaco:h22           " for Mac
  elseif has("gui_running")
    " as default solaried & luna theme
  else
    "colorscheme Tomorrow
    let g:solarized_termcolors=256
    let g:solarized_termtrans=0
    colorscheme solarized
    set background=light
    "let g:airline_theme='luna'
    exec "RainbowToggleOn"
  end
endfunction

function! PresentationModeOff()
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  set background=dark

  if has("gui_macvim")
    "set guifont=Monaco:h17           " for Mac
  elseif has("gui_running")
    " as default solarzied & luna theme
  else
    "colorscheme Tomorrow-Night-Bright

    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    colorscheme solarized
    set background=dark
    "let g:airline_theme='luna'
    exec "RainbowToggleOn"
  end
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>

