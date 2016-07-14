mergeSort([], []).
mergeSort([A], [A]).
mergeSort(List, SortedList) :-
    (List = [FirstItem, SecondItem | Tail]),
    listDivide(List, ListOne, ListTwo),

    mergeSort(ListOne, SortedListOne),
    mergeSort(ListTwo, SortedListTwo),

    listMerge(SortedListOne, SortedListTwo, SortedList).

listDivide([], [], []).
listDivide([A], [A], []).

listDivide(List, FirstHalf, LastHalf) :-
    (List = [FirstItem, SecondItem | Rest]),
    (FirstHalf = [FirstItem | FirstRest]),
    (LastHalf = [SecondItem | SecondRest ]),
    listDivide(Rest, FirstRest, SecondRest).

listMerge(A, [], A).
listMerge([], A, A).

listMerge(ListOne, ListTwo, MergedList) :-
    (ListOne = [HeadOne | TailOne]),
    (ListTwo = [HeadTwo | TailTwo]),
    (HeadOne =< HeadTwo),

    (MergedList = [HeadOne | MergedTail]),

    listMerge(TailOne, ListTwo, MergedTail).

listMerge(ListOne, ListTwo, MergedList) :-
    (ListOne = [HeadOne | TailOne]),
    (ListTwo = [HeadTwo | TailTwo]),
    (HeadOne > HeadTwo),
    (MergedList = [HeadTwo | MergedTail]),
    listMerge(ListOne, TailTwo, MergedTail).
