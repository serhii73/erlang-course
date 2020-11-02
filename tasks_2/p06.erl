-module(p06).

-export([is_palindrome/1]).


is_palindrome(X) ->
    case lists:reverse(X) of
        X ->
            yes;
        _ ->
            no
    end.
