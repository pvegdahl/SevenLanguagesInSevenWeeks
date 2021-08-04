min([X], X).
min([Head|Tail], Min) :-
    min(Tail, MinTail),
    Head > MinTail -> Min is MinTail; Min is Head.


