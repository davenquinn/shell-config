hi clear
syntax reset

" for vimshell, vimfiler, unite.vim
hi default link Command Function
hi default link GitCommand Constant
hi default link Arguments Type
hi default link PdfHtml Function
hi default link Archive Special
hi default link Image Type
hi default link Multimedia SpecialComment
hi default link System Comment
hi default link Text Constant
hi default link Link Constant
hi default link Exe Statement
hi default link Prompt PreCondit
hi default link Icon LineNr
hi Time gui=none guifg=#af87ff
hi Date gui=none guifg=#af87df
hi default link DateToday Special
hi default link DateWeek Identifier
hi default link DateOld Comment
hi default link Path Preproc
hi default link Marked StorageClass
hi default link Title Identifier

hi Interp gui=none guifg=#000000
hi InterpDelim gui=none guifg=#000000

"hi default link coffeeInterp Interp
"hi default link coffeeInterpDelim InterpDelim
"hi default link jsTemplateExpression Interp
"hi default link jsTemplateBraces InterpDelim

"syn cluster Interp add=coffeeInterp,jsTemplateExpression
"syn cluster InterpDelim add=coffeeInterpDelim,jsTemplateBraces

let g:colors_name = "davenquinn"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#c0c0c0 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=bold guifg=#fe818b guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=#f6f0f0 guibg=#f6f0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=#fafafa
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#4a4a4a guibg=#ffffff
    hi Number gui=NONE guifg=#5fbedd guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=underline guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=underline guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=underline guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=underline guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=bold guifg=#e06c85 guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi String gui=NONE guifg=#7eba5e guibg=#f0fbea
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=bold guifg=#767fc7 guibg=#e9ebf6
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=#e3e3e3
    hi Visual gui=NONE guifg=NONE guibg=#f2f2f2
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Include gui=bold guifg=#a087d3 guibg=NONE
    hi Structure gui=bold guifg=#fe818b guibg=NONE
    hi Function gui=NONE guifg=#19b880 guibg=NONE
    hi Repeat gui=bold guifg=#e06c85 guibg=NONE
    hi StorageClass gui=bold guifg=#a7d0fc guibg=NONE
    hi Operator gui=NONE guifg=#39a6ea guibg=#fafcff
    hi Identifier gui=NONE guifg=#39a6ea guibg=#f5faff
    hi PreProc gui=NONE guifg=#fe818b guibg=NONE
    " Nerdtree
    hi NERDTreeDirSlash gui=NONE guifg=#f5f5f5 guibg=NONE
    hi NerdTreeOpenable gui=NONE guifg=#aaaaaa guibg=NONE
    hi NerdTreeClosable gui=NONE guifg=#19b880 guibg=NONE
    " Pandoc
    hi pandocCiteKey gui=italic guifg=#67aef9 guibg=#d3e7fd
    " GitGutter (same as line numbers)
    hi SignColumn gui=NONE guifg=NONE guibg=#fafafa
    hi BracelessIndent gui=NONE guifg=NONE guibg=#eaeaff

    hi pandocLaTeXMath gui=NONE guifg=#555555 guibg=NONE

    hi Directory gui=bold guifg=#19b880 guibg=#f1fef9
    hi vimfilerDirSlash gui=bold guifg=#d0ecd9 guibg=#f1fef9
    hi vimfilerUnimportantDir gui=italic guifg=#24e8b0 guibg=#f1fef9

    " #39a6ea
    " #83afdd
    hi NerdTreeFileBuild gui=NONE guifg=#064789 guibg=NONE
    hi NerdTreeFileData gui=italic guifg=#aa9990 guibg=NONE
    hi NerdTreeFileImage gui=italic guifg=#8B5E75 guibg=NONE "#ba8184
    hi NerdTreeDirCommon gui=italic guifg=#006262 guibg=NONE "#102723
    hi NerdTreeFileBoilerplate gui=NONE guifg=#333333 guibg=NONE
    hi NerdTreeFileDoc gui=NONE guifg=#776290 guibg=NONE

    hi PythonStringDelimiter gui=NONE guifg=#9eda8e guibg=#f0fbea
    " Newline escapes
    hi NewlineEscape gui=bold guifg=#eeeeee
    hi Interp gui=NONE guifg=#fe818b guibg=#f0fbea
    hi InterpDelim gui=NONE guifg=#e06c85 guibg=#f0fbea
