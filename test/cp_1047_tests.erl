%% coding: utf-8
-module(cp_1047_tests).
-author("Bruno Louvem <btlouvem@gmail.com>").
-compile([export_all]).


cp_1047_test() ->
    Unicode = "A Unicode English",
    Cp1047 = [16#c1, 16#40, 16#e4, 16#95, 16#89, 16#83, 16#96, 16#84, 16#85] ++ [64, 197, 149, 135, 147, 137, 162, 136],
    Unicode = erlyconv:to_unicode(cp1047, Cp1047),
    Cp1047 = erlyconv:from_unicode(cp1047, Unicode),

    Bin = <<"A Unicode English"/utf8>>,
    Bin = erlyconv:to_unicode(cp1047, erlyconv:from_unicode(cp1047, Bin)),

    "English A Unicode" = 
        erlyconv:to_unicode(cp1047, 
            [197, 149, 135, 147, 137, 162, 136, 64] ++ [16#c1, 16#40, 16#e4, 16#95, 16#89, 16#83, 16#96, 16#84, 16#85]).
