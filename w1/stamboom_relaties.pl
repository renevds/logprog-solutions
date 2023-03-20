is_mother(X) :-
    mother(X,_).

is_father(X) :-
    male(X),
    father(X,_).

parent(X, Y) :-
    mother(X, Y); father(X, Y).

is_son(X) :-
    male(X),
    parent(_,X).

grandpa_of(X,Y) :-
    male(X),
    parent(X,Z),
    parent(Z,Y).

sibling(X,Y) :-
    mother(Z,X),
    mother(Z,Y),
    father(A,X),
    father(A,Y).

sister_of(X,Y) :-
    female(X),
    sibling(X,Y).