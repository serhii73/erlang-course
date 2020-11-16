-module(p05).

-export([reverse/2]).


reverse([], Acc) ->
    Acc;
reverse([H | T], Acc) ->
    reverse(T, [H | Acc]).


% Also, we can do it like this:
% reverse([]) -> 
%     [];
% reverse([H | T]) -> 
%     reverse(T) ++ [H].
