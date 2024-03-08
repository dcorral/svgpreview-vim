if exists("g:loaded_svgpreview")
  finish
endif
let g:loaded_svgpreview = 1

command! SVGPreview call svgpreview#Preview()