elseif &background == "dark"

    let g:terminal_ansi_colors = ['#073642', '#dc322f', '#859900', '#b58900', '#268bd2', '#d33682', '#2aa198', '#eee8d5',
          \ '#002b36', '#cb4b16', '#586e75', '#657b83', '#839496', '#6c71c4', '#93a1a1', '#fdf6e3']

    hi Boolean gui=NONE guifg=#737373 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#171717
    hi Comment gui=NONE guifg=#464646 guibg=NONE
    hi Conceal gui=NONE guifg=#737373 guibg=NONE
    hi Constant gui=bold guifg=#8B5E75 guibg=#080000
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#171717
    hi CursorLine gui=NONE guifg=NONE guibg=#171717
    hi CursorLineNr gui=NONE guifg=#666666 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#002205
    hi DiffChange gui=NONE guifg=NONE guibg=#171717
    hi DiffDelete gui=NONE guifg=#080808 guibg=#080808
    "hi DiffDelete gui=NONE guifg=#260003 guibg=#180006
    hi DiffText gui=NONE guifg=NONE guibg=#0a283d
    hi Error gui=NONE guifg=NONE guibg=#230606
    hi ErrorMsg gui=NONE guifg=NONE guibg=#230505
    hi FoldColumn gui=NONE guifg=#575757 guibg=NONE
    hi Folded gui=NONE guifg=#666666 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#2e2e2e
    hi LineNr gui=NONE guifg=#333333 guibg=#080808
    hi MatchParen gui=NONE guifg=NONE guibg=#2e2e2e
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=bold guifg=#101010 guibg=NONE
    """ Normal text
    hi Normal gui=NONE guifg=#a0a0a0 guibg=#010101
    hi Number gui=NONE guifg=#0e9eb4 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#151515
    hi PmenuSbar gui=NONE guifg=NONE guibg=#242424
    hi PmenuSel gui=NONE guifg=NONE guibg=#2e2e2e
    hi PmenuThumb gui=NONE guifg=NONE guibg=#3b3b3b
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#242424
    hi SignColumn gui=NONE guifg=#575757 guibg=NONE
    hi Special gui=NONE guifg=#737373 guibg=NONE
    hi SpecialKey gui=NONE guifg=#575757 guibg=NONE
    hi SpellBad gui=underline guisp=NONE guifg=NONE guibg=#271010
    hi SpellCap gui=underline guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=underline guisp=NONE guifg=NONE guibg=#052305
    hi SpellRare gui=underline guisp=NONE guifg=NONE guibg=#242424
    hi Statement gui=bold guifg=#064789 guibg=NONE
    hi StatusLine gui=NONE guifg=#303030 guibg=#111111
    hi StatusLineNC gui=NONE guifg=#242424 guibg=#111111
    hi String gui=NONE guifg=#008b8b guibg=#020A09
    "#007a61 guibg=NONE
    "#101719
    hi TabLine gui=NONE guifg=#666666 guibg=#242424
    hi TabLineFill gui=NONE guifg=NONE guibg=#1a1a1a
    hi TabLineSel gui=NONE guifg=#8f8f8f guibg=#242424
    hi Title gui=bold guifg=#767fc7 guibg=#121536
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#7d64aa guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#111111 guibg=#111111
    hi Visual gui=NONE guifg=NONE guibg=#202020
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#230505
    hi WildMenu gui=NONE guifg=NONE guibg=#4a4a4a
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Include gui=bold guifg=#765cad guibg=NONE
    hi Exception gui=bold guifg=#a23f44 guibg=#2d0102
    hi Function gui=NONE guifg=#4c849f guibg=NONE
    hi Structure gui=bold guifg=#8b80a3 guibg=#05293d
    hi Conditional gui=NONE guifg=#a193c8 guibg=#121536
    hi Repeat gui=NONE guifg=#888ba5 guibg=#121536
    hi Operator gui=NONE guifg=#767fc7 guibg=#080b26
    hi StorageClass gui=bold guifg=#064789 guibg=NONE
    hi Identifier gui=NONE guifg=#469dd3 guibg=#041c29
    hi PreProc gui=NONE guifg=#8B5E75 guibg=#080000

    " Nerdtree
    hi NERDTreeDirSlash gui=bold guifg=#051917 guibg=NONE
    hi NerdTreeOpenable gui=NONE guifg=#222222 guibg=NONE
    hi NerdTreeClosable gui=NONE guifg=#008b8b guibg=NONE
    " Pandoc
    " pandocLaTeXInlineMath
    hi pandocCiteKey gui=italic guifg=#1968bd guibg=#092543
    hi pandocLaTeXMath gui=NONE guifg=#555555 guibg=NONE


    hi link pandocFilterComment preProc
    "hi pandocFilterComment gui=NONE guifg=#8B5E75 guibg=NONE
    hi pandocFilterCommentDelimiter gui=italic guifg=#4A3A4B guibg=NONE
    hi pandocFilterHighlight gui=NONE guifg=#9BA565 guibg=NONE
    hi pandocFilterHighlightDelimiter gui=italic guifg=#4B6835 guibg=NONE
    hi pandocFilterBox gui=bold guifg=NONE guibg=NONE
    hi pandocFilterBoxDelimiter gui=italic guifg=NONE guibg=NONE

    hi Delimiter gui=NONE guifg=#383838 guibg=NONE

    " GitGutter (same as line numbers)
    hi SignColumn gui=NONE guifg=#554b58 guibg=#080808
    " Unused colors
    " #a14558
    " #92cd8e
    hi BracelessIndent gui=NONE guifg=NONE guibg=#061d3d
    hi Interp gui=NONE guifg=#A0898F guibg=#100000
    hi InterpDelim gui=NONE guifg=#8B5E75 guibg=#100000

    " Newline escapes
    hi NewlineEscape gui=bold guifg=#222222

    " Files etc
    hi PythonStringDelimiter gui=NONE guifg=#0B4741 guibg=#020A09
    hi Directory gui=bold guifg=#008b8b guibg=#051917
    hi vimfilerDirSlash gui=bold guifg=#003030 guibg=#051917
    hi vimfilerUnimportantDir gui=italic guifg=#003030 guibg=#051917

    hi NerdTreeFileBuild gui=NONE guifg=#064789 guibg=NONE
    hi NerdTreeFileData gui=italic guifg=#aa9990 guibg=NONE
    hi NerdTreeFileImage gui=italic guifg=#8B5E75 guibg=NONE "#ba8184
    hi NerdTreeDirCommon gui=italic guifg=#006262 guibg=#021008 "#102723
    hi NerdTreeFileBoilerplate gui=NONE guifg=#333333 guibg=NONE
    hi NerdTreeFileDoc gui=NONE guifg=#776290 guibg=NONE

    hi Terminal guifg=#a0a0a0 guibg=#010101
endif
