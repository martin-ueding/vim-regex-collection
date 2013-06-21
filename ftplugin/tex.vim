" Copyright © 2012-2013 Martin Ueding <dev@martin-ueding.de>

menu Plugin.Regex\ Collection.Convert\ Inline\ Math :call regexcollection#ConvertInlineMath()<CR>
menu Plugin.Regex\ Collection.Convert\ Inner\ Product :call regexcollection#ConvertInnerProduct()<CR>
menu Plugin.Regex\ Collection.Convert\ Ordinary\ Derivatives :call regexcollection#ConvertOrdinaryDerivatives()<CR>
menu Plugin.Regex\ Collection.Expand\ Display\ Math :call regexcollection#ExpandDisplayMath()<CR>
menu Plugin.Regex\ Collection.Unescape\ Umlauts :call regexcollection#UnescapeUmlauts()<CR>

command! RCConvertInlineMath :call regexcollection#ConvertInlineMath()
command! RCConvertInnerProduct :call regexcollection#ConvertInnerProduct()
command! RCConvertOrdinaryDerivatives :call regexcollection#ConvertOrdinaryDerivatives()
command! RCExpandDisplayMath :call regexcollection#ExpandDisplayMath()
command! RCUnescapeUmlauts :call regexcollection#UnescapeUmlauts()
