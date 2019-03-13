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
"execute 'syntax match vimfilerImportant' string(g:landscape_vimfiler_important) 'contained containedin=vimfilerNonMark,vimfilerNormalFile,vimfilerClosedFile,vimfilerOpenedFile'

hi link vimfilerDirectory Directory
hi link vimfilerOpenedFile Directory
hi link vimfilerClosedFile Directory
hi link vimfilerCurrentDirectory Directory


"syntax match vimfilerTypeDirectory /\w\S\+\// contained containedin=vimfilerTypeDirectoryContainer
syn match vimfilerDirSlash  /\/\s\+/ contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match vimfilerWhitespace /\s\+/ contained containedIn=vimfilerDirSlash,vimfilerNormalFile,vimfilerTypeExecute
syn match vimfilerUnimportantDir  /\(__\w\+\|node_modules\|\w\+\.\(egg-info\)\)/ containedIn=vimfilerOpenedFile,vimfilerClosedFile

syn match NerdTreeFileBuild #^\s\+\(Makefile\|Rakefile\)#  contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeFileBuild #^\s\+.*\(do\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile

syn match NerdTreeFileImage #^.*\.\(png\|jpe\=g\|svg\|pdf\|tiff\=\|e\=ps\|jp2\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeFileData #\s\+.*\.\(tsv\|json\|yaml\|cson\|csv\|pickle\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeFileDoc #^.*\.\(md\|txt\|tex\|docx\=\|xlsx\=\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeFileBoilerplate #\(package.json\|setup.py\|yarn.lock\|.gitignore\|.gitmodules\|.gitconfig\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeDirUnimportant #\s\+\(node_modules\|.git\|.redo\|\.*\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile
syn match NerdTreeDirCommon #\s\+\(bin\|includes\=\|lib\|build\|templates\|output\)# contained containedIn=vimfilerOpenedFile,vimfilerClosedFile

hi default link vimfilerColumn__TimeToday DateOld
hi default link vimfilerColumn__TimeWeek DateToday
hi default link vimfilerColumn__TimeNormal DateWeek
hi default link vimfilerColumn__SizeLine Constant
hi default link vimfilerImportant SpecialChar
hi default link vimfilerMarkedFile Marked
hi default link vimfilerNonMark Icon
hi default link vimfilerPdfHtml PdfHtml
hi default link vimfilerTypeArchive Archive
"hi default link vimfilerTypeDirectory Path
hi default link vimfilerTypeExecute Exe
hi default link vimfilerTypeImage Image
hi default link vimfilerTypeLink Link
hi default link vimfilerTypeMultimedia Multimedia
hi default link vimfilerTypeSystem System
hi default link vimfilerTypeText Text

highlight def link vimfilerWhitespace Normal
highlight def link vimfilerColumn__TypeText Comment
highlight def link vimfilerColumn__TypeImage Comment
highlight def link vimfilerColumn__TypeArchive Comment
highlight def link vimfilerColumn__TypeExecute Comment
highlight def link vimfilerColumn__TypeMultimedia Comment
highlight def link vimfilerColumn__TypeDirectory Comment
highlight def link vimfilerColumn__TypeSystem Comment
highlight def link vimfilerColumn__TypeLink Comment

let &cpo = s:save_cpo
unlet s:save_cpo
