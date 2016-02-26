" ======================================
"            Plugins Setting
" ======================================
" Description: This is the recommented plugins setting:

" Ag {
" if silver searcher is installed, use `ag` instead of `ack`
" for more information, please visit https://github.com/ggreer/the_silver_searcher
let g:ag_highlight = 1
" } end Ag

" airline {
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
if has("win32unix") && !has("gui_running") " cygwin terminal
  let g:airline_powerline_fonts=0
  "let g:airline_left_sep = '»'
  "let g:airline_right_sep = '«'
  let g:airline_left_sep = '>'
  let g:airline_right_sep = '<'
  let g:airline_symbols.whitespace = "\ua0"
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '☀'
endif
let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts=1
let Powerline_symbols='fancy'
let g:bufferline_echo=0
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_nr_format='%s: '

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
" } end airline

" cpp_enhanced_highlight {
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
" } end cpp_enhanced_highlight


" cscope {
if has("cscope")
  set csprg=/usr/bin/cscope " should be setting to real path when new install
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb
endif
" } end cscope

" ctrlp {
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
  \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
  \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" } end ctrlp

" ctrlsf {
" let g:ctrlsf_position = 'below'
" let g:ctrlsf_winsize = '30%'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_confirm_save = 0
" } end ctrlsf

" gitgutter {
let g:gitgutter_on_bufenter = 0
"let g:gundo_help=0
" } end gitgutter

" Gundo {
"let g:gundo_preview_height = 20
"let g:gundo_help=0
" } end Gundo

""indentLine {
"" Vim
"let g:indentline_color_term = 239
""Gvim
"let g:indentline_color_gui = '#A4E57E'
"" none X terminal
"let g:indentline_color_tty_light = 7 " default: 4
"let g:indentline_color_dark = 1 " default: 2
"" } end indentLine

" indent-guides {
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" terminal
if !has("gui_running")
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=235
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=239
end
" } end indent-guides

" rainbow {
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'firebrick3', 'darkorange3',  'firebrick','seagreen3'],
    \   'ctermfgs': ['blue', 'red', 'brown', 'lightblue', 'darkred',  'darkcyan', 'darkmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

" } end rainbow

" markdown {
" LaTex math: support $x^2$, $$x^2$$ syntax
let g:vim_markdown_math=1
" Highlight YAML frontmatter as used by jekyll
let g:vim_markdown_frontmatter=1
let g:vim_markdown_conceal = 0
" } end markdown

" NERDTree {
let NERDTreeChDirMode=2
let NERDTreeMouseMode=2
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_gui_startup=0

" make nerdtree look nice
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=30
let NERDTreeIgnore=['\.pyc$']

" close window if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" } end NERDTree

" surround {
let g:surround_113="#{\r}"     " v
let g:surround_35="#{\r}"      " #
let g:surround_45="<% \r %>"   " -
let g:surround_61="<%= \r %>"  " =
" } end surround

" syntastic {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = '✗'      "set error or warning signs
"let g:syntastic_warning_symbol = '⚠'
let g:syntastic_warning_symbol = '>'
let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting = 0
" pyflakes is faster then pylint
"let g:syntastic_python_checkers=['pyflakes']
"let g:syntastic_javascript_checkers=['jsl','jshint']
"let g:syntastic_html_checkers=['tidy','jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 1

" C++ settings
let g:syntastic_cpp_include_dirs=['/usr/include']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11' "GCC options
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' "Clang opthons(not good for cygwin)
" } end syntastic

" quick-scope{
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
if has("gui_running")
  let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
  let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
else
  let g:qs_first_occurrence_highlight_color = 155       " terminal vim
  let g:qs_second_occurrence_highlight_color = 81         " terminal vim
end
" } end quick-scope

" wildfire{
" } end wild-fire

" gutentags {
"let g:gutentags_project_root=['.git', '.hg', '.svn']
let g:gutentags_project_root=['.git', '.svn']
let g:gutentags_generate_on_new = 0
let g:gutentags_cache_dir='~/.vim_gutentags'
" } end gutentags

" tagbar {
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=35
let g:tagbar_indent=1
let g:tagbar_autopreview=1

" choose when need
"let g:tagbar_iconchars = ['▶', '▼']  "(default on Linux and Mac OS X)
let g:tagbar_iconchars = ['▸', '▾']
"let g:tagbar_iconchars = ['▷', '◢']
"let g:tagbar_iconchars = ['+', '-']  "(default on Windows)

"auto open tagbar when open C/C++ file
"autocmd FileType cpp,c,h,hpp,cc,cxx nested :call tagbar#autoopen(0)
" } end tagbar

" vimcdoc {
" Vim plugin to set the default help language to Chinese
" Maintainer:	Willis (http://vimcdoc.sf.net)
" Last Change: 2008 Dec 12
if exists("g:loaded_vimcdoc")
  finish
endif
let g:loaded_vimcdoc = 1

if version >= 603
  set helplang=cn
endif
" } end vimcdoc

" vim-autoformat {
let g:formatdef_astyle_google_cpp = '"astyle --mode=c --style=google -pcfHU -k1".(&expandtab ? "s".shiftwidth() : "t")'
let g:formatdef_astyle_sen_cpp = '"astyle --mode=c --style=java -xj -xw -xC120 -xL -OowYypcfHU -k1".(&expandtab ? "s".shiftwidth() : "t")'
"let g:formatters_cpp = ['clangformat', 'astyle_cpp']
let g:formatters_cpp = ['astyle_sen_cpp']
" } end vim-autoformat

" delimitMate {
let delimitMate_jump_expansion = 1
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2
let delimitMate_expand_inside_quotes = 1
let delimitMate_balance_matchpairs = 1
au FileType c,cpp,java let b:delimitMate_insert_eol_marker = 2
au FileType c,cpp,java let b:delimitMate_eol_marker = ";"
" } delimitMate

" vimwiki {
" @see https://github.com/hotoo/vimrc/blob/master/vimrc
" @see https://github.com/ktmud/dotfiles/blob/master/.vimrc
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1
let g:vimwiki_timestamp_format='%Y年%m月%d日 %H:%M:%S'
let g:vimwiki_list = [{'path': '~/my_vimwiki/vimwiki',
      \ 'path_html': '~/my_vimwiki/vimwiki_html',
      \ 'template_path': '~/my_vimwiki/vimwiki/template',
      \ 'template_default':"default.tpl"}]
" } end vimwiki
