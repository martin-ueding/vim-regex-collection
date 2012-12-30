" Copyright © 2012 Martin Ueding <dev@martin-ueding.de>

function! ConvertInnerProduct()
	:%s/\v\\left\s*\\langle\s*([^,]{-})\s*,\s*([^,]{-})\s*\\right\s*\\rangle/\\inner{\1}{\2}/gc
endfunction

function! ExpandDisplayMath()
	:%s/\v^(\s*)(\\\[)\s*(.{-})\s*(\\\])/\1\2\r\1	\3\r\1\4/g
endfunction

menu Plugin.RegexCollection.ExpandDisplayMath :call ExpandDisplayMath()<CR>
menu Plugin.RegexCollection.ConvertInnerProduct :call ConvertInnerProduct()<CR>
