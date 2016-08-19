%% coding: utf-8
-module(file_tests).
-author("Eugene Khrustalev <eugene.khrustalev@gmail.com>").
-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

text() ->
    <<"съешь же ещё этих мягких французских булок, да выпей чаю\n"/utf8>>.

koi8r_to_unicode_test() ->
    {ok, Koi8r} = file:read_file("./test/test.koi8r.txt"),
    Unicode = erlyconv:to_unicode(koi8r, Koi8r),
    Unicode2 = text(),
%%    ?debugFmt("~w~n", [Unicode]),
%%    ?debugFmt("~w~n", [Unicode2]),
    Unicode = Unicode2.

win1251_to_unicode_test() ->
    {ok, Win1251} = file:read_file("./test/test.win1251.txt"),
    Unicode = erlyconv:to_unicode(windows_1251, Win1251),
    Unicode2 = text(),
%%    ?debugFmt("~w~n", [Unicode]),
%%    ?debugFmt("~w~n", [Unicode2]),
    Unicode = Unicode2.

both_test() ->
    {ok, Koi8r} = file:read_file("./test/test.koi8r.txt"),
    {ok, Win1251} = file:read_file("./test/test.win1251.txt"),
    Koi8r = erlyconv:from_unicode(koi8r, erlyconv:to_unicode(cp1251, Win1251)),
    Win1251 = erlyconv:from_unicode(cp1251, erlyconv:to_unicode(koi8r, Koi8r)).