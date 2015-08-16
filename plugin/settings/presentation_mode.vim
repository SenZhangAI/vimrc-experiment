" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  set background=light

  if has("gui_macvim")
    "set guifont=Monaco:h22           " for Mac
  elseif has("gui_running")
    " as default solaried & luna theme
  else
    colorscheme Tomorrow
    let g:airline_theme='tomorrow'
  end
endfunction

function! PresentationModeOff()
  set background=dark

  if has("gui_macvim")
    "set guifont=Monaco:h17           " for Mac
  elseif has("gui_running")
    " as default solaried & luna theme
  else
    colorscheme Tomorrow-Night-Bright
    let g:airline_theme='tomorrow'
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

