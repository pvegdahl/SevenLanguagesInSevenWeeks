count(0, []).
count(Count, [_|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(Sum, [Head|Tail]) :- sum(TailSum, Tail), Sum is TailSum + Head.

average(0, []).
average(Avg, List) :- sum(Sum, List), count(Count, List), Avg is Sum / Count.
