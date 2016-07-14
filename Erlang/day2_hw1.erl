-module(day2_hw1).
-export([k_v/2]).

k_v(List, Name) ->
    [Value || {Key, Value} <- List, Key == Name ].
