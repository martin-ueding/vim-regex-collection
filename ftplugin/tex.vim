" Copyright © 2012 Martin Ueding <dev@martin-ueding.de>

function! ConvertInnerProduct()
	:%s/\v\\left\s*\\langle\s*([^,]{-})\s*,\s*([^,]{-})\s*\\right\s*\\rangle/\\inner{\1}{\2}/gc
endfunction

function! ExpandDisplayMath()
	:%s/\v^(\s*)(\\\[)\s*(.{-})\s*(\\\])/\1\2\r\1	\3\r\1\4/g
endfunction

function! UnescapeUmlauts()
	:%s/\v\\?"a/ä/g
	:%s/\v\\?"A/Ä/g
	:%s/\v\\?"o/ö/g
	:%s/\v\\?"O/Ö/g
	:%s/\v\\?"u/ü/g
	:%s/\v\\?"U/Ü/g
	:%s/\V{\\ss}/ß/g
	:%s/\V\\ss{}/ß/g
endfunction

menu Plugin.Regex\ Collection.Convert\ Inner\ Product :call ConvertInnerProduct()<CR>
menu Plugin.Regex\ Collection.Expand\ Display\ Math :call ExpandDisplayMath()<CR>
menu Plugin.Regex\ Collection.Unescape\ Umlauts :call UnescapeUmlauts()<CR>

command! RCConvertInnerProduct :call ConvertInnerProduct()<CR>
command! RCExpandDisplayMath :call ExpandDisplayMath()<CR>
command! RCUnescapeUmlauts :call UnescapeUmlauts()<CR>
