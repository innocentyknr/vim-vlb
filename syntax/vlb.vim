"Vim syntax file
"Language: VLB

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore 
setlocal iskeyword+=$
syn region vlbLineComment start=/rem/ end=/$/
syn keyword vlbRepeat for to 
syn keyword vlbConditional if endif then else next
syn keyword vlbStatement goto gosub return end label on 
syn keyword vlbFunction exp log sin asin cos acos tan atan int frac abs ran sgn max min sqr sqrt mod hex$ dec euler val str$ time$ dtime$ date$ left$ right$ mid$ len instr$ lower$ upper$ print input bell inkey$ inkey2$ cls locate open close mouseb mouseb2 mousex mousey window image line text dot circlef circle box boxf gcolor bcolor read restore
syn keyword vlbOperator and or not
syn keyword vlbKeyword wait pi 
syn keyword vlbStructure dim data  

syn region vlbString		start=+"+ end=+"+	oneline
syn match vlbNumber			"\<\d\+[ij]\=\>"
syn match vlbFloat			"\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"



if version >= 508 || !exists("did_vlb_syntax_inits")
  if version < 508
    let did_vlb_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink vlbFloat			Float
  HiLink vlbStructure Structure
  HiLink vlbFunction			Function
  HiLink vlbConditional		Conditional
  HiLink vlbRepeat			Repeat
  HiLink vlbString			String
  HiLink vlbNumber			Number
  HiLink vlbStatement		Statement
  HiLink vlbLineComment			Comment

  delcommand HiLink
endif

let b:current_syntax = "vlb"

