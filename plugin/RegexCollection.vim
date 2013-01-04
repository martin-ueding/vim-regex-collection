" Copyright © 2012-2013 Martin Ueding <dev@martin-ueding.de>

function! DeleteMultipleNewlines()
	%s/\v\n(\s*\n){2,}/\r\r/
endfunction

function! TrimWhitespaceAtEnd()
	%s/\v\s+$//
endfunction

menu Plugin.Regex\ Collection.Delete\ Multiple\ Newlines :call DeleteMultipleNewlines()<CR>
menu Plugin.Regex\ Collection.Trim\ Whitespace\ At\ End :call TrimWhitespaceAtEnd()<CR>

command! RCDeleteMultipleNewlines :call DeleteMultipleNewlines()<CR>
command! RCTrimWhitespaceAtEnd :call TrimWhitespaceAtEnd()<CR>
