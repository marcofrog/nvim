" hi! link group fg bg attr
" For example:
" hi! link Comment none none
" hi! link Comment gruvboxFg3 none
" hi! link Comment guifg=fg_gutter

" JavaScript: {{{

hi! link javascriptFuncKeyword NONE
hi! link javascriptAsyncFunc NONE
hi! link javascriptFuncKeyword NONE
hi! link javascriptAsyncFunc NONE
hi! link javascriptClassStatic NONE

hi! link javascriptOperator #f7768e
hi! link javascriptForOperator #f7768e
hi! link javascriptYield #f7768e
hi! link javascriptExceptions #f7768e
hi! link javascriptMessage #f7768e

hi! link javascriptTemplateSB #7dcfff
hi! link javascriptTemplateSubstitution #c0caf5

hi! link javascriptLabel #c0caf5
hi! link javascriptObjectLabel #c0caf5
hi! link javascriptPropertyName #c0caf5

hi! link javascriptLogicSymbols #c0caf5
hi! link javascriptArrowFunc #e0af68

hi! link javascriptDocParamName #737aa2
hi! link javascriptDocTags #737aa2
hi! link javascriptDocNotation #737aa2
hi! link javascriptDocParamType #737aa2
hi! link javascriptDocNamedParamType #737aa2

hi! link javascriptBrackets #c0caf5
hi! link javascriptDOMElemAttrs #c0caf5
hi! link javascriptDOMEventMethod #c0caf5
hi! link javascriptDOMNodeMethod #c0caf5
hi! link javascriptDOMStorageMethod #c0caf5
hi! link javascriptHeadersMethod #c0caf5

hi! link javascriptAsyncFuncKeyword #f7768e
hi! link javascriptAwaitFuncKeyword #f7768e

" }}}
" PanglossJS: {{{

hi! link jsClassKeyword NONE
hi! link jsExtendsKeyword NONE
hi! link jsExportDefault NONE
hi! link jsTemplateBraces NONE
hi! link jsGlobalNodeObjects #c0caf5
hi! link jsGlobalObjects #c0caf5
hi! link jsFunction NONE
hi! link jsFuncParens #a9b1d6
hi! link jsParens #a9b1d6
hi! link jsNull #9d7cd8
hi! link jsUndefined #9d7cd8
hi! link jsClassDefinition #e0af68

" }}}
" TypeScript: {{{

hi! link typeScriptReserved NONE
hi! link typeScriptLabel NONE
hi! link typeScriptFuncKeyword NONE
hi! link typeScriptIdentifier #ff9e64
hi! link typeScriptBraces #c0caf5
hi! link typeScriptEndColons #c0caf5
hi! link typeScriptDOMObjects #c0caf5
hi! link typeScriptAjaxMethods #c0caf5
hi! link typeScriptLogicSymbols #c0caf5
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects #c0caf5
hi! link typeScriptParens #a9b1d6
hi! link typeScriptOpSymbols #a9b1d6
hi! link typeScriptHtmlElemProperties #c0caf5
hi! link typeScriptNull #9d7cd8
hi! link typeScriptInterpolationDelimiter #7dcfff

" }}}
" PureScript: {{{

hi! link purescriptModuleKeyword NONE
hi! link purescriptModuleName #a9b1d6
hi! link purescriptWhere NONE
hi! link purescriptDelimiter #545c7e
hi! link purescriptType #a9b1d6
hi! link purescriptImportKeyword NONE
hi! link purescriptHidingKeyword NONE
hi! link purescriptAsKeyword NONE
hi! link purescriptStructure NONE
hi! link purescriptOperator #7aa2f7

hi! link purescriptTypeVar #a9b1d6
hi! link purescriptConstructor #a9b1d6
hi! link purescriptFunction #a9b1d6
hi! link purescriptConditional #ff9e64
hi! link purescriptBacktick #ff9e64

" }}}
" CoffeeScript: {{{

hi! link coffeeExtendedOp #a9b1d6
hi! link coffeeSpecialOp #a9b1d6
hi! link coffeeCurly NONE
hi! link coffeeParen #a9b1d6
hi! link coffeeBracket NONE

" }}}
" Ruby: {{{

hi! link rubyStringDelimiter #9ece6a
hi! link rubyInterpolationDelimiter #7dcfff

" }}}
" ObjectiveC: {{{

hi! link objcTypeModifier #f7768e
hi! link objcDirective #7aa2f7

" }}}
" Go: {{{

