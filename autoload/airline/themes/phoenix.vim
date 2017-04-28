scriptencoding utf-8

let s:gui00   = "#000000"
let s:gui01   = "#111111"
let s:gui02   = "#191919"
let s:gui03   = "#292929"
let s:gui04   = "#2d2d2d"
let s:gui05   = "#515151"
let s:gui06   = "#555555"
let s:gui07   = "#6a6a6a"
let s:gui08   = "#787878"
let s:gui09   = "#aaaaaa"
let s:gui0a   = "#cccccc"
let s:gui0b   = "#dddddd"
let s:gui0c   = "#efefef"

let s:blue00   = "#40bdff"
let s:blue01   = "#5697b8"
let s:blue02   = "#64b2db"

let s:red00    = "#FF3D23"
let s:red01    = "#C04B43"
let s:red02    = "#C5282F"

let s:yellow00 = "#DEDD5A"
let s:yellow01 = "#91812B"
let s:yellow02 = "#C3BA4D"

let s:green00  = "#87BF19"
let s:green01  = "#9FB785"
let s:green02  = "#65910F"

let s:orange00 = "#C88623"
let s:orange01 = "#B58913"
let s:orange02 = "#FBBE1C"

let s:purple00 = "#B294BB"
let s:purple01 = "#A582A3"
let s:purple02 = "#D1AFDD"

let s:cterm00 = "000"
let s:cterm01 = "233"
let s:cterm02 = "234"
let s:cterm03 = "235"
let s:cterm04 = "236"
let s:cterm05 = "239"
let s:cterm06 = "240"
let s:cterm07 = "242"
let s:cterm08 = "243"
let s:cterm09 = "247"
let s:cterm0a = "252"
let s:cterm0b = "253"
let s:cterm0c = "255"

let s:cterm10 = "039"
let s:cterm11 = "001"
let s:cterm12 = "002"
let s:cterm13 = "226"
let s:cterm14 = "208"
let s:cterm15 = "013"

let s:guiWhite = "#cccccc"
let s:guiGray = "#555555"
let s:ctermWhite = "252"
let s:ctermGray = "240"

let g:airline#themes#phoenix#palette = {}
let s:modified = { 'airline_c': [ '#40bdff', '', 039, '', '' ] }

" Normal mode
let s:N1 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]
let s:N2 = [ s:gui00    , s:blue01 , s:cterm00   , s:cterm10  ]
let s:N3 = [ s:gui09    , s:gui01 , s:cterm09    , s:cterm01  ]
let g:airline#themes#phoenix#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#phoenix#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui00    , s:blue00 , s:cterm00   , s:cterm10  ]
let s:I2 = [ s:guiWhite , s:gui02 , s:ctermWhite , s:cterm02  ]
let s:I3 = s:N3
let g:airline#themes#phoenix#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#phoenix#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui00 , s:gui07 , s:cterm00 , s:cterm11 ]
let s:V2 = s:I2
let s:V3 = s:I3
let g:airline#themes#phoenix#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#phoenix#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:gui00 , s:gui0a , s:cterm00, s:cterm0a ]
let s:R2 = s:I2
let s:R3 = s:I3
let g:airline#themes#phoenix#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#phoenix#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:gui00 , s:gui03 , s:cterm00 , s:cterm03 ]
let s:IN2 = [ s:gui00 , s:gui02 , s:cterm00 , s:cterm02 ]
let s:IN3 = [ s:gui00 , s:gui01 , s:cterm00 , s:cterm01 ]
let g:airline#themes#phoenix#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#phoenix#palette.inactive_modified = s:modified

" CtrlP
"if !get(g:, 'loaded_ctrlp', 0)
 "finish
"endif

"let s:CP1 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
"let s:CP2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm01  ]
"let s:CP3 = [ s:guiWhite , s:gui0D , s:ctermWhite , s:cterm0D  ]

"let g:airline#themes#phoenix#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
