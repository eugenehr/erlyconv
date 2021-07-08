%% Copyright Eugene Khrustalev 2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

%% @author Eugene Khrustalev <eugene.khrustalev@gmail.com>
%% @doc A set of functions for converting text between the unicode and different character sets

-module(erlyconv).
-author("Eugene Khrustalev <eugene.khrustalev@gmail.com>").
-export([to_unicode/2, from_unicode/2]).


-spec to_unicode(CP, Text) -> Unicode when
    CP :: atom(),
    Text :: char() | string() | binary(),
    Unicode :: char() | string() | binary() | {error, not_supported_charset}.
%%
%% @doc Convert text from the given character set to the unicode
%%
to_unicode(CP, Text) when
    CP =:= iso8859_1;  CP =:= iso8859_2;  CP =:= iso8859_3;  CP =:= iso8859_4;
    CP =:= iso8859_5;  CP =:= iso8859_6;  CP =:= iso8859_7;  CP =:= iso8859_8;
    CP =:= iso8859_9;  CP =:= iso8859_10; CP =:= iso8859_11; CP =:= iso8859_13;
    CP =:= iso8859_14; CP =:= iso8859_15; CP =:= iso8859_16;
    CP =:= cp037;      CP =:= cp500;      CP =:= cp1024;
    CP =:= cp10007;    CP =:= cp10006;    CP =:= cp10079;
    CP =:= cp10029;    CP =:= cp10000;    CP =:= cp10081;
    CP =:= cp437;      CP =:= cp737;      CP =:= cp775;      CP =:= cp850;
    CP =:= cp852;      CP =:= cp855;      CP =:= cp857;      CP =:= cp860;
    CP =:= cp861;      CP =:= cp862;      CP =:= cp863;      CP =:= cp864;
    CP =:= cp865;      CP =:= cp866;      CP =:= cp869;      CP =:= cp874;
    CP =:= cp932;      CP =:= cp936;      CP =:= cp949;      CP =:= cp950;
    CP =:= cp1250;     CP =:= cp1251;     CP =:= cp1252;     CP =:= cp1253;
    CP =:= cp1254;     CP =:= cp1255;     CP =:= cp1256;     CP =:= cp1257;
    CP =:= atarist;    CP =:= cp424;      CP =:= cp856;      CP =:= cp1006;
    CP =:= koi8r;      CP =:= koi8u;      CP =:= kps9566;    CP =:= kz1048;
    CP =:= cp1258;     CP =:= cp1047;     CP =:= cp858
    -> CP:to_unicode(Text);

%% Additional mappings
to_unicode(ibm_us_canada, Text)         -> to_unicode(cp037, Text);
to_unicode(ibm_international, Text)     -> to_unicode(cp500, Text);
to_unicode(ibm_latin5_turkish, Text)    -> to_unicode(cp1026, Text);
to_unicode(mac_cyrillic, Text)          -> to_unicode(cp10007, Text);
to_unicode(mac_greek, Text)             -> to_unicode(cp10006, Text);
to_unicode(mac_icelandic, Text)         -> to_unicode(cp10079, Text);
to_unicode(mac_latin2, Text)            -> to_unicode(cp10029, Text);
to_unicode(mac_roman, Text)             -> to_unicode(cp10000, Text);
to_unicode(mac_turkish, Text)           -> to_unicode(cp10081, Text);
to_unicode(dos_latin_us, Text)          -> to_unicode(cp437, Text);
to_unicode(dos_latin_greek, Text)       -> to_unicode(cp737, Text);
to_unicode(dos_balt_rim, Text)          -> to_unicode(cp775, Text);
to_unicode(dos_latin1, Text)            -> to_unicode(cp850, Text);
to_unicode(dos_latin2, Text)            -> to_unicode(cp852, Text);
to_unicode(dos_cyrillic, Text)          -> to_unicode(cp855, Text);
to_unicode(dos_turkish, Text)           -> to_unicode(cp857, Text);
to_unicode(dos_portuguese, Text)        -> to_unicode(cp860, Text);
to_unicode(dos_icelandic, Text)         -> to_unicode(cp861, Text);
to_unicode(dos_hebrew, Text)            -> to_unicode(cp862, Text);
to_unicode(dos_canada_f, Text)          -> to_unicode(cp863, Text);
to_unicode(dos_arabic, Text)            -> to_unicode(cp864, Text);
to_unicode(dos_nordic, Text)            -> to_unicode(cp865, Text);
to_unicode(dos_cyrillic_russian, Text)  -> to_unicode(cp866, Text);
to_unicode(dos_greek2, Text)            -> to_unicode(cp869, Text);
to_unicode(windows_932, Text)           -> to_unicode(cp932, Text);
to_unicode(windows_936, Text)           -> to_unicode(cp936, Text);
to_unicode(windows_949, Text)           -> to_unicode(cp949, Text);
to_unicode(windows_950, Text)           -> to_unicode(cp950, Text);
to_unicode(windows_1250, Text)          -> to_unicode(cp1250, Text);
to_unicode(windows_1251, Text)          -> to_unicode(cp1251, Text);
to_unicode(windows_1252, Text)          -> to_unicode(cp1252, Text);
to_unicode(windows_1253, Text)          -> to_unicode(cp1253, Text);
to_unicode(windows_1254, Text)          -> to_unicode(cp1254, Text);
to_unicode(windows_1255, Text)          -> to_unicode(cp1255, Text);
to_unicode(windows_1256, Text)          -> to_unicode(cp1256, Text);
to_unicode(windows_1257, Text)          -> to_unicode(cp1257, Text);
to_unicode(windows_1258, Text)          -> to_unicode(cp1258, Text);
to_unicode(ibm_latin_1, Text)           -> to_unicode(cp1047, Text);
to_unicode(_, _)                        -> {error, not_supported_charset}.


