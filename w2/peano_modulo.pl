modulo(X, Y, Z) :-
    p_sub(X, Z, Xd),
    p_mul(_, Y, Xd),
    less_strict(Z, Y).