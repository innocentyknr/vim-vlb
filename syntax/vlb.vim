"Vim syntax file
" Language: VLB

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore 
syn region vlbLineComment start=/rem/ end=/$/
syn keyword vlbRepeat for 
syn keyword vlbConditional if endif then else 
syn keyword vlbStatement goto gosub return end loabel
syn keyword vlbKeyword wait 
syn keyword vlbStructure dim 

syn region vlbString			start=+"+ end=+"+	oneline
syn match vlbNumber			"\<\d\+[ij]\=\>"
syn match vlbFloat			"\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"


if version >= 508 || !exists("did_vlb_syntax_inits")
  if version < 508
    let did_vlb_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink vlbOperator			Operator
  HiLink vlbFloat			Float
  HiLink vlbStructure Structure
  HiLink vlbFunction			Function
  HiLink vlbLineContinuation		Special
  HiLink vlbLabel			Label
  HiLink vlbConditional		Conditional
  HiLink vlbRepeat			Repeat
  HiLink vlbString			String
  HiLink vlbDelimiter		Identifier
  HiLink vlbTransposeOther		Identifier
  HiLink vlbNumber			Number
  HiLink vlbError			Error
  HiLink vlbStatement		Statement
  HiLink vlbComment			Comment

  delcommand HiLink
endif

let b:current_syntax = "vlb"

