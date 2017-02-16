
function! RedoSetFileType()
  let firstline = getline(1)
	if firstline =~ '^#!.*\<python3\=\>'
	  setfiletype python
	elseif firstline =~? '^#!.*\<node\>'
	  setfiletype javascript
	elseif firstline =~? '^#!.*\<coffee\>'
	  setfiletype coffee
	elseif firstline =~? '^#!.*\<zsh\>'
	  setfiletype zsh
	elseif firstline =~? '^#!.*\<bash\>'
	  setfiletype bash
  else
	  setfiletype sh
  endif
endfunction

autocmd! BufNewFile,BufRead *.do call RedoSetFileType()
