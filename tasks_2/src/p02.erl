-module(p02).

-export([but_last/1]).

but_last(TWO = [_, _]) ->
    TWO;
but_last([_|T]) ->
    but_last(T).
