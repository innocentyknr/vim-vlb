"Vim indent file
" Language:VLB

if exists('b:did_indent')
    finish
endif
setlocal autoindent
setlocal indentexpr=GetVLBIndent()
setlocal expandtab
setlocal indentkeys=0{,0},0),0],!^F,o,O,e
setlocal indentkeys+==~else,=~endif,=~next
let s:vlb_deindent_keywords =
            \ '^\s*\zs\<\%(else\|endif\|next\):\@!\>'
let s:vlb_indent_keywords =
            \ '^\s*\zs\<\%(if\|for\|else\):\@!\>'

function! GetVLBIndent()
    let pnum = prevnonblank(v:lnum-1)
    let pline = getline(pnum)
    let cline = getline(v:lnum)
    let ind = indent(pnum)
    if cline =~ s:vlb_deindent_keywords && pline =~s:vlb_indent_keywords
       return ind
    endif 
    if pline =~ s:vlb_indent_keywords
       return ind+&l:shiftwidth
   endif 
    if cline =~ s:vlb_deindent_keywords 
        return ind-&l:shiftwidth
    endif
    return ind 
endfunction

let b:did_indent = 1
" _END_
