less_strict(0, s(_)).
less_strict(s(X), s(Y)) :- less_strict(X, Y).

less_or_eq(0, _).
less_or_eq(s(X), s(Y)) :- less_or_eq(X, Y).

greater_strict(s(_), 0).
greater_strict(s(X), s(Y)) :- greater_strict(X, Y).

greater_or_eq(_, 0).
greater_or_eq(s(X), s(Y)) :- greater_or_eq(X, Y).