concatinate([], List, List).
% concatinate(List1, List2, List3) :- List1 = [Head|Tail], List3 = [Head|ListX], concatinate(Tail, List2, ListX).
concatinate([Head|Tail1], List, [Head|Tail2]) :- concatinate(Tail1, List, Tail2).
