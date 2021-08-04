fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

last_element([X], X).
last_element([Head|Tail], N) :- last_element(Tail, N).

fib_series(0, [0]).
fib_series(1, [0, 1]).
fib_series(N, F) :-
    N > 1, 
    N1 is N - 1,
    N2 is N - 2,
    fib_series(N1, F1),
    fib_series(N2, F2),
    last_element(F1, F1Last),
    last_element(F2, F2Last),
    FLast is F1Last + F2Last,
    append(F1, [FLast], F).
