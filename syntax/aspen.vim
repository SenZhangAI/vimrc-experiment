" Vim syntax file
" Language:	Aspen
" Description:  The local language used in Aspen
" Maintainer:	Sen Zhang<szhang.hust@gmail.com>
" Last Change:	2016.3.7

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword aspenStatement call Call Model End
syn keyword aspenType fixed realvariable
syn keyword aspenAs   as

"integer number, or floating point number without a dot.
syn match aspenNumber		"\<\d\+\>"
"floating point number, with dot
syn match aspenNumber		"\<\d\+\.\d*\>"

syn region aspenComment start="//" skip="\\$" end="$"

syn match aspenFunc /\w\+\s*(\@=/
syn match aspenSpecial /\$\w\+/

hi link aspenType      Type
hi link aspenStatement Statement
hi link aspenNumber    Number
hi link aspenComment   Comment
hi link aspenAs        Keyword
hi link aspenFunc      Function
hi link aspenSpecial   Special

let b:current_syntax = "apsen"

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
