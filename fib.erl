-module(fib).
-export([fib/1, howmany/2]).

fib(0) -> 0;
fib(1) -> 1;
fib(N) -> fib(N-1)+fib(N-2).

howmany(_,[]) -> 0;
howmany(X,L) -> howmany(X,L,0).

howmany(X,[],Acc) -> Acc;
howmany(X,[H|T],Acc) when X == H -> howmany(X,T,Acc+1);
howmany(X,[H|T],Acc) -> howmany(X,T,Acc). 
