" personal Information

" UltiSnips {
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"
" } end UltiSnips

" syntastic {
let g:syntastic_cpp_include_dirs=['/usr/include']
" } end syntastic

" gutentags {
let g:gutentags_cache_dir='~/.vim_gutentags'
" } end gutentags

" tagbar {
let g:tagbar_ctags_bin='/usr/bin/ctags'
" } end tagbar

" vimwiki {
let g:vimwiki_list = [{'path': '~/my_vimwiki/vimwiki',
      \ 'path_html': '~/my_vimwiki/vimwiki_html',
      \ 'template_path': '~/my_vimwiki/vimwiki/template',
      \ 'template_default':"default.tpl"}]
" } end vimwiki

" cscope {
if has("cscope")
  set csprg=/usr/bin/cscope " should be setting to real path when new install
endif
" } end cscope


" marching {
" Note: marching plugin settings for c++ are writen in after/ftplugin/cpp.vim
  let g:marching_clang_command = "/usr/bin/clang.exe"
  let g:marching_include_paths = [
  \   "/lib/gcc/i686-pc-cygwin/4.9.3/include/c++"
  \]
  ""example:
  "\   "C:/MinGW/lib/gcc/mingw32/4.6.2/include/c++"
  "\   "C:/cpp/boost"
" } end marching
