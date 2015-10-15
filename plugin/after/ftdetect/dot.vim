" dot file in graphviz
if executable("dot")

  if executable("explorer") "use in Windows or Cygwin
    autocmd BufRead,BufNewFile *.dot map <F5> :!dot -Tpng -o %:r.png % && explorer %:r.png<CR><CR>
  elseif executable("gnome-open") "use in gnome
    autocmd BufRead,BufNewFile *.dot map <F5> :!dot -Tpng -o %:r.png % && gnome-open %:r.png<CR><CR>
  elseif executable("xdg-open") "use in gnome or kde
    autocmd BufRead,BufNewFile *.dot map <F5> :!dot -Tpng -o %:r.png % && xdg-open %:r.png<CR><CR>
  else "no quick-view for graph
    autocmd BufRead,BufNewFile *.dot map <F5> :!dot -Tpng -o %:r.png % <CR>
  endif

else
  autocmd BufRead,BufNewFile *.dot map <F5> :echo "command: dot not found. \n you may need to install graphviz first"<CR>
endif
