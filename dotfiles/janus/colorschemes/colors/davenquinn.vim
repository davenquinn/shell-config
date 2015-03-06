hi clear
syntax reset

let g:colors_name = "davenquinn"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#e8e8e8 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=bold guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
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
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=bold guifg=#e06c85 guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#7eba5e guibg=#ecffe0
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Include gui=bold guifg=#c37cd0 guibg=NONE
    hi Structure gui=bold guifg=#fe818b guibg=NONE
    hi Function gui=NONE guifg=#19b880 guibg=NONE
    hi Repeat gui=bold guifg=#e06c85 guibg=NONE
    hi Operator gui=NONE guifg=#9b6f77 guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#737373 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#171717
    hi Comment gui=NONE guifg=#464646 guibg=NONE
    hi Conceal gui=NONE guifg=#737373 guibg=NONE
    hi Constant gui=NONE guifg=#737373 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#171717
    hi CursorLine gui=NONE guifg=NONE guibg=#171717
    hi CursorLineNr gui=NONE guifg=#666666 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#1a4736
    hi DiffChange gui=NONE guifg=NONE guibg=#171717
    hi DiffDelete gui=NONE guifg=#4b0000 guibg=#7d4547
    hi DiffText gui=NONE guifg=NONE guibg=#0a283d
    hi Directory gui=italic guifg=#008b8b guibg=#01220c
    hi Error gui=NONE guifg=NONE guibg=#230606
    hi ErrorMsg gui=NONE guifg=NONE guibg=#230505
    hi FoldColumn gui=NONE guifg=#575757 guibg=NONE
    hi Folded gui=NONE guifg=#666666 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#2e2e2e
    hi LineNr gui=NONE guifg=#575757 guibg=#181818
    hi MatchParen gui=NONE guifg=NONE guibg=#2e2e2e
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#554b58 guibg=NONE
    hi Normal gui=NONE guifg=#a0a0a0 guibg=#121212
    hi Number gui=NONE guifg=#0e9eb4 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#171717
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
    hi Statement gui=bold guifg=#469dd3 guibg=#041c29
    hi StatusLine gui=NONE guifg=#8f8f8f guibg=#242424
    hi StatusLineNC gui=NONE guifg=#666666 guibg=#242424
    hi StorageClass gui=NONE guifg=#064789 guibg=NONE
    "hi String gui=NONE guifg=#92cd8e guibg=#011901
    hi String gui=NONE guifg=#007b7b guibg=#101719
    hi TabLine gui=NONE guifg=#666666 guibg=#242424
    hi TabLineFill gui=NONE guifg=NONE guibg=#1a1a1a
    hi TabLineSel gui=NONE guifg=#8f8f8f guibg=#242424
    hi Title gui=bold guifg=#767fc7 guibg=#121536
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#7d64aa guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#2e2e2e guibg=#2e2e2e
    hi Visual gui=NONE guifg=NONE guibg=#2e2e2e
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#230505
    hi WildMenu gui=NONE guifg=NONE guibg=#4a4a4a
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Include gui=bold guifg=#765cad guibg=NONE
    hi Exception gui=bold guifg=#a23f44 guibg=#2d0102
    hi Function gui=NONE guifg=#4c849f guibg=NONE
    hi Structure gui=bold guifg=#8b80a3 guibg=#05293d
    hi Conditional gui=NONE guifg=#767fc7 guibg=#121536
    hi Repeat gui=NONE guifg=#767fc7 guibg=#121536
    hi Operator gui=NONE guifg=#888ba5 guibg=#080b26
    hi Identifier gui=NONE guifg=#469dd3 guibg=#041c29
    hi PreProc gui=NONE guifg=NONE guibg=NONE

    " Nerdtree
    hi NERDTreeDirSlash gui=NONE guifg=#171717 guibg=NONE
    hi NerdTreeOpenable gui=NONE guifg=#444444 guibg=NONE
    hi NerdTreeClosable gui=NONE guifg=#008b8b guibg=NONE
    " Pandoc
    hi pandocCiteKey gui=italic guifg=#134d8b guibg=#061628
    " Unused colors
    " #a14558
endif
