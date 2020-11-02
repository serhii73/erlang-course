-module(p06).

-export([is_palindrome/1]).


reverse([]) -> 
    [];
reverse([H | T]) -> 
    reverse(T) ++ [H].

is_palindrome(X) ->
    case reverse(X) of
        X ->
            yes;
        _ ->
            no
    end.
