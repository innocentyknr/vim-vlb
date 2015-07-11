"Vim indent file
" Language:VLB

" if exists('b:did_indent')
"     finish
" endif
echom 'load indent file'
setlocal autoindent
setlocal indentexpr=GetVLBIndent()
setlocal expandtab
setlocal indentkeys=0{,0},0),0],!^F,o,O,e
setlocal indentkeys+==~else,=~endif,=~next
let s:vlb_deindent_keywords =
            \ '^\s*\zs\<\%(else\|endif\|next\):\@!\>'
let s:vlb_indent_keywords =
            \ '^\s*\zs\<\%(if\|for\|label\):\@!\>'

function! GetVLBIndent()
    let pnum = prevnonblank(v:lnum-1)
    let pline = getline(v:lnum-1)
    let cline = getline(v:lnum)
    echom pline
"     echom cline
    let ind = indent(v:lnum-1)
"     echom ind
    if cline =~ s:vlb_deindent_keywords && pline =~s:vlb_indent_keywords
        echo 'test'
       return ind
    endif 
    if pline =~ s:vlb_indent_keywords
        echo 'test3'
       return ind+&l:shiftwidth
   endif 
    if cline =~ s:vlb_deindent_keywords 
        echo 'test1'
        return ind-&l:shiftwidth
    endif
    return ind 
endfunction

let b:did_indent = 1

" _END_
