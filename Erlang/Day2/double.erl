-module(double).
-export([double_all/1]).

double_all([]) -> [];
double_all([First|Rest]) -> [2*First|double_all(Rest)].
