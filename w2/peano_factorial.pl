factorial(0, s(0)).
factorial(s(X), Y) :-
    factorial(X, Z),
    p_mul(Z, s(X), Y).