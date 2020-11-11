-module(bs02).

-export([words/1]).

words(Bin) ->
   binary:split(Bin,<<" ">>).
