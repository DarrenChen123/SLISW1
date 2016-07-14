reserve([], []).
reserve([a], [a]).
reserve([a, b, c], [c, b, a]).

reserve(List,ReserveList) :-
    (List = [Head|Tail]),
    reserve(Tail, ReserveTail),
    append(ReserveTail, [Head], ReserveList).

