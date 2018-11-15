" From landscape.vim
if exists('g:davenquinn_syntax_vimfiler') && g:davenquinn_syntax_vimfiler == 0
  finish
endif

if version < 700
  syntax clear
endif

let s:save_cpo = &cpo
set cpo&vim

syntax match vimfilerTypeArchive    /.*\ze\[A\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeDirectory  /.*\ze\[D\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeExecute    /.*\ze\[X\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeImage      /.*\ze\[I\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeLink       /.*\ze\[L\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeMultimedia /.*\ze\[M\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeSystem     /.*\ze\[S\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerTypeText       /.*\ze\[T\]/ contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
syntax match vimfilerPdfHtml        /\c.*\.\%(pdf\|html\) / contained containedin=vimfilerNormalFile contains=vimfilerColumn__Type,vimfilerColumn__Size,vimfilerColumn__Time
if has_key(g:, 'landscape_vimfiler_important')
  execute 'syntax match vimfilerImportant' string(g:landscape_vimfiler_important) 'contained containedin=vimfilerNonMark,vimfilerNormalFile,vimfilerClosedFile,vimfilerOpenedFile'
endif

hi default link vimfilerColumn__TimeToday DateOld
hi default link vimfilerColumn__TimeWeek DateToday
hi default link vimfilerColumn__TimeNormal DateWeek
hi default link vimfilerColumn__SizeLine Constant
hi default link vimfilerClosedFile Path
hi default link vimfilerCurrentDirectory Path
hi default link vimfilerImportant SpecialChar
hi default link vimfilerMarkedFile Marked
hi default link vimfilerNonMark Icon
hi default link vimfilerOpenedFile Path
hi default link vimfilerPdfHtml PdfHtml
hi default link vimfilerTypeArchive Archive
hi default link vimfilerTypeDirectory Path
hi default link vimfilerTypeExecute Exe
hi default link vimfilerTypeImage Image
hi default link vimfilerTypeLink Link
hi default link vimfilerTypeMultimedia Multimedia
hi default link vimfilerTypeSystem System
hi default link vimfilerTypeText Text

let &cpo = s:save_cpo
unlet s:save_cpo
