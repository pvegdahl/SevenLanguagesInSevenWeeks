different(red, green). different(green, red).
different(red, blue). different(blue, red).
different(blue, green). different(green, blue).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
    different(Mississippi, Tennessee),
    different(Tennessee, Mississippi),
    different(Mississippi, Alabama),
    different(Alabama, Mississippi),
    different(Tennessee, Alabama),
    different(Alabama, Tennessee),
    different(Tennessee, Georgia),
    different(Georgia, Tennessee),
    different(Alabama, Georgia),
    different(Georgia, Alabama),
    different(Alabama, Florida),
    different(Florida, Alabama),
    different(Georgia, Florida),
    different(Florida, Georgia).

