%% coding: utf-8
-module(windows_1251_tests).
-author("Eugene Khrustalev <eugene.khrustalev@gmail.com>").
-compile([export_all]).


windows_1251_test() ->
    Unicode = "В начале Russian",
    Win1251 = [16#c2, 16#20, 16#ed, 16#e0, 16#f7, 16#e0, 16#eb, 16#e5] ++ " Russian",
    Unicode = erlyconv:to_unicode(windows_1251, Win1251),
    Win1251 = erlyconv:from_unicode(windows_1251, Unicode),

    Bin = <<"В начале Russian"/utf8>>,
    Bin = erlyconv:to_unicode(windows_1251, erlyconv:from_unicode(windows_1251, Bin)),

    "Russian в конце" = erlyconv:to_unicode(windows_1251, "Russian " ++ [16#e2, 16#20, 16#ea, 16#ee, 16#ed, 16#f6, 16#e5]).
