-module(count).
-export([count/2]).

count(End, End) -> io:fwrite(io_lib:format("~p\n", [End]));
count(Start, End) ->
    io:fwrite(io_lib:format("~p\n", [Start])),
    count(Start+1, End).
