%% coding: utf-8
-module(file_tests).
-author("Eugene Khrustalev <eugene.khrustalev@gmail.com>").
-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

text() ->
    <<"съешь же ещё этих мягких французских булок, да выпей чаю\n"/utf8>>.
latin_text() ->
    <<"A Unicode latin 1 text"/utf8>>.

filename(FName) ->
    Dir = code:lib_dir(erlyconv, test),
    filename:join(Dir, FName).

koi8r_to_unicode_test() ->
    {ok, Koi8r} = file:read_file(filename("test.koi8r.txt")),
    Unicode = erlyconv:to_unicode(koi8r, Koi8r),
    Unicode2 = text(),
%%    ?debugFmt("~w~n", [Unicode]),
%%    ?debugFmt("~w~n", [Unicode2]),
    Unicode = Unicode2.

win1251_to_unicode_test() ->
    {ok, Win1251} = file:read_file(filename("test.win1251.txt")),
    Unicode = erlyconv:to_unicode(windows_1251, Win1251),
    Unicode2 = text(),
%%    ?debugFmt("~w~n", [Unicode]),
%%    ?debugFmt("~w~n", [Unicode2]),
    Unicode = Unicode2.

cp1047_to_unicode_test() ->
    {ok, Cp1047} = file:read_file(filename("latin_test.cp1047.txt")),
    Unicode = erlyconv:to_unicode(cp1047, Cp1047),
    Unicode2 = latin_text(),
%%    ?debugFmt("~w~n", [Unicode]),
%%    ?debugFmt("~w~n", [Unicode2]),
    Unicode = Unicode2.

both_latin_text() ->
    {ok, Koi8r} = file:read_file(filename("latin_test.koi8r.txt")),
    {ok, Win1251} = file:read_file(filename("latin_test.win1251.txt")),
    {ok, Cp1047} = file:read_file(filename("latin_test.cp1047.txt")),
    Koi8r = erlyconv:from_unicode(koi8r, erlyconv:to_unicode(cp1251, Win1251)),
    Koi8r = erlyconv:from_unicode(koi8r, erlyconv:to_unicode(cp1047, Cp1047)),
    Win1251 = erlyconv:from_unicode(cp1251, erlyconv:to_unicode(koi8r, Koi8r)),
    Win1251 = erlyconv:from_unicode(cp1251, erlyconv:to_unicode(cp1047, Cp1047)),
    Cp1047 = erlyconv:from_unicode(cp1047, erlyconv:to_unicode(koi8r, Koi8r)),
    Cp1047 = erlyconv:from_unicode(cp1047, erlyconv:to_unicode(cp1251, Win1251)).    

both_test() ->
    {ok, Koi8r} = file:read_file(filename("test.koi8r.txt")),
    {ok, Win1251} = file:read_file(filename("test.win1251.txt")),
    Koi8r = erlyconv:from_unicode(koi8r, erlyconv:to_unicode(cp1251, Win1251)),
    Win1251 = erlyconv:from_unicode(cp1251, erlyconv:to_unicode(koi8r, Koi8r)).