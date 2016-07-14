-module(count_ten).
-export([number/1]).

number(10) -> io:format("Count:10~n");

number(N) ->
    io:format("Count:" ++ integer_to_list(N) ++ "~n"),
    number(N + 1).
