" Copyright © 2012 Martin Ueding <dev@martin-ueding.de>

function! ExpandDisplayMath()
	:%s/\v^(\s*)(\\\[)(.*)(\\\])/\1\2\r\1	\3\r\1\4/g
endfunction

menu Plugin.RegexCollection.ExpandDisplayMath :call ExpandDisplayMath()<CR>
