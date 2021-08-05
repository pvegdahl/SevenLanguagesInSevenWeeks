rows([], []).
rows([(Row, _)|QueensTail], [Row|RowsTail]) :- rows(QueensTail, RowsTail).

columns([], []).
columns([(_, Column)|QueensTail], [Column|ColumnsTail]) :- columns(QueensTail, ColumnsTail).

diagonals1([], []).
diagonals1([(Row, Column)|QueensTail], [Diagonal|DiagonalTail]) :-
    Diagonal is Column - Row,
    diagonals1(QueensTail, DiagonalTail).

diagonals2([], []).
diagonals2([(Row, Column)|QueensTail], [Diagonal|DiagonalTail]) :-
    Diagonal is Column + Row,
    diagonals2(QueensTail, DiagonalTail).
    
queens(Size, Solution) :-
    length(Solution, Size),
    rows(Solution, Rows),
    columns(Solution, Columns),
    diagonals1(Solution, Diagonals1),
    diagonals2(Solution, Diagonals2),
    fd_domain(Rows, 1, Size),
    fd_domain(Columns, 1, Size),
    fd_all_different(Rows),
    fd_all_different(Columns),
    fd_all_different(Diagonals1).
    fd_all_different(Diagonals2).
    
