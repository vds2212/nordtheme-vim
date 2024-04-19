" Copyright (c) 2016-present Sven Greb <development@svengreb.de>
" This source code is licensed under the MIT license found in the license file.

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "nord"
let s:nord_vim_version="0.19.0"
set background=dark


let s:nord_dark_black_gui = "#3B4252"
let s:nord_dark_black_term = "0"
let s:dark_black= [s:nord_dark_black_gui, s:nord_dark_black_term]

let s:nord_light_black_gui = "#4C566A"
let s:nord_light_black_term = "8"
let s:light_black = [s:nord_light_black_gui, s:nord_light_black_term]

let s:nord_light_red_gui = "#BF616A"
let s:nord_light_red_term = "1"
let s:light_red = [s:nord_light_red_gui, s:nord_light_red_term]
" let s:dark_red = [s:nord_light_red_gui, s:nord_light_red_term]

let s:nord_light_green_gui = "#A3BE8C"
let s:nord_light_green_term = "2"
let s:light_green = [s:nord_light_green_gui, s:nord_light_green_term]
" let s:dark_green = [s:nord_light_green_gui, s:nord_light_green_term]

let s:nord_light_yellow_gui = "#EBCB8B"
let s:nord_light_yellow_term = "3"
let s:light_yellow = [s:nord_light_yellow_gui, s:nord_light_yellow_term]

let s:nord_dark_yellow_gui = "#D08770"
let s:nord_dark_yellow_term = "11"
let s:dark_yellow= [s:nord_dark_yellow_gui, s:nord_dark_yellow_term]

let s:nord_light_blue_gui = "#81A1C1"
let s:nord_light_blue_term = "4"
let s:light_blue = [s:nord_light_blue_gui, s:nord_light_blue_term]

let s:nord_dark_blue_gui = "#5E81AC"
let s:nord_dark_blue_term = "12"
let s:dark_blue = [s:nord_dark_blue_gui, s:nord_dark_blue_term]

let s:nord_light_violet_gui = "#B48EAD"
let s:nord_light_violet_term = "5"
let s:light_violet = [s:nord_light_violet_gui, s:nord_light_violet_term]
" let s:dark_violet = [s:nord_light_violet_gui, s:nord_light_violet_term]

let s:nord_light_cyan_gui = "#88C0D0"
let s:nord_light_cyan_term = "6"
let s:light_cyan= [s:nord_light_cyan_gui, s:nord_light_cyan_term]

let s:nord_dark_cyan_gui = "#8FBCBB"
let s:nord_dark_cyan_term = "14"
let s:dark_cyan = [s:nord_dark_cyan_gui, s:nord_dark_cyan_term]

let s:nord_dark_white_gui = "#E5E9F0"
let s:nord_dark_white_term = "7"
let s:dark_white= [s:nord_dark_white_gui, s:nord_dark_white_term]

let s:nord_light_white_gui = "#ECEFF4"
let s:nord_light_white_term = "15"
let s:light_white = [s:nord_light_white_gui, s:nord_light_white_term]

let s:transparent = ["NONE", "NONE"]

let s:nord_black_gui = "#2E3440"
let s:black = [s:nord_black_gui, "NONE"]

let s:nord_white_gui = "#D8DEE9"
let s:white = [s:nord_white_gui, "NONE"]

let s:nord_medium_black_gui = "#434C5E"
let s:medium_black_alt = [s:nord_medium_black_gui, s:nord_dark_black_term]
let s:medium_black = [s:nord_medium_black_gui, s:nord_light_black_term]

let s:nord_light_black_gui_bright = "#616E88"
let s:bright_black = [s:nord_light_black_gui_bright, s:nord_light_black_term]

let s:palette = [
\   s:nord_black_gui,
\   s:nord_dark_black_gui,
\   s:nord_medium_black_gui,
\   s:nord_light_black_gui,
\   s:nord_light_black_gui_bright,
\   s:nord_white_gui,
\   s:nord_dark_white_gui,
\   s:nord_light_white_gui,
\   s:nord_dark_cyan_gui,
\   s:nord_light_cyan_gui,
\   s:nord_light_blue_gui,
\   s:nord_dark_blue_gui,
\   s:nord_light_red_gui,
\   s:nord_dark_yellow_gui,
\   s:nord_light_yellow_gui,
\   s:nord_light_green_gui,
\   s:nord_light_violet_gui,
\ ]

