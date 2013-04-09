" Copyright © 2013 Martin Ueding <dev@martin-ueding.de>

function! regexcollection#ConvertInlineMath()
	:%s/\v\\\(/$/g
	:%s/\v\\\)/$/g
endfunction

function! regexcollection#ConvertInnerProduct()
	:%s/\v\\left\s*\\langle\s*([^,]{-})\s*,\s*([^,]{-})\s*\\right\s*\\rangle/\\inner{\1}{\2}/gc
endfunction

function! regexcollection#ConvertOrdinaryDerivatives()
	%s/\v\\frac\{d\}\{d([^}]+)\}/\\dod{}{\1}/gc
endfunction

function! regexcollection#DeleteMultipleNewlines()
	%s/\v\n(\s*\n){2,}/\r\r/
endfunction

function! regexcollection#ExpandDisplayMath()
	:%s/\v^(\s*)(\\\[)\s*(.{-})\s*(\\\])/\1\2\r\1	\3\r\1\4/g
endfunction

function! regexcollection#InsertApostropheIntoNames()
	%s/\v([^'])sche>/\1'sche/gc
endfunction

function! regexcollection#TrimWhitespaceAtEnd()
	%s/\v\s+$//
endfunction

function! regexcollection#UnescapeUmlauts()
	:%s/\v\\?"a/ä/g
	:%s/\v\\?"A/Ä/g
	:%s/\v\\?"o/ö/g
	:%s/\v\\?"O/Ö/g
	:%s/\v\\?"u/ü/g
	:%s/\v\\?"U/Ü/g
	:%s/\V{\\ss}/ß/g
	:%s/\V\\ss{}/ß/g
endfunction

function! regexcollection#UppercaseApostropheNames()
	%s/\v<([a-z]\w+'sche)>/\u\1/gc
endfunction
