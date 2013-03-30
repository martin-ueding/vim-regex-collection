" Copyright © 2012-2013 Martin Ueding <dev@martin-ueding.de>

function! DeleteMultipleNewlines()
	%s/\v\n(\s*\n){2,}/\r\r/
endfunction

function! InsertApostropheIntoNames()
	%s/\v([^'])sche>/\1'sche/gc
endfunction

function! TrimWhitespaceAtEnd()
	%s/\v\s+$//
endfunction

function! UppercaseApostropheNames()
	%s/\v<([a-z]\w+'sche)>/\u\1/gc
endfunction

menu Plugin.Regex\ Collection.Delete\ Multiple\ Newlines :call DeleteMultipleNewlines()<CR>
menu Plugin.Regex\ Collection.Insert\ Apostrophe\ Into\ Names :call InsertApostropheIntoNames()<CR>
menu Plugin.Regex\ Collection.Trim\ Whitespace\ At\ End :call TrimWhitespaceAtEnd()<CR>
menu Plugin.Regex\ Collection.Uppercase\ Apostrophe\ Names :call UppercaseApostropheNames()<CR>

command! RCDeleteMultipleNewlines :call DeleteMultipleNewlines()<CR>
command! RCInsertApostropheIntoNames :call InsertApostropheIntoNames()<CR>
command! RCTrimWhitespaceAtEnd :call TrimWhitespaceAtEnd()<CR>
command! RCUppercaseApostropheNames :call UppercaseApostropheNames()<CR>
