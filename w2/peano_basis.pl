p_add(0, X, X).
p_add(X, 0, X).
p_add(s(X), s(Y), s(s(Z))) :- p_add(X, Y, Z).

p_sub(X, 0, X).
p_sub(X, s(Y), Z) :- p_sub(X, Y, s(Z)).

p_mul(_, 0, 0).
p_mul(0, _, 0).
p_mul(X, s(0), X).
p_mul(X, s(Z), Y) :-
    p_mul(X, Z, Ys),
    p_sub(Y, X, Ys).


p_exp(A, s(0), A).
p_exp(0, s(_), 0).
p_exp(s(_), 0, s(0)).
p_exp(A, s(B), C) :-
    p_exp(A, B , Cd),
    p_mul(Cd, A, C).
