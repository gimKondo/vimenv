" File: scriptrunner.vim
" Version: 1.0
" Author: gim_kondo
" Description: 
"   <F10> preview interpreter's output 
"   <S-F10> close preview window
"   <C-F10> save and run script on shell
"
"	now, supported Ruby, Haskell(ghc) and Io
" Last Modified: 2012 Dec 20

if exists("loaded_execute_on_preview") | finish | endif
let loaded_execute_on_preview=1

" preview interpreter's output(refer to Vim's Tip #1244)
function! Preview_script_output() range
	" set script infomation	
	if &filetype == "ruby"
		let l:dst = "Ruby Output"
		let l:engine = ":%! ruby "
	elseif &filetype == "haskell"
		let l:dst = "Haskell Output"
		let l:engine = ":%! runghc "
	elseif &filetype == "io"
		let l:dst = "Io Output"
		let l:engine = ":%! io "
	endif

	" make temporary file to write source code
	let l:src = tempname()
	" put current buffer's content in a temp file
	silent execute ": " . a:firstline . "," . a:lastline . "w " . l:src
	" open the preview window
	silent execute ":pedit! " . l:dst
	" change to preview window
	wincmd P
	" set options
	setlocal buftype=nofile
	setlocal noswapfile
	setlocal syntax=none
	setlocal bufhidden=delete
	" replace current buffer with Io's output
	silent execute l:engine . l:src . " 2>&1 "
	" change back to the source buffer
	wincmd p
	
endfunction

" run script on shell
function! Execute_script_on_shell() range
	if &filetype == "ruby"
		execute ":!ruby " . expand('%')
	elseif &filetype == "haskell"
		execute ":!runghc " . expand('%')
	elseif &filetype == "io"
		execute ":!io " . expand('%')
	endif
endfunction

" run script, and output the result
vmap <silent> <F10> :call Preview_script_output()<CR>
nmap <silent> <F10> mzggVG<F10>`z
map  <silent> <S-F10> :pc<CR>

" save and run script on shell
nmap <silent> <C-F10> :w<CR>:call Execute_script_on_shell()<CR>

