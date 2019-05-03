% (a, b) * ab (a, b).

parse(L):- 
    start(S),
    trans(S,L).
trans(X, [A|B]) :-
    delta(X, A, Y), /* X---A--->Y*/
    write(X),
    write(' '),
    write([A|B]),
    nl,
    trans(Y, B).
trans(X, []) :- final(X),
    write(X),
    write(' '),
    write([]), nl.

