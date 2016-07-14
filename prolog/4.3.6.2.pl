min([A], A).
min(List, MinNum) :-
    (List = [Head|Tail]),
    min(Tail, MinTailNum),
    MinNum is min(Head, MinTailNum).
