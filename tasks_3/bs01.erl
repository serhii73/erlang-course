-module(bs01).

-export([first_word/1]).

% first_word(Bin) ->
%    lists:nth(1, binary:split(Bin,<<" ">>)).

first_word(B) ->
   first_word(B, <<>>).

first_word(<< " ",   Rest/binary>>, <<>>) ->
   first_word(Rest, <<>>);
first_word(<<" ", _/binary>>, Acc) ->
   Acc;
first_word(<<C/utf8, Rest/binary>>, Acc) ->
   first_word(Rest, <<Acc/binary, C/utf8>>);
first_word(<<>>, Acc) ->
   Acc.
