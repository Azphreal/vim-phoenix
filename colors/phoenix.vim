" ############################################################################
" Name:       Phoenix color scheme
" Maintainer: Danu Widatama <widatama@gmail.com>
" License:    MIT
" ############################################################################


set background=dark

hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'phoenix'

if exists("g:phoenix_acc")
  let s:accent = g:phoenix_acc
else
  let s:accent = ""
endif

if exists("g:phoenix_bg")
  let s:background = g:phoenix_bg
else
  let s:background = ""
endif


" ============================================================================
" Colors
" ----------------------------------------------------------------------------

let s:bg        = { "gui": "#191919", "cterm": "234" }
let s:bg80      = { "gui": "#2d2d2d", "cterm": "236" }
let s:fg        = { "gui": "#cccccc", "cterm": "252" }
let s:invis     = { "gui": "#6a6a6a", "cterm": "242" }
let s:comment   = { "gui": "#555555", "cterm": "240" }
let s:cursor    = { "gui": "#292929", "cterm": "235" }
let s:cursor80  = { "gui": "#111111", "cterm": "233" }
let s:selection = { "gui": "#515151", "cterm": "239" }
let s:variable  = { "gui": "#787878", "cterm": "243" }
let s:operator  = { "gui": "#aaaaaa", "cterm": "247" }
let s:function  = { "gui": "#efefef", "cterm": "255" }
let s:class     = { "gui": "#dddddd", "cterm": "253" }

let s:white     =  { "gui": "#ffffff", "cterm": "007" }
let s:black     =  { "gui": "#000000", "cterm": "000" }
let s:blue_pri   = { "gui": "#40bdff", "cterm": "039" }
let s:blue_sec   = { "gui": "#5697b8", "cterm": "039" }
let s:blue_ter   = { "gui": "#64b2db", "cterm": "039" }
let s:red_pri    = { "gui": "#ff3d23", "cterm": "001" }
let s:red_sec    = { "gui": "#c04b43", "cterm": "001" }
let s:red_ter    = { "gui": "#c5282f", "cterm": "001" }
let s:yellow_pri = { "gui": "#dedd5a", "cterm": "003" }
let s:yellow_sec = { "gui": "#91812b", "cterm": "003" }
let s:yellow_ter = { "gui": "#c3ba4d", "cterm": "003" }
let s:green_pri  = { "gui": "#87bf19", "cterm": "226" }
let s:green_sec  = { "gui": "#9fb785", "cterm": "226" }
let s:green_ter  = { "gui": "#65910f", "cterm": "226" }
let s:orange_pri = { "gui": "#c88623", "cterm": "208" }
let s:orange_sec = { "gui": "#b58913", "cterm": "208" }
let s:orange_ter = { "gui": "#fbbe1c", "cterm": "208" }
let s:purple_pri = { "gui": "#b294bb", "cterm": "013" }
let s:purple_sec = { "gui": "#a582a3", "cterm": "013" }
let s:purple_ter = { "gui": "#d1afdd", "cterm": "013" }

function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun

function! s:sp(group, fg, gattr, cattr)
    exec "hi " . a:group . " guisp=" . a:fg.gui . " guibg=NONE gui=" . a:gattr . " ctermfg=255 ctermbg=" . a:fg.cterm . " cterm=" . a:cattr
endfun


" ============================================================================
" Text Markup
" ----------------------------------------------------------------------------

