if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1
let Powerline_symbols='fancy'
let g:bufferline_echo=0
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_nr_format='%s: '

"this airline_theme is default,
"will changed by shift presentation_mode

" for Mac
"if has("gui_macvim")
  "let g:airline_theme='solarized'

"" for gvim
"elseif has("gui_running")
  "let g:airline_theme='solarized'

"else
  "let g:airline_theme='tomorrow'
"end

" set all AirlineTheme to be the same
let g:airline_theme='luna'