-spec from_unicode(CP, Text) -> Unicode when
    CP :: atom(),
    Text :: char() | string() | binary(),
    Unicode :: char() | string() | binary() | {error, not_supported_charset}.
%%
%% @doc Convert text from the unicode to the given character set
%%
from_unicode(CP, Text) when
    CP =:= iso8859_1;  CP =:= iso8859_2;  CP =:= iso8859_3;  CP =:= iso8859_4;
    CP =:= iso8859_5;  CP =:= iso8859_6;  CP =:= iso8859_7;  CP =:= iso8859_8;
    CP =:= iso8859_9;  CP =:= iso8859_10; CP =:= iso8859_11; CP =:= iso8859_13;
    CP =:= iso8859_14; CP =:= iso8859_15; CP =:= iso8859_16;
    CP =:= cp037;      CP =:= cp500;      CP =:= cp1024;
    CP =:= cp10007;    CP =:= cp10006;    CP =:= cp10079;
    CP =:= cp10029;    CP =:= cp10000;    CP =:= cp10081;
    CP =:= cp437;      CP =:= cp737;      CP =:= cp775;      CP =:= cp850;
    CP =:= cp852;      CP =:= cp855;      CP =:= cp857;      CP =:= cp860;
    CP =:= cp861;      CP =:= cp862;      CP =:= cp863;      CP =:= cp864;
    CP =:= cp865;      CP =:= cp866;      CP =:= cp869;      CP =:= cp874;
    CP =:= cp932;      CP =:= cp936;      CP =:= cp949;      CP =:= cp950;
    CP =:= cp1250;     CP =:= cp1251;     CP =:= cp1252;     CP =:= cp1253;
    CP =:= cp1254;     CP =:= cp1255;     CP =:= cp1256;     CP =:= cp1257;
    CP =:= atarist;    CP =:= cp424;      CP =:= cp856;      CP =:= cp1006;
    CP =:= koi8r;      CP =:= koi8u;      CP =:= kps9566;    CP =:= kz1048;
    CP =:= cp1258;     CP =:= cp1047;     CP =:= cp858
    -> CP:from_unicode(Text);

%% Additional mappings
from_unicode(ibm_us_canada, Text)         -> from_unicode(cp037, Text);
from_unicode(ibm_international, Text)     -> from_unicode(cp500, Text);
from_unicode(ibm_latin5_turkish, Text)    -> from_unicode(cp1026, Text);
from_unicode(mac_cyrillic, Text)          -> from_unicode(cp10007, Text);
from_unicode(mac_greek, Text)             -> from_unicode(cp10006, Text);
from_unicode(mac_icelandic, Text)         -> from_unicode(cp10079, Text);
from_unicode(mac_latin2, Text)            -> from_unicode(cp10029, Text);
from_unicode(mac_roman, Text)             -> from_unicode(cp10000, Text);
from_unicode(mac_turkish, Text)           -> from_unicode(cp10081, Text);
from_unicode(dos_latin_us, Text)          -> from_unicode(cp437, Text);
from_unicode(dos_latin_greek, Text)       -> from_unicode(cp737, Text);
from_unicode(dos_balt_rim, Text)          -> from_unicode(cp775, Text);
from_unicode(dos_latin1, Text)            -> from_unicode(cp850, Text);
from_unicode(dos_latin2, Text)            -> from_unicode(cp852, Text);
from_unicode(dos_cyrillic, Text)          -> from_unicode(cp855, Text);
from_unicode(dos_turkish, Text)           -> from_unicode(cp857, Text);
from_unicode(dos_portuguese, Text)        -> from_unicode(cp860, Text);
from_unicode(dos_icelandic, Text)         -> from_unicode(cp861, Text);
from_unicode(dos_hebrew, Text)            -> from_unicode(cp862, Text);
from_unicode(dos_canada_f, Text)          -> from_unicode(cp863, Text);
from_unicode(dos_arabic, Text)            -> from_unicode(cp864, Text);
from_unicode(dos_nordic, Text)            -> from_unicode(cp865, Text);
from_unicode(dos_cyrillic_russian, Text)  -> from_unicode(cp866, Text);
from_unicode(dos_greek2, Text)            -> from_unicode(cp869, Text);
from_unicode(windows_932, Text)           -> from_unicode(cp932, Text);
from_unicode(windows_936, Text)           -> from_unicode(cp936, Text);
from_unicode(windows_949, Text)           -> from_unicode(cp949, Text);
from_unicode(windows_950, Text)           -> from_unicode(cp950, Text);
from_unicode(windows_1250, Text)          -> from_unicode(cp1250, Text);
from_unicode(windows_1251, Text)          -> from_unicode(cp1251, Text);
from_unicode(windows_1252, Text)          -> from_unicode(cp1252, Text);
from_unicode(windows_1253, Text)          -> from_unicode(cp1253, Text);
from_unicode(windows_1254, Text)          -> from_unicode(cp1254, Text);
from_unicode(windows_1255, Text)          -> from_unicode(cp1255, Text);
from_unicode(windows_1256, Text)          -> from_unicode(cp1256, Text);
from_unicode(windows_1257, Text)          -> from_unicode(cp1257, Text);
from_unicode(windows_1258, Text)          -> from_unicode(cp1258, Text);
from_unicode(ibm_latin_1, Text)           -> from_unicode(cp1047, Text);
from_unicode(_, _)                        -> {error, not_supported_charset}.
