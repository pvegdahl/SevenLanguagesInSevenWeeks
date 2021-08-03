father(philip, roger).
father(philip, lawrence).
father(steven, philip).
father(steven, nathan).
father(steven, timothy).

ancestor(X, Y) :- father(X, Y).
ancestor(X, Y) :- father(X, Z), ancestor(Z, Y).

