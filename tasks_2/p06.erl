-module(p06).

-export([is_palindrome/1]).


is_palindrome(X) ->
    lists:reverse(X) =:= X.
