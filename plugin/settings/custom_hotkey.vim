" ======================================
"            Key (re)Mapping
" ======================================
" Description: this setting include:
" 1. base_mapping
" 2. advance_mapping
" 3. plugins_mapping
" 4. custom plugins hotkey
" 4. key map timeouts
" Note: some plugins mapping are define near the plugins setting.
" and default keymaps of the plugins are not included.

if ( exists('g:loaded_custom_hotkey') )
	finish
endif
let g:loaded_custom_hotkey= 1

" base_mapping {

  " map backspce to delete a character
    noremap <BS> X

  " map ctrl+c and ctrl+v
    "noremap <C-c> y
    "noremap <C-v> P

  " navigating for long lines
    map <UP> gk
    map <DOWN> gj

  " select ALL
    map <C-A> ggVG

  " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk

  " identation
    nmap > v><ESC>
    nmap < v<<ESC>
    nmap <Tab> v><ESC>
    nmap <S-Tab> v<<ESC>
    vnoremap < <gv
    vnoremap > >gv

  " cancel searched highlight
    noremap <CR> :nohlsearch<CR>

" } end base_mapping


" advance_mapping {
" @see https://github.com/spf13/spf13-vim

  " folder level
    nmap <leader>f0 :set foldlevel=0<CR>
    nmap <leader>f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

  " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

  " Shortcuts
  " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

  " Allow using the repeat operator with a visual selection (!)
  " http://stackoverflow.com/a/8064607/127816
    vnoremap . :normal .<CR>

  " move lines up and down using ctrl+[jk]
    nmap <c-k> mz:m-2<cr>`z
    nmap <c-j> mz:m+<cr>`z
    vmap <c-j> :m'>+<cr>`<my`>mzgv`yo`z
    vmap <c-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " Map <Leader>ff to display all lines with keyword under cursor
  " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" } end advance_mapping



" plugins_mapping {

  " Nerdcomment {
    map <Leader><Leader> <Leader>c<space>
  " } end Nerdcomment

  " Ag(silver searcher) {
    if executable("Ag")
      let g:ackprg = 'ag --vimgrep'
      noremap FF :Ag<SPACE>
    else
      if executable("ack")
        noremap FF :Ack<SPACE>
      else
        noremap FF :echo "need to install ACK or AG first! e.g. Ubuntu install: apt-get install silversearcher-ag"<CR>
      endif
    endif
  " } end Ag

  " easy_align {
    " Start interactive EasyAlign in visual mode(e.g. vip<hotkey>)
    vmap <leader>= <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. <hotkey>ip)
    nmap <leader>a= <Plug>(EasyAlign)
  " } end easy_align

  " NERDTree {
    " open directory of current opened file
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    map <leader>r :NERDTreeFind<cr>
  " } end NERDTree

  " Gundo {
    nnoremap <F3> :GundoToggle<CR>
  " } end Gundo

  " Tagbar {
    nmap <F4> :TagbarToggle<cr>
  " } end Tagbar

  " numbers {
    " relative/absolute numbering
    nnoremap <F6> :NumbersToggle<CR>
  " } end numbers

  " SuperTab {
    let g:SuperTabDefaultCompletionType="<c-n>"
    let g:SuperTabContextDefaultCompletionType="<c-n>"
  " } end SuperTab

  " vimwiki {
    " solve the key conflict <Ctrl><SPACE> with Input Method
    nmap <Leader>tt :VimwikiToggleListItem<CR>
  " } end vimwiki

  " neoComplete {
    " @see plugins setting of neoComplete
  " } end neoComplete

  " cscope {
    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls

    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

  " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
  " makes the vim window split horizontally, with search result displayed in
  " the new window.
  "
  " (Note: earlier versions of vim may not have the :scs command, but it
  " can be simulated roughly via:
  "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

  " Hitting CTRL-space *twice* before the search type does a vertical
  " split instead of a horizontal one (vim 6 and up only)
  "
  " (Note: you may wish to put a 'set splitright' in your .vimrc
  " if you prefer the new window on the right instead of the left
    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
  " } end cscope

" } end plugins_mapping


" custom_plugins {
" auto_run {
" Description: default map <F5> to auto run single file
"
" Python {
if executable("python")
  autocmd BufRead,BufNewFile *.py map <F5> :% w !python<CR>
else
  autocmd BufRead,BufNewFile *.py map <F5> :echo "you need to install Python first!"<CR>
endif
" } end Python

" dot {
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
" } end dot

" CoffeeScript {
if executable("coffee")
  autocmd BufRead,BufNewFile *.coffee map <F5> :CoffeeRun<CR>
else
  autocmd BufRead,BufNewFile *.coffee map <F5> :echo "you need to install CoffeeScript first!"<CR>
endif
" end CoffeeScript

" VimScript {
autocmd BufRead,BufNewFile *.vim map <F5> :source %<CR>:echon "script reloaded!"<CR>
" } end VimScript

" Ruby {
if executable("ruby")
  autocmd BufRead,BufNewFile *.rb map <F5> :% w !ruby -w<CR>
else
  autocmd BufRead,BufNewFile *.rb map <F5> :echo "you need to install Ruby first!"<CR>
endif
" } end Ruby

" PHP {
if executable("php")
  autocmd BufRead,BufNewFile *.php map <F5> :% w !php<CR>
else
  autocmd BufRead,BufNewFile *.php map <F5> :echo "you need to install PHP first!"<CR>
endif
" end PHP

" perl {
if executable("perl")
  autocmd BufRead,BufNewFile *.pl map <F5> :% w !perl %<CR>
else
  autocmd BufRead,BufNewFile *.pl map <F5> :echo "you need to install Perl first!"<CR>
end
" end perl

" } end auto_run
" } end custom_plugins



" key map timeouts {

  " By default Vim will only wait 1 second for each keystroke in a mapping.
  " You may find that too short with the above typemaps.  If so, you should
  " either turn off mapping timeouts via 'notimeout'.
  "set notimeout
  "
  " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
  " with your own personal favorite value (in milliseconds):
  "set timeoutlen=4000
  "
  " Either way, since mapping timeout settings by default also set the
  " timeouts for multicharacter 'keys codes' (like <F1>), you should also
  " set ttimeout and ttimeoutlen: otherwise, you will experience strange
  " delays as vim waits for a keystroke after you hit ESC (it will be
  " waiting to see if the ESC is actually part of a key code like <F1>).
  "set ttimeout
  "
  " personally, I find a tenth of a second to work well for key code
  " timeouts. If you experience problems and have a slow terminal or network
  " connection, set it higher.  If you don't set ttimeoutlen, the value for
  " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
  "set ttimeoutlen=100
" } end key map timeouts
"
