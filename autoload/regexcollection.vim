" Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
" Licensed under The GNU Public License Version 2 (or later)

function! regexcollection#ConvertInlineMath()
	%s/\v\\\(/$/eg
	%s/\v\\\)/$/eg
endfunction

function! regexcollection#ConvertInnerProduct()
	%s/\v\\left\s*\\langle\s*([^,]{-})\s*,\s*([^,]{-})\s*\\right\s*\\rangle/\\inner{\1}{\2}/gec
endfunction

function! regexcollection#ConvertOrdinaryDerivatives()
	%s/\v\\frac\{d\}\{d([^}]+)\}/\\dod{}{\1}/gec
endfunction

function! regexcollection#DeleteMultipleNewlines()
	%s/\v\n(\s*\n){2,}/\r\r/e
endfunction

function! regexcollection#ExpandDisplayMath()
	%s/\v^(\s*)(\\\[)\s*(.{-})\s*(\\\])/\1\2\r\1	\3\r\1\4/ge
endfunction

function! regexcollection#InsertApostropheIntoNames()
	%s/\v([^'])sche>/\1'sche/gce
endfunction

function! regexcollection#TrimWhitespaceAtEnd()
	%s/\v\s+$//e
endfunction

function! regexcollection#UnescapeUmlauts()
	%s/\v\\?"a/ä/ge
	%s/\v\\?"A/Ä/ge
	%s/\v\\?"o/ö/ge
	%s/\v\\?"O/Ö/ge
	%s/\v\\?"u/ü/ge
	%s/\v\\?"U/Ü/ge
	%s/\V{\\ss}/ß/ge
	%s/\V\\ss{}/ß/ge
endfunction

function! regexcollection#UppercaseApostropheNames()
	%s/\v<([a-z]\w+'sche)>/\u\1/gce
endfunction