call s:h("Normal",      s:fg,       "", "")
call s:h("NonText",     s:invis,    "", "")
call s:h("Comment",     s:comment,  "", "")
call s:h("Constant",    s:blue_pri, "", "")
call s:h("Directory",   s:blue_pri, "", "")
call s:h("Identifier",  s:variable, "", "")
call s:h("PreProc",     s:variable, "", "")
call s:h("Special",     s:function, "", "")
call s:h("Statement",   s:fg,       "", "")
call s:h("Title",       s:fg,       "", "bold")
call s:h("Type",        s:blue_ter, "", "")
call s:h("SpecialKey",  s:blue_pri, "", "")
call s:h("Conditional", s:blue_ter, "", "")
call s:h("Operator",    s:operator, "", "")
call s:h("Exception",   s:blue_ter, "", "")
call s:h("Label",       s:blue_ter, "", "")
call s:h("Repeat",      s:blue_ter, "", "")
call s:h("Keyword",     s:blue_ter, "", "")
call s:h("String",      s:blue_sec, "", "")
call s:h("Character",   s:blue_pri, "", "")
call s:h("Boolean",     s:blue_pri, "", "")
call s:h("Number",      s:blue_pri, "", "")
call s:h("Function",    s:function, "", "")
call s:h("Underlined",  s:fg,       "", "underline")

if s:background == "eighties"
  hi Normal                   guibg=s:bg80                             ctermbg=000
endif

if s:accent == "red"
  call s:h("Constant",    s:red_pri, "", "")
  call s:h("Directory",   s:red_pri, "", "")
  call s:h("Type",        s:red_ter, "", "")
  call s:h("SpecialKey",  s:red_pri, "", "")
  call s:h("Conditional", s:red_ter, "", "")
  call s:h("Exception",   s:red_ter, "", "")
  call s:h("Label",       s:red_ter, "", "")
  call s:h("Repeat",      s:red_ter, "", "")
  call s:h("Keyword",     s:red_ter, "", "")
  call s:h("String",      s:red_sec, "", "")
  call s:h("Character",   s:red_pri, "", "")
  call s:h("Boolean",     s:red_pri, "", "")
  call s:h("Number",      s:red_pri, "", "")
endif

if s:accent == "green"
  call s:h("Constant",    s:green_pri, "", "")
  call s:h("Directory",   s:green_pri, "", "")
  call s:h("Type",        s:green_ter, "", "")
  call s:h("SpecialKey",  s:green_pri, "", "")
  call s:h("Conditional", s:green_ter, "", "")
  call s:h("Exception",   s:green_ter, "", "")
  call s:h("Label",       s:green_ter, "", "")
  call s:h("Repeat",      s:green_ter, "", "")
  call s:h("Keyword",     s:green_ter, "", "")
  call s:h("String",      g:green_sec, "", "")
  call s:h("Character",   s:green_pri, "", "")
  call s:h("Boolean",     s:green_pri, "", "")
  call s:h("Number",      s:green_pri, "", "")
endif

if s:accent == "yellow"
  call s:h("Constant",    s:yellow_pri, "", "")
  call s:h("Directory",   s:yellow_pri, "", "")
  call s:h("Type",        s:yellow_ter, "", "")
  call s:h("SpecialKey",  s:yellow_pri, "", "")
  call s:h("Conditional", s:yellow_ter, "", "")
  call s:h("Exception",   s:yellow_ter, "", "")
  call s:h("Label",       s:yellow_ter, "", "")
  call s:h("Repeat",      s:yellow_ter, "", "")
  call s:h("Keyword",     s:yellow_ter, "", "")
  call s:h("String",      s:yellow_sec, "", "")
  call s:h("Character",   s:yellow_pri, "", "")
  call s:h("Boolean",     s:yellow_pri, "", "")
  call s:h("Number",      s:yellow_pri, "", "")
endif

if s:accent == "orange"
  call s:h("Constant",    s:orange_pri, "", "")
  call s:h("Directory",   s:orange_pri, "", "")
  call s:h("Type",        s:orange_ter, "", "")
  call s:h("SpecialKey",  s:orange_pri, "", "")
  call s:h("Conditional", s:orange_ter, "", "")
  call s:h("Exception",   s:orange_ter, "", "")
  call s:h("Label",       s:orange_ter, "", "")
  call s:h("Repeat",      s:orange_ter, "", "")
  call s:h("Keyword",     s:orange_ter, "", "")
  call s:h("String",      orange_sec,   "", "")
  call s:h("Character",   s:orange_pri, "", "")
  call s:h("Boolean",     s:orange_pri, "", "")
  call s:h("Number",      s:orange_pri, "", "")
