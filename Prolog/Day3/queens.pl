rows([], []).
rows([(Row, _)|QueensTail], [Row|RowsTail]) :- rows(QueensTail, RowsTail).

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

valid_queen((Row, Column)) :-
    Range = [1, 2, 3, 4],
    member(Row, Range),
    member(Column, Range).

valid_board([]).
valid_board([Head|Tail]) :- valid_queen(Head), valid_board(Tail).
    
queens(Board) :-
    Size is 4,
    length(Board, Size),
    valid_board(Board),

    rows(Board, Rows),
    columns(Board, Columns),
    diagonals1(Board, Diagonals1),
    diagonals2(Board, Diagonals2),

    fd_all_different(Rows),
    fd_all_different(Columns),
    fd_all_different(Diagonals1),
    fd_all_different(Diagonals2).
