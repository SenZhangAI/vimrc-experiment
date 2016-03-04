" personal config

" UltiSnips {
" 输出目录：存放UltiSnips的Snippets的文件夹
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"
" } end UltiSnips

" syntastic {
" 输入目录：syntastic检查cpp错误时会搜索这些include文件，如STL、boost、自己的库
" 如果在include中没找到某些类型声明将被syntastic检测为错误
let g:syntastic_cpp_include_dirs=['/usr/include']
" } end syntastic

" gutentags {
" 输出目录：gutentags自动生成tags的存放目录，如不设置将存放在各个项目主目录中
let g:gutentags_cache_dir='~/.vim_gutentags'
" } end gutentags

" tagbar {
" 输入目录：tagbar调用ctags命令的路径
let g:tagbar_ctags_bin='/usr/bin/ctags'
" } end tagbar

" vimwiki {
" 输出目录: vimwiki保持wiki文件、配置以及输出html的路径
let g:vimwiki_list = [{'path': '~/my_vimwiki/vimwiki',
      \ 'path_html': '~/my_vimwiki/vimwiki_html',
      \ 'template_path': '~/my_vimwiki/vimwiki/template',
      \ 'template_default':"default.tpl"}]
" } end vimwiki

" cscope {
" 输入目录：vim调用cscope时需要知道cscope的路径
if has("cscope")
  set csprg=/usr/bin/cscope " should be setting to real path when new install
endif
" } end cscope


" marching {
" 输入目录：marching需要调用clang，需要知道其目录，
" include_path将收集该目录下的tags以实现诸如STL，Boost，或者自己的库的补全
"
" Note: marching plugin settings for c++ are writen in after/ftplugin/cpp.vim
  let g:marching_clang_command = "/usr/bin/clang.exe"
  let g:marching_include_paths = [
  \   "/lib/gcc/i686-pc-cygwin/4.9.3/include/c++"
  \]
  ""example:
  "\   "C:/MinGW/lib/gcc/mingw32/4.6.2/include/c++"
  "\   "C:/cpp/boost"
" } end marching
