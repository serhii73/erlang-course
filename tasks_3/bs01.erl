-module(bs01).

-export([first_word/1]).

first_word(Bin) ->
   lists:nth(1, binary:split(Bin,<<" ">>)).
