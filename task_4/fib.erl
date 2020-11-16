-module(fib).

-export([fib/1]).

fib(N) ->
    fib(N, 0, 1).

fib(1, _, Next) -> 
    Next;
fib(N, Prev, Next) when N > 0 -> 
    fib(N - 1, Next, Prev+Next).
