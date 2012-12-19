" outputcurrent.vim Version 1.0
" Description: use ':VOC cmd' to view output of vim command in current buffer
" Author: gim_kondo

if exists("loaded_outputcurrent") | finish | endif
let loaded_outputcurrent=1

function! OutputCurrent(cmd)
    let save_reg=@a
    redir @a
    silent exec a:cmd
    redir END
    if strlen(substitute(@a, "[^\n]", "", "g")) < 4
        " fix for 'silent map' bug which produces output without newlines
        let save_more=&more
        set nomore
        redir @a
        exec a:cmd
        redir END
        let &more = save_more
    endif
    put a
    let @a=save_reg
endfunction

" VOC - view output of vim command in current buffer
command! -narg=+ VOC :call OutputCurrent(<q-args>)
