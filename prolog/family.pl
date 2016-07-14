father(zeb, john_boy_sr).
father(john_boy_sr, john_boy_jr).

ancester(X, Y) :-
    father(X, Y).
ancester(X, Y) :-
    father(X, Z), ancester(Z, Y).
