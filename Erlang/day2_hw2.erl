-module(day2_hw2).
-export([total/1]).

total(List) ->
    [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].