" let s:nord_light_black_gui_brightened = [
"   \ s:nord_light_black_gui,
"   \ "#4e586d",
"   \ "#505b70",
"   \ "#525d73",
"   \ "#556076",
"   \ "#576279",
"   \ "#59647c",
"   \ "#5b677f",
"   \ "#5d6982",
"   \ "#5f6c85",
"   \ s:nord_light_black_gui_bright,
"   \ "#63718b",
"   \ "#66738e",
"   \ "#687591",
"   \ "#6a7894",
"   \ "#6d7a96",
"   \ "#6f7d98",
"   \ "#72809a",
"   \ "#75829c",
"   \ "#78859e",
"   \ "#7b88a1",
" \ ]

let g:nord_bold = get(g:, "nord_bold", 1)
let s:bold = (g:nord_bold == 0) ? "" : "bold,"

let g:nord_underline = get(g:, "nord_underline", 1)
let s:underline = (g:nord_underline == 0) ? "NONE," : "underline,"

let g:nord_italic = get(g:, "nord_italic", (has("gui_running") || $TERM_ITALICS == "true"))
let s:italic = (g:nord_italic == 0) ? "" : "italic,"

let g:nord_italic_comments = get(g:, "nord_italic_comments", 0)
let s:italicize_comments = (g:nord_italic_comments == 0) ? "" : get(s:, "italic")

let g:nord_uniform_status_lines = get(g:, "nord_uniform_status_lines", 0)

let g:nord_bold_vertical_split_line = get(g:, "nord_bold_vertical_split_line", 0)
if exists("g:nord_comment_brightness")
  echohl WarningMsg
  echomsg 'nord: warning: Variable g:nord_comment_brightness has been deprecated and will be removed in version 1.0.0!' .
       \ ' The comment color brightness has been increased by 10% by default.' .
       \ ' Please see https://github.com/nordtheme/vim/issues/145 for more details.'
  echohl None
  let g:nord_comment_brightness = 10
endif
let g:nord_cursor_line_number_background = get(g:, "nord_cursor_line_number_background", 0)
let g:nord_uniform_diff_background = get(g:, "nord_uniform_diff_background", 0)

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

function! s:highlight(group, foreground, background, attribute, attribute_color)
  call s:hi(a:group, a:foreground[0], a:background[0], a:foreground[1], a:background[1], a:attribute, a:attribute_color)
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:highlight("Bold", s:transparent, s:transparent, s:bold, "")
call s:highlight("Italic", s:transparent, s:transparent, s:italic, "")
call s:highlight("Underlined", s:transparent, s:transparent, s:underline, "")

