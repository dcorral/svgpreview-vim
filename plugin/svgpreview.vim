" plugin/mysvgpreview.vim
if exists("g:loaded_mysvgpreview")
  finish
endif
let g:loaded_mysvgpreview = 1

command! SVGPreview call mysvgpreview#Preview()

