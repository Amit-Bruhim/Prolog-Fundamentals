is_prime(2).
is_prime(P):-
    P > 2,
    P mod 2 =\= 0,
    Max is floor(sqrt(P)),
    no_factor(P, 3, Max).

no_factor(_, F, Max):-
    F > Max, !.
no_factor(N, F, Max):-
    N mod F =\= 0,
    F2 is F + 2,
    no_factor(N, F2, Max).