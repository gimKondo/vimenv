" Vim syntax file
" Maintainer:	gim_kondo <dkondo0731@msd.biglobe.ne.jp>
" Create: 	2013 Feb 111
" Last Change: 
" Bugs:

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case match

" global variable
syntax keyword pscGlobal Game Debug
" API
syntax keyword pscApi OnHit
syntax keyword pscApi GetPlayer GetCombatTarget
syntax keyword pscApi MessageBox Trace
" Built-in Type
syntax keyword pscType ObjectReference

" 
syntax keyword pscKeyword Event EndEvent if EndIf
syntax keyword pscKeyword Scriptname extends
syntax region pscOperator start='[*/>=+-]' end='[ 0-9]'he=e-1

syntax region pscString start=/"/ skip=/\\./ end=/"/
syn match   pscNumber	"\<\d\+[lLjJ]\=\>" display
syn match   pscFloat	"\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   pscFloat	"\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   pscFloat	"\<\d\+\.\d*\([eE][+-]\=\d\+\)\=[jJ]\=" display

syntax region pscComment start=/{/ end=/}/

highlight link pscGlobal Define
highlight link pscApi Function
highlight link pscType Type
highlight link pscKeyword Keyword
highlight link pscString String
highlight link pscComment Comment
highlight link pscOperator Operator

highlight link pscNumber Number
highlight link pscFloat Float

let b:current_syntax = "psc"