endif

if s:accent == "purple"
  call s:h("Constant",    s:purple_pri, "", "")
  call s:h("Directory",   s:purple_pri, "", "")
  call s:h("Type",        s:purple_ter, "", "")
  call s:h("SpecialKey",  s:purple_pri, "", "")
  call s:h("Conditional", s:purple_ter, "", "")
  call s:h("Exception",   s:purple_ter, "", "")
  call s:h("Label",       s:purple_ter, "", "")
  call s:h("Repeat",      s:purple_ter, "", "")
  call s:h("Keyword",     s:purple_ter, "", "")
  call s:h("String",      s:purple_sec, "", "")
  call s:h("Character",   s:purple_pri, "", "")
  call s:h("Boolean",     s:purple_pri, "", "")
  call s:h("Number",      s:purple_pri, "", "")
endif



" ============================================================================
" Highlighting
" ----------------------------------------------------------------------------

call s:h("Cursor",       s:invis,      s:function,  "")
call s:h("CursorIM",     s:bg,         s:fg,        "")
call s:h("CursorColumn", "",           s:cursor,    "")
call s:h("CursorLine",   "",           s:cursor,    "")
call s:h("Visual",       s:function,   s:selection, "")
call s:h("VisualNOS",    s:function,   s:selection, "")
call s:h("IncSearch",    s:function,   s:blue_ter,  "")
call s:h("MatchParen",   s:bg,         s:blue_pri,  "")
call s:h("Search",       s:function,   s:blue_pri,  "")
call s:h("Error",        s:red_pri,    "",          "bold")
call s:h("Todo",         s:yellow_pri, "",          "bold")

if s:background == "eighties"
  call s:h("CursorLine", "", s:cursor80, "")
endif

if s:accent == "red"
  call s:h("IncSearch",  s:function, s:red_ter, "")
  call s:h("MatchParen", s:bg,       s:red_pri, "")
  call s:h("Search",     s:white,    s:red_pri, "")
endif

if s:accent == "green"
  call s:h("IncSearch",  s:bg, s:green_ter, "")
  call s:h("MatchParen", s:bg, s:green_pri, "")
  call s:h("Search",     s:bg, s:green_pri, "")
endif

if s:accent == "yellow"
  call s:h("IncSearch",  s:bg, s:yellow_ter, "")
  call s:h("MatchParen", s:bg, s:yellow_pri, "")
  call s:h("Search",     s:bg, s:yellow_pri, "")
endif

if s:accent == "orange"
  call s:h("IncSearch",  s:white, s:orange_ter, "")
  call s:h("MatchParen", s:bg,    s:orange_pri, "")
  call s:h("Search",     s:white, s:orange_pri, "")
endif

if s:accent == "purple"
  call s:h("IncSearch",  s:white, s:purple_ter, "")
  call s:h("MatchParen", s:bg,    s:purple_pri, "")
  call s:h("Search",     s:white, s:purple_pri, "")
endif



" ============================================================================
" Messages
" ----------------------------------------------------------------------------

call s:h("Question",   s:blue_ter,   "", "")
call s:h("ErrorMsg",   s:red_pri,    "", "bold")
call s:h("MoreMsg",    s:green_pri,  "", "")
call s:h("WarningMsg", s:yellow_pri, "", "")




" ============================================================================
" UI
" ----------------------------------------------------------------------------

