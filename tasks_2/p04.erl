-module(p04).

-export([len/1]).

len([]) ->
    0;
len([_]) ->
    1;
len([H|T]) ->
    1 + len(T).
