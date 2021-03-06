" ======================================
"            Key (re)Mapping
" ======================================
" Description: this setting include:
" 0. geek_mapping
" 1. base_mapping
" 2. advance_mapping
" 3. plugins_mapping
" 4. custom plugins hotkey
" 4. key map timeouts
" Note: some plugins mapping are define near the plugins setting.
" and default keymaps of the plugins are not included.

" geek_mapping {
" Note: Other map settings for special type(such as cpp)
" are in after/ftplugin/special_type.vim(such as cpp.vim)
"
  " quick go to normal-mode
    inoremap jk <ESC>

  " map command-mode to ;
    "nnoremap ; :

  " delimiteMate jump
    imap ;' <Plug>delimitMateJumpMany
" } geek_mapping

" base_mapping {
  " modify leader
  let mapleader = ','
  let g:mapleader = ','

  " map backspce to delete a character
    noremap <BS> X

  " map ctrl+c and ctrl+v
    "noremap <C-c> y
    "noremap <C-v> P

  " navigating for long lines
    nnoremap <UP> gk
    nnoremap <DOWN> gj

  " select ALL
    nnoremap <C-A> ggVG

  " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk

  " identation
    nmap > v><ESC>
    nmap < v<<ESC>
    vnoremap < <gv
    vnoremap > >gv

  " cancel searched highlight
    nnoremap // :nohlsearch<CR>

  " use arrow to shift buffer
    noremap <left> :bp<CR>
    noremap <right> :bn<CR>

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

  " 命令行模式增强，ctrl - a到行首， -e 到行尾
    cnoremap <C-j> <Down>
    cnoremap <C-k> <Up>
    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>
    cnoremap <C-h> <Left>
    cnoremap <C-l> <Right>

  " Allow using the repeat operator with a visual selection (!)
  " http://stackoverflow.com/a/8064607/127816
    vnoremap . :normal .<CR>

  " move lines up and down using ctrl+[jk]
    nmap gk mz:m-2<cr>`z
    nmap gj mz:m+<cr>`z
    vmap gj :m'>+<cr>`<my`>mzgv`yo`z
    vmap gk :m'<-2<cr>`>my`<mzgv`yo`z

  " Map <Leader>ff to display all lines with keyword under cursor
  " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

  " Map <Leader>m to auto make and run
    nmap <Leader>m :wa<CR>:make<CR> :cw<CR>

  " change single word under cursor to upper case
    nnoremap gh viwUe
  " change single word under cursor to lower case
    nnoremap gl viwue

" } end advance_mapping



