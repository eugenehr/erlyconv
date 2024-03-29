%% THIS FILE WAS AUTOMATICALLY GENERATED BY gen_src.pl
%% FROM mappings/MISC/CP1006.TXT AT 2016-08-19
-module(cp1006).
-vsn(20160819).
-export([to_unicode/1, from_unicode/1]).

%% Public functions
to_unicode(16#A1) -> 16#06F0;
to_unicode(16#A2) -> 16#06F1;
to_unicode(16#A3) -> 16#06F2;
to_unicode(16#A4) -> 16#06F3;
to_unicode(16#A5) -> 16#06F4;
to_unicode(16#A6) -> 16#06F5;
to_unicode(16#A7) -> 16#06F6;
to_unicode(16#A8) -> 16#06F7;
to_unicode(16#A9) -> 16#06F8;
to_unicode(16#AA) -> 16#06F9;
to_unicode(16#AB) -> 16#060C;
to_unicode(16#AC) -> 16#061B;
to_unicode(16#AE) -> 16#061F;
to_unicode(16#AF) -> 16#FE81;
to_unicode(16#B0) -> 16#FE8D;
to_unicode(16#B1) -> 16#FE8E;
to_unicode(16#B2) -> 16#F8FB;
to_unicode(16#B3) -> 16#FE8F;
to_unicode(16#B4) -> 16#FE91;
to_unicode(16#B5) -> 16#FB56;
to_unicode(16#B6) -> 16#FB58;
to_unicode(16#B7) -> 16#FE93;
to_unicode(16#B8) -> 16#FE95;
to_unicode(16#B9) -> 16#FE97;
to_unicode(16#BA) -> 16#FB66;
to_unicode(16#BB) -> 16#FB68;
to_unicode(16#BC) -> 16#FE99;
to_unicode(16#BD) -> 16#FE9B;
to_unicode(16#BE) -> 16#FE9D;
to_unicode(16#BF) -> 16#FE9F;
to_unicode(16#C0) -> 16#FB7A;
to_unicode(16#C1) -> 16#FB7C;
to_unicode(16#C2) -> 16#FEA1;
to_unicode(16#C3) -> 16#FEA3;
to_unicode(16#C4) -> 16#FEA5;
to_unicode(16#C5) -> 16#FEA7;
to_unicode(16#C6) -> 16#FEA9;
to_unicode(16#C7) -> 16#FB84;
to_unicode(16#C8) -> 16#FEAB;
to_unicode(16#C9) -> 16#FEAD;
to_unicode(16#CA) -> 16#FB8C;
to_unicode(16#CB) -> 16#FEAF;
to_unicode(16#CC) -> 16#FB8A;
to_unicode(16#CD) -> 16#FEB1;
to_unicode(16#CE) -> 16#FEB3;
to_unicode(16#CF) -> 16#FEB5;
to_unicode(16#D0) -> 16#FEB7;
to_unicode(16#D1) -> 16#FEB9;
to_unicode(16#D2) -> 16#FEBB;
to_unicode(16#D3) -> 16#FEBD;
to_unicode(16#D4) -> 16#FEBF;
to_unicode(16#D5) -> 16#FEC1;
to_unicode(16#D6) -> 16#FEC5;
to_unicode(16#D7) -> 16#FEC9;
to_unicode(16#D8) -> 16#FECA;
to_unicode(16#D9) -> 16#FECB;
to_unicode(16#DA) -> 16#FECC;
to_unicode(16#DB) -> 16#FECD;
to_unicode(16#DC) -> 16#FECE;
to_unicode(16#DD) -> 16#FECF;
to_unicode(16#DE) -> 16#FED0;
to_unicode(16#DF) -> 16#FED1;
to_unicode(16#E0) -> 16#FED3;
to_unicode(16#E1) -> 16#FED5;
to_unicode(16#E2) -> 16#FED7;
to_unicode(16#E3) -> 16#FED9;
to_unicode(16#E4) -> 16#FEDB;
to_unicode(16#E5) -> 16#FB92;
to_unicode(16#E6) -> 16#FB94;
to_unicode(16#E7) -> 16#FEDD;
to_unicode(16#E8) -> 16#FEDF;
to_unicode(16#E9) -> 16#FEE0;
to_unicode(16#EA) -> 16#FEE1;
to_unicode(16#EB) -> 16#FEE3;
to_unicode(16#EC) -> 16#FB9E;
to_unicode(16#ED) -> 16#FEE5;
to_unicode(16#EE) -> 16#FEE7;
to_unicode(16#EF) -> 16#FE85;
to_unicode(16#F0) -> 16#FEED;
to_unicode(16#F1) -> 16#FBA6;
to_unicode(16#F2) -> 16#FBA8;
to_unicode(16#F3) -> 16#FBA9;
to_unicode(16#F4) -> 16#FBAA;
to_unicode(16#F5) -> 16#FE80;
to_unicode(16#F6) -> 16#FE89;
to_unicode(16#F7) -> 16#FE8A;
to_unicode(16#F8) -> 16#FE8B;
to_unicode(16#F9) -> 16#FEF1;
to_unicode(16#FA) -> 16#FEF2;
to_unicode(16#FB) -> 16#FEF3;
to_unicode(16#FC) -> 16#FBB0;
to_unicode(16#FD) -> 16#FBAE;
to_unicode(16#FE) -> 16#FE7C;
to_unicode(16#FF) -> 16#FE7D;
to_unicode(List) when is_list(List) -> [to_unicode(C) || C <- List];
to_unicode(Bin) when is_binary(Bin) -> bin_to_unicode(Bin, <<>>);
to_unicode(Other) -> Other.

from_unicode(16#06F0) -> 16#A1;
from_unicode(16#06F1) -> 16#A2;
from_unicode(16#06F2) -> 16#A3;
from_unicode(16#06F3) -> 16#A4;
from_unicode(16#06F4) -> 16#A5;
from_unicode(16#06F5) -> 16#A6;
from_unicode(16#06F6) -> 16#A7;
from_unicode(16#06F7) -> 16#A8;
from_unicode(16#06F8) -> 16#A9;
from_unicode(16#06F9) -> 16#AA;
from_unicode(16#060C) -> 16#AB;
from_unicode(16#061B) -> 16#AC;
from_unicode(16#061F) -> 16#AE;
from_unicode(16#FE81) -> 16#AF;
from_unicode(16#FE8D) -> 16#B0;
from_unicode(16#FE8E) -> 16#B1;
from_unicode(16#F8FB) -> 16#B2;
from_unicode(16#FE8F) -> 16#B3;
from_unicode(16#FE91) -> 16#B4;
from_unicode(16#FB56) -> 16#B5;
from_unicode(16#FB58) -> 16#B6;
from_unicode(16#FE93) -> 16#B7;
from_unicode(16#FE95) -> 16#B8;
from_unicode(16#FE97) -> 16#B9;
from_unicode(16#FB66) -> 16#BA;
from_unicode(16#FB68) -> 16#BB;
from_unicode(16#FE99) -> 16#BC;
from_unicode(16#FE9B) -> 16#BD;
from_unicode(16#FE9D) -> 16#BE;
from_unicode(16#FE9F) -> 16#BF;
from_unicode(16#FB7A) -> 16#C0;
from_unicode(16#FB7C) -> 16#C1;
from_unicode(16#FEA1) -> 16#C2;
from_unicode(16#FEA3) -> 16#C3;
from_unicode(16#FEA5) -> 16#C4;
from_unicode(16#FEA7) -> 16#C5;
from_unicode(16#FEA9) -> 16#C6;
from_unicode(16#FB84) -> 16#C7;
from_unicode(16#FEAB) -> 16#C8;
from_unicode(16#FEAD) -> 16#C9;
from_unicode(16#FB8C) -> 16#CA;
from_unicode(16#FEAF) -> 16#CB;
from_unicode(16#FB8A) -> 16#CC;
from_unicode(16#FEB1) -> 16#CD;
from_unicode(16#FEB3) -> 16#CE;
from_unicode(16#FEB5) -> 16#CF;
from_unicode(16#FEB7) -> 16#D0;
from_unicode(16#FEB9) -> 16#D1;
from_unicode(16#FEBB) -> 16#D2;
from_unicode(16#FEBD) -> 16#D3;
from_unicode(16#FEBF) -> 16#D4;
from_unicode(16#FEC1) -> 16#D5;
from_unicode(16#FEC5) -> 16#D6;
from_unicode(16#FEC9) -> 16#D7;
from_unicode(16#FECA) -> 16#D8;
from_unicode(16#FECB) -> 16#D9;
from_unicode(16#FECC) -> 16#DA;
from_unicode(16#FECD) -> 16#DB;
from_unicode(16#FECE) -> 16#DC;
from_unicode(16#FECF) -> 16#DD;
from_unicode(16#FED0) -> 16#DE;
from_unicode(16#FED1) -> 16#DF;
from_unicode(16#FED3) -> 16#E0;
from_unicode(16#FED5) -> 16#E1;
from_unicode(16#FED7) -> 16#E2;
from_unicode(16#FED9) -> 16#E3;
from_unicode(16#FEDB) -> 16#E4;
from_unicode(16#FB92) -> 16#E5;
from_unicode(16#FB94) -> 16#E6;
from_unicode(16#FEDD) -> 16#E7;
from_unicode(16#FEDF) -> 16#E8;
from_unicode(16#FEE0) -> 16#E9;
from_unicode(16#FEE1) -> 16#EA;
from_unicode(16#FEE3) -> 16#EB;
from_unicode(16#FB9E) -> 16#EC;
from_unicode(16#FEE5) -> 16#ED;
from_unicode(16#FEE7) -> 16#EE;
from_unicode(16#FE85) -> 16#EF;
from_unicode(16#FEED) -> 16#F0;
from_unicode(16#FBA6) -> 16#F1;
from_unicode(16#FBA8) -> 16#F2;
from_unicode(16#FBA9) -> 16#F3;
from_unicode(16#FBAA) -> 16#F4;
from_unicode(16#FE80) -> 16#F5;
from_unicode(16#FE89) -> 16#F6;
from_unicode(16#FE8A) -> 16#F7;
from_unicode(16#FE8B) -> 16#F8;
from_unicode(16#FEF1) -> 16#F9;
from_unicode(16#FEF2) -> 16#FA;
from_unicode(16#FEF3) -> 16#FB;
from_unicode(16#FBB0) -> 16#FC;
from_unicode(16#FBAE) -> 16#FD;
from_unicode(16#FE7C) -> 16#FE;
from_unicode(16#FE7D) -> 16#FF;
from_unicode(List) when is_list(List) -> [from_unicode(C) || C <- List];
from_unicode(Bin) when is_binary(Bin) -> bin_from_unicode(Bin, <<>>);
from_unicode(Other) -> Other.

%% Private functions
bin_to_unicode(<<>>, Bin) -> Bin;
bin_to_unicode(<<C, Rest/binary>>, Acc) ->
    U = to_unicode(C),
    bin_to_unicode(Rest, <<Acc/binary, U/utf8>>).

bin_from_unicode(<<>>, Bin) -> Bin;
bin_from_unicode(<<U/utf8, Rest/binary>>, Acc) ->
    C = from_unicode(U),
    bin_from_unicode(Rest, <<Acc/binary, C>>).
