-module(tictactoe).
-export([winner/1]).

winner(Board) ->
    Triples = [
        row(Board, 0), row(Board, 1), row(Board, 2),
        column(Board, 0), column(Board, 1), column(Board, 2),
        diagonal1(Board), diagonal2(Board)],
    Winners = lists:map(fun(X) -> all_equal(X) end, Triples),
    WinnersFiltered = lists:filter(fun(X) -> X /= nil end, Winners),
    lists:foreach(fun(X) -> io:format("~p~n", [X]) end, WinnersFiltered).

all_equal([], Value) -> Value;
all_equal([Head|Tail], Value) ->
    if
        Head == Value -> all_equal(Tail, Value);
        true -> nil
    end.
all_equal([Head|Tail]) -> all_equal(Tail, Head).

row(Board, RowNum) -> lists:sublist(Board, 1+3*RowNum, 3).
column(Board, ColNum) -> [lists:nth(1+ColNum, Board), lists:nth(4+ColNum, Board), lists:nth(7+ColNum, Board)].
diagonal1(Board) -> [lists:nth(1, Board), lists:nth(5, Board), lists:nth(9, Board)].
diagonal2(Board) -> [lists:nth(3, Board), lists:nth(5, Board), lists:nth(7, Board)].
