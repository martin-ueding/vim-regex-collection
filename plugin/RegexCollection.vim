" Copyright © 2012-2013 Martin Ueding <dev@martin-ueding.de>

menu Plugin.Regex\ Collection.Delete\ Multiple\ Newlines :call regexcollection#DeleteMultipleNewlines()<CR>
menu Plugin.Regex\ Collection.Insert\ Apostrophe\ Into\ Names :call regexcollection#InsertApostropheIntoNames()<CR>
menu Plugin.Regex\ Collection.Trim\ Whitespace\ At\ End :call regexcollection#TrimWhitespaceAtEnd()<CR>
menu Plugin.Regex\ Collection.Uppercase\ Apostrophe\ Names :call regexcollection#UppercaseApostropheNames()<CR>

command! RCDeleteMultipleNewlines :call regexcollection#DeleteMultipleNewlines()<CR>
command! RCInsertApostropheIntoNames :call regexcollection#InsertApostropheIntoNames()<CR>
command! RCTrimWhitespaceAtEnd :call regexcollection#TrimWhitespaceAtEnd()<CR>
command! RCUppercaseApostropheNames :call regexcollection#UppercaseApostropheNames()<CR>
