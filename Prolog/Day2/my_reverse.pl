my_reverse([], []).
my_reverse([Head|Tail], R) :-
    my_reverse(Tail, TailR),
    append(TailR, [Head], R).
