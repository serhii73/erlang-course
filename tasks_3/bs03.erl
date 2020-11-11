-module(bs03).

-export([splitt/2]).

splitt(Bin, Delimiter) ->
    binary:split(Bin,Delimiter).
