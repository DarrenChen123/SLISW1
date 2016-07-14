q :- L = [33, 18, 2, 77, 18, 66, 9, 25], (sortcsj(L, P), write(P), nl).

sortcsj(L, S) :- permutation(L, S), ordered(S).

ordered([]).
ordered([_ | []]).
ordered([A | [B | T]]) :- A =< B, ordered([B | T]).

:- initialization(q).
