-module(list_tuple_lookup).
-export([lookup/2]).

lookup(List, TargetKey) -> lists:last([Value || {Key, Value} <- List, Key == TargetKey]).
