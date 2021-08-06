columns([], []).
columns([(_, Column)|QueensTail], [Column|ColumnsTail]) :- columns(QueensTail, ColumnsTail).

diagonals1([], []).
diagonals1([(Row, Column)|QueensTail], [Diagonal|DiagonalTail]) :-
    Diagonal is (Column - Row),
    diagonals1(QueensTail, DiagonalTail).

diagonals2([], []).
diagonals2([(Row, Column)|QueensTail], [Diagonal|DiagonalTail]) :-
    Diagonal is (Column + Row),
    diagonals2(QueensTail, DiagonalTail).

generate_one_to_n(0, []).
generate_one_to_n(N, [Head|Tail]) :-
    Head is N,
    N1 is N-1,
    generate_one_to_n(N1, Tail).


valid_queen((Row, Column)) :- member(Column, [1, 2, 3, 4, 5, 6, 7, 8]).

valid_board([]).
valid_board([Head|Tail]) :- valid_queen(Head), valid_board(Tail).
    
queens(Board) :-
    Board = [(1, _), (2, _), (3, _), (4, _), (5, _), (6, _), (7, _), (8, _)],
    valid_board(Board),

    columns(Board, Columns),
    diagonals1(Board, Diagonals1),
    diagonals2(Board, Diagonals2),

    fd_all_different(Columns),
    fd_all_different(Diagonals1),
    fd_all_different(Diagonals2).