hi! link goDirective NONE
hi! link goConstants #9d7cd8
hi! link goDeclaration #f7768e
hi! link goDeclType #7aa2f7
hi! link goBuiltins #ff9e64

" }}}
" Lua: {{{

hi! link luaIn #f7768e
hi! link luaFunction NONE
hi! link luaTable #e0af68

" }}}
" MoonScript: {{{

hi! link moonSpecialOp #a9b1d6
hi! link moonExtendedOp #a9b1d6
hi! link moonFunction #a9b1d6
hi! link moonObject #e0af68

" }}}
" Java: {{{

hi! link javaAnnotation #7aa2f7
hi! link javaDocTags #7dcfff
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen #a9b1d6
hi! link javaParen1 #a9b1d6
hi! link javaParen2 #a9b1d6
hi! link javaParen3 #a9b1d6
hi! link javaParen4 #a9b1d6
hi! link javaParen5 #a9b1d6
hi! link javaOperator #ff9e64

hi! link javaVarArg #9ece6a

" }}}
" Elixir: {{{

hi! link elixirDocString Comment

hi! link elixirStringDelimiter #9ece6a
hi! link elixirInterpolationDelimiter #7dcfff

hi! link elixirModuleDeclaration #e0af68

" }}}
" Scala: {{{

" NB: scala vim syntax file is kinda horrible
hi! link scalaNameDefinition #a9b1d6
hi! link scalaCaseFollowing #a9b1d6
hi! link scalaCapitalWord #a9b1d6
hi! link scalaTypeExtension #a9b1d6

hi! link scalaKeyword #f7768e
hi! link scalaKeywordModifier #f7768e

hi! link scalaSpecial NONE
hi! link scalaOperator #c0caf5

hi! link scalaTypeDeclaration #e0af68
hi! link scalaTypeTypePostDeclaration #e0af68

hi! link scalaInstanceDeclaration #a9b1d6
hi! link scalaInterpolation #7dcfff

" }}}
" Markdown: {{{

call s:HL('markdownItalic', s:fg_dark, s:none, s:italic)

hi! link markdownH1 #9ece6a
hi! link markdownH2 #9ece6a
hi! link markdownH3 #e0af68
hi! link markdownH4 #e0af68
hi! link markdownH5 #e0af68
hi! link markdownH6 #e0af68

hi! link markdownCode #7dcfff
hi! link markdownCodeBlock #7dcfff
hi! link markdownCodeDelimiter #7dcfff

hi! link markdownBlockquote #565f89
hi! link markdownListMarker #565f89
hi! link markdownOrderedListMarker #565f89
hi! link markdownRule #565f89
hi! link markdownHeadingRule #565f89

hi! link markdownUrlDelimiter #a9b1d6
hi! link markdownLinkDelimiter #a9b1d6
hi! link markdownLinkTextDelimiter #a9b1d6

hi! link markdownHeadingDelimiter #ff9e64
hi! link markdownUrl #9d7cd8
hi! link markdownUrlTitleDelimiter #9ece6a

call s:HL('markdownLinkText', s:comment, s:none, s:underline)
hi! link markdownIdDeclaration markdownLinkText

" }}}
" Haskell: {{{

hi! link haskellType #e0af68
hi! link haskellIdentifier #e0af68
hi! link haskellSeparator #e0af68
hi! link haskellDelimiter #545c7e
hi! link haskellOperators #7aa2f7

hi! link haskellBacktick #ff9e64
hi! link haskellStatement #ff9e64
hi! link haskellConditional #ff9e64

hi! link haskellLet #7dcfff
hi! link haskellDefault #7dcfff
hi! link haskellWhere #7dcfff
hi! link haskellBottom #7dcfff
hi! link haskellBlockKeywords #7dcfff
hi! link haskellImportKeywords #7dcfff
hi! link haskellDeclKeyword #7dcfff
hi! link haskellDeriving #7dcfff
hi! link haskellAssocType #7dcfff

hi! link haskellNumber #9d7cd8
hi! link haskellPragma #9d7cd8

hi! link haskellString #9ece6a
hi! link haskellChar #9ece6a

" }}}
" Json: {{{

hi! link jsonKeyword #9ece6a
hi! link jsonQuote #9ece6a
hi! link jsonBraces #c0caf5
hi! link jsonString #c0caf5

" }}}


" Functions -------------------------------------------------------------------
" Search Highlighting Cursor {{{

function! GruvboxHlsShowCursor()
  call s:HL('Cursor', #1a1b26, #16161e)
endfunction

function! GruvboxHlsHideCursor()
  call s:HL('Cursor', none, none, inverse)
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
