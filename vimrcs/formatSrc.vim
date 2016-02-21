
" use plugin:vim-autoformat instead

"map <leader>fm :call FormatSrc()<CR>

"func! FormatSrc()
  "exec "w"
  "if &filetype == 'c'
    "exec "!astyle --style=google -a --suffix=none %"
  "elseif &filetype == 'cpp' || &filetype == 'hpp'
    "exec "r !astyle --style=google --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
  "elseif &filetype == 'perl'
    "exec "!astyle --style=gnu --suffix=none %"
  "elseif &filetype == 'py'|| &filetype == 'python'
    "exec "r !autopep8 -i --aggressive %"
  "elseif &filetype == 'java'
    "exec "!astyle --style=java --suffix=none %"
  "elseif &filetype == 'jsp'
    "exec "!astyle --style=gnu --suffix=none %"
  "elseif &filetype == 'xml'
    "exec "!astyle --style=gnu --suffix=none %"
  "else
    "exec "normal gg=G"
    "return
  "endif
  "exec "e! %"
"endfunc
