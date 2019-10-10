%% coding: utf-8
-module(supported_charsets_tests).
-author("Eugene Khrustalev <eugene.khrustalev@gmail.com>").
-compile([export_all]).


supported_charsets_test() ->
    Text = "Some text",
    Text = erlyconv:from_unicode(cp1047, erlyconv:to_unicode(cp1047, Text)),
    {error, not_supported_charset} = erlyconv:to_unicode(xablau, "Xablau"),
    {error, not_supported_charset} = erlyconv:from_unicode(xablau, "Xablau").