call s:h("ColorColumn",  s:fg,       s:cursor,    "bold")
call s:h("Pmenu",        s:function, s:bg,        "")
call s:h("PmenuSel",     s:function, s:blue_pri,  "")
call s:h("PmenuThumb",   s:function, s:blue_pri,  "")
call s:h("StatusLine",   s:fg,       "",          "")
call s:h("StatusLineNC", s:fg,       "",          "")
call s:h("CursorLineNr", s:fg,       s:cursor,    "bold")
call s:h("TabLine",      s:fg,       "",          "")
call s:h("TabLineFill",  s:fg,       "",          "")
call s:h("FoldColumn",   s:bg,       s:blue_pri,  "")
call s:h("Folded",       s:bg,       s:blue_pri,  "")
"call s:h("LineNr",       s:invis,    #0F0F0F,     "")
call s:h("LineNr",       s:invis,    s:bg,        "")
call s:h("SignColumn",   s:function, "",          "")
call s:h("VertSplit",    s:operator, "",          "")
call s:h("WildMenu",     s:bg,       s:blue_pri,  "")
"call s:h("OverLength",   "",         #20272F,     "")
call s:h("OverLength",   "",         s:selection, "")

if s:background == "eighties"
  call s:h("CursorLineNr", s:fg,    s:cursor80, "bold")
  call s:h("LineNr",       s:invis, s:bg80,     "")
endif

if s:accent == "red"
  call s:h("PmenuSel",   s:function, s:red_pri, "")
  call s:h("PmenuThumb", s:function, s:red_pri, "")
  call s:h("FoldColumn", s:bg,       s:red_pri, "")
  call s:h("Folded",     s:bg,       s:red_pri, "")
  call s:h("WildMenu",   s:bg,       s:red_pri, "")
  "call s:h("OverLength", "",         #641900,   "")
endif

if s:accent == "green"
  call  s:h("PmenuSel",   s:bg, s:green_pri, "")
  call  s:h("PmenuThumb", s:bg, s:green_pri, "")
  call  s:h("FoldColumn", s:bg, s:green_pri, "")
  call  s:h("Folded",     s:bg, s:green_pri, "")
  call  s:h("WildMenu",   s:bg, s:green_pri, "")
  "call s:h("OverLength",  "",   #32321E,     "")
endif

if s:accent == "yellow"
  call s:h("PmenuSel",   s:bg, s:yellow_pri, "")
  call s:h("PmenuThumb", s:bg, s:yellow_pri, "")
  call s:h("FoldColumn", s:bg, s:yellow_pri, "")
  call s:h("Folded",     s:bg, s:yellow_pri, "")
  call s:h("WildMenu",   s:bg, s:yellow_pri, "")
  "call s:h("OverLength", "",   #4B4B19,      "")
endif

if s:accent == "orange"
  call s:h("PmenuSel",   s:white, s:orange_pri, "")
  call s:h("PmenuThumb", s:white, s:orange_pri, "")
  call s:h("FoldColumn", s:bg,    s:orange_pri, "")
  call s:h("Folded",     s:bg,    s:orange_pri, "")
  call s:h("WildMenu",   s:bg,    s:orange_pri, "")
  "call s:h("OverLength", "",      #443A16,      "")
endif

if s:accent == "purple"
  call s:h("PmenuSel",   s:bg, s:purple_pri, "")
  call s:h("PmenuThumb", s:bg, s:purple_pri, "")
  call s:h("FoldColumn", s:bg, s:purple_pri, "")
  call s:h("Folded",     s:bg, s:purple_pri, "")
  call s:h("WildMenu",   s:bg, s:purple_pri, "")
  "call s:h("OverLength", "",   #332238,      "")
endif


" ============================================================================
" Diff
" ----------------------------------------------------------------------------

call s:h("DiffAdd",                s:green_pri,  "", "bold")
call s:h("DiffChange",             s:yellow_pri, "", "bold")
call s:h("DiffDelete",             s:red_pri,    "", "bold")
call s:h("DiffText",               s:fg,         "", "bold")
call s:h("GitGutterAddDefault",    s:green_pri,  "", "")
call s:h("GitGutterChangeDefault", s:yellow_pri, "", "")
call s:h("GitGutterDeleteDefault", s:red_pri,    "", "")




