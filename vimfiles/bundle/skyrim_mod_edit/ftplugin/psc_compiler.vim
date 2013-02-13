" File: psc_compiler.vim
" Version: 1.0
" Author: gim_kondo
" Required: environment variable "SKYRIMDIR" set "$Steam/steamapps/common/Skyrim"
" Description: 
"   <F7> compile script
" Create: 2013 Feb 12
" Last Modified:

if exists("loaded_tes_script_compiler") | finish | endif
let loaded_tes_script_compiler=1

" compile script
function! Tes_script_compile() range
	" set script infomation	
	let l:dst = "Compile Output"
    let l:src = "\"" . expand('%:p') . "\""
	let l:engine = ":%! \"" . $SKYRIMDIR . "\\Papyrus Compiler\\PapyrusCompiler.exe\" "
    let l:fopt = " -f=\"" . $SKYRIMDIR . "\\Data\\Scripts\\Source\\TESV_Papyrus_Flags.flg\""
    let l:iopt = " -i=\"" . $SKYRIMDIR . "\\Data\\Scripts\\Source\""
    let l:oopt = " -o=\"" . $SKYRIMDIR . "\\Data\\Scripts\""

	" open the preview window
	if &co > 140
		silent execute ":vert bel pedit! " . l:dst
	else
		silent execute ":pedit! " . l:dst
	endif
	" change to preview window
	wincmd P
	" set options
	setlocal buftype=nofile
	setlocal noswapfile
	setlocal syntax=none
	setlocal bufhidden=delete
    setlocal fileformat=dos
	" replace current buffer with compile's output
	silent execute l:engine . l:src . l:fopt . l:iopt . l:oopt
	" change back to the source buffer
	wincmd p
	
endfunction

" compile script by F7
nmap <silent> <F7> :w<CR>:call Tes_script_compile()<CR><C-w>=
