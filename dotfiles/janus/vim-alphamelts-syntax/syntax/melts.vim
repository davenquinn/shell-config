" Vim AlphaMELTS syntax file
" Daven Quinn, 2016

if exists("b:current_syntax")
  finish
endif

syntax match Statement /^ALPHAMELTS_\w*/
syntax match Statement /^ADIABAT_\w*/

syntax match Structure /^\w.*\(:\s\)\@=/
syntax match Comment /^!.*$/