" ============================================================================
" Spelling
" ----------------------------------------------------------------------------

"hi SpellBad                   guisp=s:red_pri guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=009   cterm=underline
"hi SpellCap                   guisp=s:green_pri guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=002   cterm=underline
"hi SpellLocal                 guisp=s:yellow_pri guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=226   cterm=underline
"hi SpellRare                  guisp=s:yellow_pri guibg=NONE    gui=undercurl  ctermfg=255  ctermbg=226   cterm=underline
call s:sp("SpellBad",   s:red_pri,    "undercurl", "underline")
call s:sp("SpellCap",   s:green_pri,  "undercurl", "underline")
call s:sp("SpellLocal", s:yellow_pri, "undercurl", "underline")
call s:sp("SpellRare",  s:yellow_pri, "undercurl", "underline")




" ============================================================================
" Others
" ----------------------------------------------------------------------------

call s:h("helpSpecial",       s:fg,       "",         "")
call s:h("helpHyperTextJump", s:blue_pri, "",         "underline")
call s:h("helpNote",          s:fg,       "",         "")
call s:h("IndentGuidesEven",  "",         s:cursor80, "")
call s:h("IndentGuidesOdd",   "",         s:bg80,     "")

if s:accent == "red"
  call s:h("helpHyperTextJump", s:red_pri, "", "underline")
endif

if s:accent == "green"
  call s:h("helpHyperTextJump", s:green_pri, "", "underline")
endif

if s:accent == "yellow"
  call s:h("helpHyperTextJump", s:yellow_pri, "", "underline")
endif

if s:accent == "orange"
  call s:h("helpHyperTextJump", s:orange_pri, "", "underline")
endif

if s:accent == "orange"
  call s:h("helpHyperTextJump", s:purple_pri, "", "underline")
endif



" ============================================================================
" Specific Language Syntax
" ----------------------------------------------------------------------------

" Markdown
" ----------------------------------------------------------------------------

hi link                       markdownLinkText            PreProc
hi link                       markdownHeadingDelimiter    Number
hi link                       markdownHeader              Number
hi link                       markdownInlineCode          PreProc
hi link                       markdownFencedCodeBlock     PreProc
hi link                       markdownCodeBlock           PreProc


let g:phoenix_acc=""
let g:phoenix_bg=""

function! SetPhoenix(background, accent)
  let g:phoenix_bg=a:background
  let g:phoenix_acc=a:accent
endfunction

command! PhoenixBlue call SetPhoenix("normal", "blue")
            \ | colorscheme phoenix
command! PhoenixRed call SetPhoenix("normal", "red")
            \ | colorscheme phoenix
command! PhoenixGreen call SetPhoenix("normal", "green")
            \ | colorscheme phoenix
command! PhoenixYellow call SetPhoenix("normal", "yellow")
            \ | colorscheme phoenix
command! PhoenixOrange call SetPhoenix("normal", "orange")
            \ | colorscheme phoenix
command! PhoenixPurple call SetPhoenix("normal", "purple")
            \ | colorscheme phoenix

command! PhoenixBlueEighties call SetPhoenix("eighties", "blue")
            \ | colorscheme phoenix
command! PhoenixRedEighties call SetPhoenix("eighties", "red")
            \ | colorscheme phoenix
command! PhoenixGreenEighties call SetPhoenix("eighties", "green")
            \ | colorscheme phoenix
command! PhoenixYellowEighties call SetPhoenix("eighties", "yellow")
            \ | colorscheme phoenix
command! PhoenixOrangeEighties call SetPhoenix("eighties", "orange")
            \ | colorscheme phoenix
command! PhoenixPurpleEighties call SetPhoenix("eighties", "purple")
            \ | colorscheme phoenix
