-module(recursive).
-export([sublist/2, tail_sublist/2,tail_reverse/1,fac/1, len/1, tail_fac/1, tail_len/1, duplicate/2]).

fac(0) -> 1;
fac(N) when N > 0 -> N*fac(N-1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_fac(N) -> tail_fac(N,1).

tail_fac(0,Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).


tail_len(L) -> tail_len(L,0).

tail_len([],Acc) -> Acc;
tail_len([_|T],Acc) -> tail_len(T,1+Acc).


duplicate(0,_) -> [];
duplicate(N,X) -> duplicate(N,X,[]).

duplicate(0,X,L) -> L;
duplicate(N,X,L) when N > 0 -> duplicate(N-1,X,[X|L]).

tail_reverse(L) -> tail_reverse(L,[]).
tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T, [H|Acc]).

sublist(_,0) -> [];
sublist([],_) -> [];
sublist([H|T], N) when N > 0 -> [H|sublist(T,N-1)].

tail_sublist(_,0) -> [];
tail_sublist([],_) -> [];
tail_sublist([H|T],N) -> tail_sublist([H|T],N,Acc).

tail_sublist([],N,Acc) -> Acc;
tail_sublist([H|T],N,Acc) when N > 0 -> tail_sublist(T,N-1,[H|Acc]).
