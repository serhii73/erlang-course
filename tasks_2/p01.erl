-module(p01).

-export([last/1]).

last(ONE = [_]) ->
    ONE;
last([_|T]) ->
    last(T).