"+--- Editor ---+
call s:highlight("ColorColumn", s:transparent, s:dark_black, "", "")
call s:highlight("Cursor", s:black, s:white, "", "")
call s:highlight("CursorLine", s:transparent, s:dark_black, "NONE", "")
call s:highlight("Error", s:white, s:light_red, "", "")
call s:highlight("iCursor", s:black, s:white, "", "")
call s:highlight("LineNr", s:light_black, s:transparent, "", "")
call s:highlight("MatchParen", s:light_cyan, s:light_black, "", "")
call s:highlight("NonText", s:medium_black, s:transparent, "", "")
call s:highlight("Normal", s:white, s:black, "", "")
call s:highlight("Pmenu", s:white, s:medium_black_alt, "", "")
call s:highlight("PmenuSbar", s:white, s:medium_black_alt, "", "")
call s:highlight("PmenuSel", s:light_cyan, s:light_black, "", "")
call s:highlight("PmenuThumb", s:light_cyan, s:light_black, "", "") " why the terminal foreground color was NONE
call s:highlight("SpecialKey", s:light_black, s:transparent, "", "")
call s:highlight("SpellBad", s:transparent, s:transparent, "undercurl", s:nord_light_red_gui)
call s:highlight("SpellCap", s:transparent, s:transparent, "undercurl", s:nord_light_yellow_gui)
call s:highlight("SpellLocal", s:transparent, s:transparent, "undercurl", s:nord_dark_white_gui)
call s:highlight("SpellRare", s:transparent, s:transparent, "undercurl", s:nord_light_white_gui)
call s:highlight("Visual", s:transparent, s:medium_black_alt, "", "")
call s:highlight("VisualNOS", s:transparent, s:medium_black_alt, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [
  \    s:nord_dark_black_gui,
  \    s:nord_light_red_gui,
  \    s:nord_light_green_gui,
  \    s:nord_light_yellow_gui,
  \    s:nord_light_blue_gui,
  \    s:nord_light_violet_gui,
  \    s:nord_light_cyan_gui,
  \    s:nord_dark_white_gui,
  \    s:nord_light_black_gui,
  \    s:nord_light_red_gui,
  \    s:nord_light_green_gui,
  \    s:nord_dark_yellow_gui,
  \    s:nord_dark_blue_gui,
  \    s:nord_light_violet_gui,
  \    s:nord_dark_cyan_gui,
  \    s:nord_light_white_gui
  \ ]

  highlight! link Terminal Normal
endif

if has('nvim')
  "+- Neovim Terminal Colors -+
  let g:terminal_color_0 = s:nord_dark_black_gui
  let g:terminal_color_1 = s:nord_light_red_gui
  let g:terminal_color_2 = s:nord_light_green_gui
  let g:terminal_color_3 = s:nord_light_yellow_gui
  let g:terminal_color_4 = s:nord_light_blue_gui
  let g:terminal_color_5 = s:nord_light_violet_gui
  let g:terminal_color_6 = s:nord_light_cyan_gui
  let g:terminal_color_7 = s:nord_dark_white_gui
  let g:terminal_color_8 = s:nord_light_black_gui
  let g:terminal_color_9 = s:nord_light_red_gui
  let g:terminal_color_10 = s:nord_light_green_gui
  let g:terminal_color_11 = s:nord_light_yellow_gui
  let g:terminal_color_12 = s:nord_light_blue_gui
  let g:terminal_color_13 = s:nord_light_violet_gui
  let g:terminal_color_14 = s:nord_dark_cyan_gui
  let g:terminal_color_15 = s:nord_light_white_gui

  "+- Neovim Support -+
  call s:highlight("healthError", s:light_red, s:dark_black, "", "")
  call s:highlight("healthSuccess", s:light_green, s:dark_black, "", "")
  call s:highlight("healthWarning", s:light_yellow, s:dark_black, "", "")
  call s:highlight("TermCursorNC", s:transparent, s:dark_black, "", "")

  "+- Neovim Diagnostics API -+
  call s:highlight("DiagnosticWarn", s:light_yellow, s:transparent, "", "")
  call s:highlight("DiagnosticError", s:light_red, s:transparent, "", "")
  call s:highlight("DiagnosticInfo", s:light_cyan, s:transparent, "", "")
  call s:highlight("DiagnosticHint", s:dark_blue, s:transparent, "", "")

  " TODO: Introduce new special colors
  call s:hi("DiagnosticUnderlineWarn" , "", "", s:nord_light_yellow_term, "", "undercurl", s:nord_light_yellow_gui)
  call s:hi("DiagnosticUnderlineError" , "", "", s:nord_light_red_term, "", "undercurl", s:nord_light_red_gui)
  call s:hi("DiagnosticUnderlineInfo" , "", "", s:nord_light_cyan_term, "", "undercurl", s:nord_light_cyan_gui)
  call s:hi("DiagnosticUnderlineHint" , "", "", s:nord_dark_blue_term, "", "undercurl", s:nord_dark_blue_gui)

  "+- Neovim DocumentHighlight -+
  call s:highlight("LspReferenceText", s:transparent, s:light_black, "", "")
  call s:highlight("LspReferenceRead", s:transparent, s:light_black, "", "")
  call s:highlight("LspReferenceWrite", s:transparent, s:light_black, "", "")

  "+- Neovim LspSignatureHelp -+
  call s:highlight("LspSignatureActiveParameter", s:light_cyan, s:transparent, s:underline, "")
endif

"+--- Gutter ---+
call s:highlight("CursorColumn", s:transparent, s:dark_black, "", "")
if g:nord_cursor_line_number_background == 0
  call s:highlight("CursorLineNr", s:white, s:transparent, "NONE", "")
else
  call s:highlight("CursorLineNr", s:white, s:dark_black, "NONE", "")
endif

call s:highlight("Folded", s:light_black, s:dark_black, s:bold, "")
call s:highlight("FoldColumn", s:light_black, s:black, "", "")
call s:highlight("SignColumn", s:dark_black, s:black, "", "")

"+--- Navigation ---+
call s:highlight("Directory", s:light_cyan, s:transparent, "", "")

"+--- Prompt/Status ---+
call s:highlight("EndOfBuffer", s:dark_black, s:transparent, "", "")
call s:highlight("ErrorMsg", s:white, s:light_red, "", "")
call s:highlight("ModeMsg", s:white, s:transparent, "", "")
call s:highlight("MoreMsg", s:light_cyan, s:transparent, "", "")
call s:highlight("Question", s:white, s:transparent, "", "")

call s:highlight("StatusLine", s:light_cyan, s:light_black, "NONE", "")
call s:highlight("StatusLineTerm", s:light_cyan, s:light_black, "NONE", "")
if g:nord_uniform_status_lines == 0
  call s:highlight("StatusLineNC", s:white, s:dark_black, "NONE", "")
  call s:highlight("StatusLineTermNC", s:white, s:dark_black, "", "")
else
  call s:highlight("StatusLineNC", s:white, s:light_black, "NONE", "")
  call s:highlight("StatusLineTermNC", s:white, s:light_black, "", "")
endif
call s:highlight("WarningMsg", s:black, s:light_yellow, "", "") " Why the terminal color is dark_black and not black?
call s:highlight("WildMenu", s:light_cyan, s:dark_black, "", "")

"+--- Search Highlight ---+
call s:highlight("IncSearch", s:light_white, s:dark_blue, "NONE", "")
call s:highlight("Search", s:dark_black, s:light_cyan, "", "")

"+--- Tabs ---+
call s:highlight("TabLine", s:white, s:dark_black, "NONE", "")
call s:highlight("TabLineFill", s:white, s:dark_black, "NONE", "")
call s:highlight("TabLineSel", s:light_cyan, s:light_black, "NONE", "")

"+--- Window ---+
call s:highlight("Title", s:white, s:transparent, "NONE", "")

if g:nord_bold_vertical_split_line == 0
  call s:highlight("VertSplit", s:medium_black, s:black, "NONE", "")
else
  call s:highlight("VertSplit", s:medium_black, s:dark_black, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:highlight("Boolean", s:light_blue, s:transparent, "", "")
call s:highlight("Character", s:light_green, s:transparent, "", "")
call s:highlight("Comment", s:bright_black, s:transparent, s:italicize_comments, "")
call s:highlight("Conceal", s:transparent, s:transparent, "", "")
call s:highlight("Conditional", s:light_blue, s:transparent, "", "")
call s:highlight("Constant", s:white, "", "", "")
call s:highlight("Decorator", s:dark_yellow, s:transparent, "", "")
call s:highlight("Define", s:light_blue, s:transparent, "", "")
call s:highlight("Delimiter", s:light_white, s:transparent, "", "")
call s:highlight("Exception", s:light_blue, s:transparent, "", "")
call s:highlight("Float", s:light_violet, s:transparent, "", "")
call s:highlight("Function", s:light_cyan, s:transparent, "", "")
call s:highlight("Identifier", s:white, s:transparent, "NONE", "")
call s:highlight("Include", s:light_blue, s:transparent, "", "")
call s:highlight("Keyword", s:light_blue, s:transparent, "", "")
call s:highlight("Label", s:light_blue, s:transparent, "", "")
call s:highlight("Number", s:light_violet, s:transparent, "", "")
call s:highlight("Operator", s:light_blue, s:transparent, "", "")
call s:highlight("PreProc", s:light_blue, s:transparent, "", "")
call s:highlight("Repeat", s:light_blue, s:transparent, "", "")
call s:highlight("Special", s:white, s:transparent, "", "")
call s:highlight("SpecialChar", s:light_yellow, s:transparent, "", "")
call s:highlight("SpecialComment", s:light_cyan, s:transparent, s:italicize_comments, "")
call s:highlight("Statement", s:light_blue, s:transparent, "", "")
call s:highlight("StorageClass", s:light_blue, s:transparent, "", "")
call s:highlight("String", s:light_green, s:transparent, "", "")
call s:highlight("Structure", s:light_blue, s:transparent, "", "")
call s:highlight("Tag", s:white, s:transparent, "", "")
call s:highlight("Todo", s:light_yellow, s:transparent, "", "")
call s:highlight("Type", s:light_blue, s:transparent, "NONE", "")
call s:highlight("Typedef", s:light_blue, s:transparent, "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
call s:highlight("asciidocAttributeEntry", s:dark_blue, s:transparent, "", "")
call s:highlight("asciidocAttributeList", s:dark_blue, s:transparent, "", "")
call s:highlight("asciidocAttributeRef", s:dark_blue, s:transparent, "", "")
call s:highlight("asciidocHLabel", s:light_blue, s:transparent, "", "")
call s:highlight("asciidocListingBlock", s:dark_cyan, s:transparent, "", "")
call s:highlight("asciidocMacroAttributes", s:light_cyan, s:transparent, "", "")
call s:highlight("asciidocOneLineTitle", s:light_cyan, s:transparent, "", "")
call s:highlight("asciidocPassthroughBlock", s:light_blue, s:transparent, "", "")
call s:highlight("asciidocQuotedMonospaced", s:dark_cyan, s:transparent, "", "")
call s:highlight("asciidocTriplePlusPassthrough", s:dark_cyan, s:transparent, "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:highlight("awkCharClass", s:dark_cyan, s:transparent, "", "")
call s:highlight("awkPatterns", s:light_blue, s:transparent, s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:highlight("cIncluded", s:dark_cyan, s:transparent, "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:highlight("cmakeGeneratorExpression", s:dark_blue, s:transparent, "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:highlight("cssAttributeSelector", s:dark_cyan, s:transparent, "", "")
call s:highlight("cssDefinition", s:dark_cyan, s:transparent, "NONE", "")
call s:highlight("cssIdentifier", s:dark_cyan, s:transparent, s:underline, "")
call s:highlight("cssStringQ", s:dark_cyan, s:transparent, "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:highlight("dosiniHeader", s:light_cyan, s:transparent, "", "")
hi! link dosiniLabel Type

call s:highlight("dtBooleanKey", s:dark_cyan, s:transparent, "", "")
call s:highlight("dtExecKey", s:dark_cyan, s:transparent, "", "")
call s:highlight("dtLocaleKey", s:dark_cyan, s:transparent, "", "")
call s:highlight("dtNumericKey", s:dark_cyan, s:transparent, "", "")
call s:highlight("dtTypeKey", s:dark_cyan, s:transparent, "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:nord_uniform_diff_background == 0
  " call s:highlight("DiffAdd", s:light_green, s:black, "inverse", "")
  " call s:highlight("DiffChange", s:light_yellow, s:black, "inverse", "")
  " call s:highlight("DiffDelete", s:light_red, s:black, "inverse", "")
  " call s:highlight("DiffText", s:light_blue, s:black, "inverse", "")
else
  " call s:highlight("DiffAdd", s:light_green, s:dark_black, "", "")
  " call s:highlight("DiffChange", s:light_yellow, s:dark_black, "", "")
  " call s:highlight("DiffDelete", s:light_red, s:dark_black, "", "")
  " call s:highlight("DiffText", s:light_blue, s:dark_black, "", "")
endif
call s:highlight("DiffAdd", s:transparent, s:dark_black, "", "")
call s:highlight("DiffChange", s:transparent, s:dark_black, "", "")
call s:highlight("DiffDelete", s:transparent, s:black, "", "")
call s:highlight("DiffText", s:transparent, s:bright_black, "", "")
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:highlight("elixirModuleDeclaration", s:dark_cyan, s:transparent, "", "")
call s:highlight("elixirAlias", s:dark_cyan, s:transparent, "", "")
call s:highlight("elixirAtom", s:light_white, s:transparent, s:bold, "")

call s:highlight("gitconfigVariable", s:dark_cyan, s:transparent, "", "")

call s:highlight("goBuiltins", s:dark_cyan, s:transparent, "", "")
hi! link goConstants Keyword

" fatih/vim-go
call s:highlight("gomodVersion", s:dark_cyan, s:transparent, "", "")
call s:highlight("gomodGoVersion", s:light_cyan, s:transparent, "", "")

call s:highlight("helpBar", s:light_black, s:transparent, "", "")
call s:highlight("helpHyperTextJump", s:light_cyan, s:transparent, s:underline, "")

call s:highlight("htmlArg", s:dark_cyan, s:transparent, "", "")
call s:highlight("htmlLink", s:white, s:transparent, "", "")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:highlight("javaDocTags", s:dark_cyan, s:transparent, "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:highlight("jsonKeyword", s:dark_cyan, s:transparent, "", "")

call s:highlight("lessClass", s:dark_cyan, s:transparent, "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:highlight("markdownBlockquote", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownCode", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownCodeDelimiter", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownFootnote", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownId", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownIdDeclaration", s:dark_cyan, s:transparent, "", "")
call s:highlight("markdownH1", s:light_cyan, s:transparent, "", "")
call s:highlight("markdownLinkText", s:light_cyan, s:transparent, "", "")
call s:highlight("markdownUrl", s:white, s:transparent, "", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:highlight("perlPackageDecl", s:dark_cyan, s:transparent, "", "")

call s:highlight("phpClasses", s:dark_cyan, s:transparent, "", "")
call s:highlight("phpDocTags", s:dark_cyan, s:transparent, "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:highlight("podCmdText", s:dark_cyan, s:transparent, "", "")
call s:highlight("podVerbatimLine", s:white, s:transparent, "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:highlight("rubyConstant", s:dark_cyan, s:transparent, "", "")
call s:highlight("rubySymbol", s:light_white, s:transparent, s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:highlight("rustAttribute", s:dark_blue, s:transparent, "", "")
call s:highlight("rustEnum", s:dark_cyan, s:transparent, s:bold, "")
call s:highlight("rustMacro", s:light_cyan, s:transparent, s:bold, "")
call s:highlight("rustModPath", s:dark_cyan, s:transparent, "", "")
call s:highlight("rustPanic", s:light_blue, s:transparent, s:bold, "")
call s:highlight("rustTrait", s:dark_cyan, s:transparent, s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:highlight("sassClass", s:dark_cyan, s:transparent, "", "")
call s:highlight("sassId", s:dark_cyan, s:transparent, s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:highlight("vimAugroup", s:dark_cyan, s:transparent, "", "")
call s:highlight("vimMapRhs", s:dark_cyan, s:transparent, "", "")
call s:highlight("vimNotation", s:dark_cyan, s:transparent, "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:highlight("xmlAttrib", s:dark_cyan, s:transparent, "", "")
call s:highlight("xmlCdataStart", s:bright_black, s:transparent, s:bold, "")
call s:highlight("xmlNamespace", s:dark_cyan, s:transparent, "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:highlight("yamlBlockMappingKey", s:dark_cyan, s:transparent, "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:highlight("ALEWarningSign", s:light_yellow, s:transparent, "", "")
call s:highlight("ALEErrorSign", s:light_red, s:transparent, "", "")
call s:highlight("ALEWarning", s:light_yellow, s:transparent, "undercurl", "")
call s:highlight("ALEError", s:light_red, s:transparent, "undercurl", "")

" Coc
" > neoclide/coc.vim
call s:highlight("CocWarningHighlight", s:light_yellow, s:transparent, "undercurl", "")
call s:highlight("CocErrorHighlight", s:light_red, s:transparent, "undercurl", "")
call s:highlight("CocWarningSign", s:light_yellow, s:transparent, "", "")
call s:highlight("CocErrorSign", s:light_red, s:transparent, "", "")
call s:highlight("CocInfoSign", s:light_cyan, s:transparent, "", "")
call s:highlight("CocHintSign", s:dark_blue, s:transparent, "", "")

if has('nvim')
  " Neovim LSP
  " > neovim/nvim-lspconfig
  call s:highlight("LspCodeLens", s:bright_black, s:transparent, "", "")
  if has("nvim-0.5")
    call s:highlight("LspDiagnosticsDefaultWarning", s:light_yellow, s:transparent, "", "")
    call s:highlight("LspDiagnosticsDefaultError", s:light_red, s:transparent, "", "")
    call s:highlight("LspDiagnosticsDefaultInformation", s:light_cyan, s:transparent, "", "")
    call s:highlight("LspDiagnosticsDefaultHint", s:dark_blue, s:transparent, "", "")
    call s:highlight("LspDiagnosticsUnderlineWarning", s:light_yellow, s:transparent, "undercurl", "")
    call s:highlight("LspDiagnosticsUnderlineError", s:light_red, s:transparent, "undercurl", "")
    call s:highlight("LspDiagnosticsUnderlineInformation", s:light_cyan, s:transparent, "undercurl", "")
    call s:highlight("LspDiagnosticsUnderlineHint", s:dark_blue, s:transparent, "undercurl", "")
  endif

  " Gitsigns
  " > lewis6991/gitsigns.nvim
  hi! link GitSignsCurrentLineBlame Comment
endif

" GitGutter
" > airblade/vim-gitgutter
call s:highlight("GitGutterAdd", s:light_green, s:transparent, "", "")
call s:highlight("GitGutterChange", s:light_yellow, s:transparent, "", "")
call s:highlight("GitGutterChangeDelete", s:light_red, s:transparent, "", "")
call s:highlight("GitGutterDelete", s:light_red, s:transparent, "", "")

" Signify
" > mhinz/vim-signify
call s:highlight("SignifySignAdd", s:light_green, s:transparent, "", "")
call s:highlight("SignifySignChange", s:light_yellow, s:transparent, "", "")
call s:highlight("SignifySignChangeDelete", s:light_red, s:transparent, "", "")
call s:highlight("SignifySignDelete", s:light_red, s:transparent, "", "")

" Sneak
" > justinmk/vim-sneak
hi! link Sneak Search

" fugitive.vim
" > tpope/vim-fugitive
call s:highlight("gitcommitDiscardedFile", s:light_red, s:transparent, "", "")
call s:highlight("gitcommitUntrackedFile", s:light_red, s:transparent, "", "")
call s:highlight("gitcommitSelectedFile", s:light_green, s:transparent, "", "")

" davidhalter/jedi-vim
call s:highlight("jediFunction", s:white, s:light_black, "", "")
call s:highlight("jediFat", s:light_cyan, s:light_black, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:highlight("NERDTreeExecFile", s:dark_cyan, s:transparent, "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:highlight("ClapDir", s:white, s:transparent, "", "")
call s:highlight("ClapDisplay", s:white, s:dark_black, "", "")
call s:highlight("ClapFile", s:white, s:transparent, "", "")
call s:highlight("ClapMatches", s:light_cyan, s:transparent, "", "")
call s:highlight("ClapNoMatchesFound", s:light_yellow, s:transparent, "", "")
call s:highlight("ClapSelected", s:dark_cyan, s:transparent, s:bold, "")
call s:highlight("ClapSelectedSign", s:light_blue, s:transparent, "", "")
let s:clap_matches = [
\   s:light_cyan,
\   s:light_blue,
\   s:dark_blue,
\ ]
for s:clap_match_i in range(1, 12)
  let clap_match_color = s:clap_matches[s:clap_match_i % len(s:clap_matches) - 1]
  call s:highlight("ClapMatches" . s:clap_match_i, clap_match_color, s:transparent, "", "")
  call s:highlight("ClapFuzzyMatches" . s:clap_match_i, clap_match_color, s:transparent, "", "")
endfor
unlet s:clap_match_i
hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:highlight("IndentGuidesEven", "", s:dark_black, "", "")
call s:highlight("IndentGuidesOdd", "", s:medium_black, "", "")

" vim-plug
" > junegunn/vim-plug
call s:highlight("plugDeleted", s:light_red, s:transparent, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:highlight("SignatureMarkText", s:light_cyan, s:transparent, "", "")

" vim-startify
" > mhinz/vim-startify
call s:highlight("StartifyFile", s:light_white, s:transparent, "", "")
call s:highlight("StartifyFooter", s:dark_cyan, s:transparent, "", "")
call s:highlight("StartifyHeader", s:light_cyan, s:transparent, "", "")
call s:highlight("StartifyNumber", s:dark_cyan, s:transparent, "", "")
call s:highlight("StartifyPath", s:light_cyan, s:transparent, "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:highlight("haskellPreProc", s:dark_blue, s:transparent, "", "")
call s:highlight("haskellType", s:dark_cyan, s:transparent, "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:highlight("jsGlobalNodeObjects", s:light_cyan, s:transparent, s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Pandoc
" > vim-pandoc/vim-pandoc-syntax
call s:highlight("pandocDefinitionBlockTerm", s:dark_cyan, s:transparent, s:italic, "")
call s:highlight("pandocTableDelims", s:light_black, s:transparent, "", "")
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator

if has('nvim')
  " tree-sitter
  " > nvim-treesitter/nvim-treesitter
  hi! link TSAnnotation Annotation
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:highlight("typescriptBOMWindowMethod", s:light_cyan, s:transparent, s:italic, "")
call s:highlight("typescriptClassName", s:dark_cyan, s:transparent, "", "")
call s:highlight("typescriptDecorator", s:dark_yellow, s:transparent, "", "")
call s:highlight("typescriptInterfaceName", s:dark_cyan, s:transparent, s:bold, "")
call s:highlight("typescriptRegexpString", s:light_yellow, s:transparent, "", "")
" TypeScript JSX
call s:highlight("tsxAttrib", s:dark_cyan, s:transparent, "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:highlight("mkdCode", s:dark_cyan, s:transparent, "", "")
call s:highlight("mkdFootnote", s:light_cyan, s:transparent, "", "")
call s:highlight("mkdRule", s:dark_blue, s:transparent, "", "")
call s:highlight("mkdLineBreak", s:light_blue, s:transparent, "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" PHP
" > StanAngeloff/php.vim
call s:highlight("phpClass", s:dark_cyan, s:transparent, "", "")
call s:highlight("phpClassImplements", s:dark_cyan, s:transparent, s:bold, "")
hi! link phpClassExtends phpClass
hi! link phpFunction Function
hi! link phpMethod Function
hi! link phpUseClass phpClass

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1, 6)
    call s:highlight("VimwikiHeader".s:i, s:light_cyan, s:transparent, s:bold, "")
  endfor
else
  let s:vimwiki_hcolorfg = [s:dark_cyan, s:light_cyan, s:light_blue, s:dark_blue, s:light_green, s:light_violet]
  for s:i in range(1, 6)
    call s:hightlight("VimwikiHeader" . s:i, s:vimwiki_hcolor_guifg[s:i-1] , s:transparent, s:bold, "")
  endfor
endif
call s:highlight("VimwikiLink", s:light_cyan, s:transparent, s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:highlight("yamlKey", s:dark_cyan, s:transparent, "", "")

"+------------+
"+ Public API +
"+------------+
"+--- Functions ---+

function! NordPalette() abort
  let ret = {}
  for color in range(16)
    let ret['nord' . color] = s:palette[color]
  endfor
  let ret["nord3_bright"] = s:nord_light_black_gui_bright
  return ret
endfunction
