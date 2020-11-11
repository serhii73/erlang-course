-module(p07).

-export([flatten/1]).

flatten(L) ->
    lists:reverse(flatten(L, [])).


flatten([[] | T],Acc) ->
    flatten(T, Acc);
flatten([[_ | _]=H|T],Acc) -> 
    flatten(T, flatten(H,Acc));
flatten([H | T], Acc) ->
    flatten(T, [H | Acc]);
flatten([], Acc) ->
    Acc.