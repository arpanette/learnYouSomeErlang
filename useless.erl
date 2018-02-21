-module(useless).
-export([add/2, hello/0, greet_and_add_two/1]).

add(A,B) ->
    A+B.

hello() ->
    io:format("i say what i want, goodbye world works for me~n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