" plugins_mapping {

  " fugitive {
  " git.  git操作最好命令行,vim里面处理简单diff编辑操作
    " :Gdiff  :Gstatus :Gvsplit
    nnoremap <leader>gd :Gdiff<CR>
    " not ready to open
    " <leader>gb maps to :Gblame<CR>
    " <leader>gs maps to :Gstatus<CR>
    " <leader>gl maps to :Glog<CR>
    " <leader>gc maps to :Gcommit<CR>
    " <leader>gp maps to :Git push<CR>
  " }

  " quickrun {
    nmap <Leader>r <Plug>(quickrun)
    map <Leader>qr :QuickRun<CR>
  " }

  " Nerdcomment {
    map <silent> \\ <Plug>NERDCommenterToggle
  " } end Nerdcomment

  " ctrlsf {
  nmap <Leader>sf <Plug>CtrlSFCwordPath<CR>
  vmap <Leader>sf <Plug>CtrlSFVwordPath<CR>
  " Note: cannot use <CR> or <C-m> for open
  " Use : <sapce> or <tab>
  let g:ctrlsf_mapping = {
      \ "open"  : "<Space>",
      \ "openb" : "O",
      \ "tab"   : "t",
      \ "tabb"  : "T",
      \ "prevw" : "p",
      \ "quit"  : "q",
      \ "next"  : "<C-J>",
      \ "prev"  : "<C-K>",
      \ "pquit" : "q",
      \ }
  " } end ctrlsf

  " Ag(silver searcher) {
    if executable("Ag")
      let g:ackprg = 'ag --vimgrep'
      noremap FF :Ag<SPACE>
    else
      if executable("ag")
      let g:ackprg = 'ag --vimgrep'
        noremap FF :ag<SPACE>
      else
        if executable("ack")
          noremap FF :Ack<SPACE>
        else
          noremap FF :echo "need to install ACK or AG first! e.g. Ubuntu install: apt-get install silversearcher-ag"<CR>
        endif
      endif
    endif
  " } end Ag

  " delimitMate {
    " map for <CR> has been set with delimitMateCR and NeoComplete
    imap <expr> <BS> pumvisible() ? "\<C-h>" : "<Plug>delimitMateBS"
    imap <C-d> <Plug>delimitMateS-Tab
  " } delimitMate

  " easy_align {
    " Start interactive EasyAlign in visual mode(e.g. vip<hotkey>)
    vmap \= <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. <hotkey>ip)
    nmap \= <Plug>(EasyAlign)
  " } end easy_align

  " wildfire{
    " This selects the next closest text object.
    map + <Plug>(wildfire-fuel)
    " This selects the previous closest text object.
    vmap _ <Plug>(wildfire-water)
  " } end wild-fire

  " UltiSnips {
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    nmap <Leader>ue :UltiSnipsEdit<CR>
    let g:UltiSnipsExpandTrigger="<C-y>"
    "let g:UltiSnipsJumpForwardTrigger="<Tab>"
    "let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"
    let g:UltiSnipsEnableSnipMate=0
  " } end UltiSnips

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

  " NERDTree {
    " open directory of current opened file
    nnoremap <silent> <F2> :NERDTreeToggle<CR>
    map <leader>n :NERDTreeFind<cr>
  " } end NERDTree

  " Tagbar {
    nmap <F3> :TagbarToggle<CR>
  " } end Tagbar

  " toggle fold {
    let g:FoldMethod = 0
    map <F4> :call ToggleFold()<cr>
    fun! ToggleFold()
        if g:FoldMethod == 0
            exe "normal! zM"
            let g:FoldMethod = 1
        else
            exe "normal! zR"
            let g:FoldMethod = 0
        endif
    endfun
  " } end toggle fold

  " numbers {
    " relative/absolute numbering
    nnoremap <F6> :NumbersToggle<CR>
  " } end numbers

  " toggle wrap {
    " toggle wrap by key: cow
    "nnoremap <F7> :set wrap? wrap!<CR>
  " } end toggle wrap

  " css_color {
    nnoremap <F8> :call css_color#toggle()<CR>
  " } end css_color

  " toggle syntax {
    " can make open file quicker
    nnoremap <F9> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
  " } end toggle syntax

  " toggle wrap {
    " toggle list by key: col
    "nnoremap <F10> :set list! list?<CR>
  " } end toggle wrap

  " goldenView {
    let g:goldenview__enable_default_mapping = 0
    nmap <F11> :ToggleGoldenViewAutoResize<CR>
    " 1. split to tiled windows
    nmap <silent> <C-L>  <Plug>GoldenViewSplit

    " 2. quickly switch current window with the main pane
    " and toggle back
    nmap <silent> <Leader><F8>   <Plug>GoldenViewSwitchMain
    nmap <silent> <Leader><S-F8> <Plug>GoldenViewSwitchToggle

    " 3. jump to next and previous window
    nmap <silent> <Leader><C-N>  <Plug>GoldenViewNext
    nmap <silent> <Leader><C-P>  <Plug>GoldenViewPreviousiew {
  " } end goldenView

  " SuperTab {
    let g:SuperTabDefaultCompletionType="<c-n>"
    let g:SuperTabContextDefaultCompletionType="<c-n>"
  " } end SuperTab

  " vim-autoformat {
    noremap <leader>af :Autoformat<CR>:w<CR>
  " } end vim-autoformat

  " vimwiki {
    " solve the key conflict <Ctrl><SPACE> with Input Method
    nmap <Leader>tt :VimwikiToggleListItem<CR>
  " } end vimwiki

  " neoComplete {
    " @see plugins setting of neoComplete
  " } end neoComplete

  " vim-over {
    nmap <Leader>; :OverCommandLine<CR>
    vmap <Leader>; :OverCommandLine<CR>
  " } end vim-over

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
" the auto_run settings are writen in after/ftplugin/
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
