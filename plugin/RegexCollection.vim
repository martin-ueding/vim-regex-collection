" Copyright © 2012 Martin Ueding <dev@martin-ueding.de>

function! DeleteMultipleNewlines()
	:%s/\v\n(\s*\n){2,}/\r\r/<CR>
endfunction

function! TrimWhitespaceAtEnd()
	:%s/\v\s+$//<CR>
endfunction

menu Plugin.Regex\ Collection.Delete\ Multiple\ Newlines :call DeleteMultipleNewlines()<CR>
menu Plugin.Regex\ Collection.Trim\ Whitespace\ At\ End :call TrimWhitespaceAtEnd()<CR>

menu RCDeleteMultipleNewlines :call DeleteMultipleNewlines()<CR>
menu RCTrimWhitespaceAtEnd :call TrimWhitespaceAtEnd()<CR>
