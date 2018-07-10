" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  set background=light

  set termguicolors
  let g:solarized_termcolors=256
  colorscheme solarized
  "let g:airline_theme='luna'
  exec "RainbowToggleOn"
endfunction

function! PresentationModeOff()
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  set background=dark

  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  colorscheme solarized
  set background=dark
  exec "RainbowToggleOn"
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

