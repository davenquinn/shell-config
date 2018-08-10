"syn include @HTML syntax/html.vim
"syn match pandocHTML /<\/\?\a[^>]\+>/ contains=@HTML
" Support HTML multi line comments
syn region pandocFilterComment start=/<comment>/ end=/<\/comment>/ matchgroup=pandocFilterCommentDelimiter keepend

hi link pandocFilterCommentDelimiter Delimiter
