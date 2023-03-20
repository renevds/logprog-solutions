male(abe).
male(clancy).

male(herb).
male(homer).
male(bart).

female(mona).
female(jacqueline).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abe, homer).
parent(abe, herb).
parent(mona, homer).
parent(mona, herb).

parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jacqueline, marge).
parent(jacqueline, patty).
parent(jacqueline, selma).

parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).

parent(selma, ling).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).
