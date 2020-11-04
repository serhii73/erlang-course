-module(p07).

-export([flatten/2]).

flatten([], Acc) ->
    Acc;
flatten([[] | T],Acc) ->
    flatten(T, Acc);
flatten([[_ | _]=H|T],Acc) -> 
    flatten(T, flatten(H,Acc));
flatten([H | T], Acc) ->
    flatten(T, lists:append(Acc, [H])).
