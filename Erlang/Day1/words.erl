-module(words).
-export([count/1]).

% An empty string has no words
% A space at the beginning (or end) adds no words.
% A non-space at the beginning starts a word, but then there are no new words until another space
count([]) -> 0;
count([32 | Tail]) -> count(Tail);
count([_ | Tail]) -> 1 + count2(Tail).

count2([]) -> 0;
count2([32 | Tail]) -> count(Tail);
count2([_ | Tail]) -> count2(Tail).
